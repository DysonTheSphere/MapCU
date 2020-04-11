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
app.use(express.static(__dirname + '/'));//This line is necessary for us to use relative paths and access our resources directory
app.use(cors())

app.get('/', function (req, res) {
  res.send(`Oops! Are you sure you didn't mean to access the port
  on which Serve is operating on? This is the port for the NodeJS
  server, which is only for data API calls.`)
})


app.get('/rooms_data', cors(), function (req, res) {
  var query = 'select * from rooms;'
  db.any(query).then(function (data) {
    // console.log(data)
    res.json(data)
  })
});

app.post('/user_form', function (req, res) {
  console.log("Entering post request")
  console.log(req.body)
  res.json({ 1: 1 })
})



// app.get('/home', function (req, res) {
//   var query = 'select * from rooms;'
//   db.any(query).then(function (data) {
//     // console.log(data)
//     res.render("pages/home", {
//       myData: data
//     })
//   })
// });

var port = 3000
app.listen(port)
console.log("Server running on port: " + port)

