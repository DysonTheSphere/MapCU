/***********************
  Express      - A Node.js Framework
  Body-Parser  - A tool to help use parse the data in a post request
  Pg-Promise   - A database tool to help use connect to our PostgreSQL database
***********************/


var express = require('express');
var session = require('express-session')
var cors = require('cors')
var bodyParser = require('body-parser');
var pgp = require('pg-promise')();


var app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

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

app.use(session({
  secret: 'gregor',
  resave: false,
  saveUninitialized: true
}))




function checkAuth(req, res, next) {
  console.log(req.session)

  if (!req.session.user_id) {
    if (req.query.redirect == 'true') {
      console.log("redirect = true, passing on to ", req.path)
      next();
    }

    if (req.path == '/login') {
      next();
    }

    else {
      console.log("redirecting from ", req.path)

      res.redirect('/login?redirect=true');
    }

  } else {
    if (req.path == '/login') {
      console.log("path was login with token")
      res.redirect('/home')
    }

    else {
      console.log("normal authenticated route ", req.path)
      next();
    }
  }
}


app.get('/home', checkAuth, function (req, res) {
  // res.cookie("Name", "Gregor")
  // res.send(req.headers)

  var query = 'select * from rooms;'
  db.any(query).then(function (data) {
    // console.log(data)
    res.render("pages/home", {
      // myData: data
    })
  })
});

app.get('/login', checkAuth, function (req, res) {
  console.log("Get login route")
  res.render("pages/login")
});

app.post('/login', function (req, res) {
  var username = req.body.username
  var password = req.body.password
  var query = `select * from Users where username = '${username}';`

  db.any(query).then(function (data) {
    console.log(data)
    if (data.length == 0) {
      res.render("pages/login", {
        status: "IncorrectLogin"
      })
    }

    console.log(data)

    if (password == data[0].password) {
      req.session.user_id = username
      res.redirect("/home")
    }

    else {
      res.render("pages/login", {
        status: "IncorrectLogin"
      })
    }


  })
    .catch(function (fail) {
      console.log("Fail", fail)
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

