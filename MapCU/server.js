/***********************
  Express      - A Node.js Framework
  Body-Parser  - A tool to help use parse the data in a post request
  Pg-Promise   - A database tool to help use connect to our PostgreSQL database
***********************/

var express = require('express');
var app = express();
var cors = require('cors')
var bodyParser = require('body-parser'); //Ensure our body-parser tool has been added
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

var pgp = require('pg-promise')();
//database 
const dbConfig = {
  host: 'localhost',
  port: 5432,
  database: 'postgres',
  user: 'postgres',
  password: 'mapCU2020'
};

var db = pgp(dbConfig);

// set the view engine to ejs
app.set('view engine', 'ejs');

app.use(express.static(__dirname + '/'));//This line is necessary for us to use relative paths and access our resources directory
app.use(cors())


app.get('/home', function (req, res) {
  var query = 'select * from rooms;'
  db.any(query).then(function (data) {
    // console.log(data)
    res.render("pages/home", {
      myData: data
    })
  })
});

app.get('/map', function (req, res) {
  res.render("pages/map", {
  })
});

app.post('/instructions', function (req, res) {
  var current_room = req.body.current_room
  var target_room = req.body.target_room
  var query = `
  select writtenInstructions from Instructions where instructions.InstructionCombinations[1] in 
	(select RoomSection from Rooms where RoomNumber = ${current_room}) 
	AND
  instructions.InstructionCombinations[2] in (select RoomSection from Rooms where RoomNumber = ${target_room});`

  db.any(query).then(function (data) {
    if (data.length > 0) {
      console.log(data)
      res.render("pages/instructions_page", {
        instructionData: data,
        currentRoom: current_room,
        targetRoom: target_room
      })
    }

    else {
      console.log("Empty Query")
      res.render("pages/home", {
        myData: { "writtenInstructions": "Fail" }
      })

    }
  })
    .catch(function (fail) {
      console.log("Fail", fail)
    })
})

var port = 3000
app.listen(port)
console.log("Server running on port: " + port)

