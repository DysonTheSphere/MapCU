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
// const dbConfig = {
//   host: 'localhost',
//   port: 5432,
//   database: 'postgres',
//   user: 'postgres',
//   password: 'mapCU2020'
// };

const dbConfig = process.env.DATABASE_URL;

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

  console.log("User authenticating!")

  if (!req.session.user_id) {
    if (req.query.redirect == 'true') {
      // console.log("redirect = true, passing on to ", req.path)
      next();
    }

    if (req.path == '/login') {
      next();
    }

    else {
      // console.log("redirecting from ", req.path)

      res.redirect('/login?redirect=true');
    }

  } else {
    if (req.path == '/login') {
      // console.log("path was login with token")
      res.redirect('/home')
    }

    else {
      // console.log("normal authenticated route ", req.path)
      next();
    }
  }
}

app.get('/', function (req, res) {
  res.redirect('/home')
})

app.get('/home', checkAuth, function (req, res) {
  // res.cookie("Name", "Gregor")
  // res.send(req.headers)
  // console.log(req.query)

  var query = 'select * from rooms;'
  db.any(query).then(function (data) {
    // console.log(data)
    res.render("pages/home", {
      user: req.session.user_id,
      instructionStatus: req.query.instructions
    })
  })
});


app.get('/login', checkAuth, function (req, res) {
  console.log(req.query)
  res.render("pages/login", {
    userExists: req.query.userExists,
    accountCreated: req.query.accountCreated
  })
});

app.post('/login', function (req, res) {
  var username = req.body.username
  var password = req.body.password
  var query = `select * from Users where username = '${username}';`

  db.any(query).then(function (data) {
    // console.log(data)
    if (data.length == 0) {
      res.render("pages/login", {
        status: "IncorrectLogin"
      })
    }

    // console.log(data)

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

app.post('/create_user', function (req, res) {
  var username = req.body.username
  var password = req.body.password
  var checkQuery = `select * from users where username = '${username}'`
  var Insertquery = `insert into Users values ('${username}', '${password}')`;

  db.any(checkQuery).then(data => {
    if (data.length != 0) {
      res.redirect('/login?userExists=true')
    }
    else {
      db.any(Insertquery).then(function (data) {
        res.redirect('/login?accountCreated=true')
      })
        .catch(function (fail) {
          console.log("Fail", fail)
          res.redirect('/login?accountCreated=false')
        })
    }
  })
})

app.post('/instructions', checkAuth, function (req, res) {
  var current_room_wing = req.body.current_room_wing
  var current_room_room_number = req.body.current_room_room_number
  var target_room_wing = req.body.target_room_wing
  var target_room_room_number = req.body.target_room_room_number

  // console.log(current_room_wing, current_room_room_number, target_room_wing, target_room_room_number)

  var query = `select writtenInstructions from Instructions where instructions.InstructionCombinations[1] in (select RoomSection from Rooms where RoomNumber = ${current_room_room_number} and rooms.RoomSubject = '${current_room_wing.toUpperCase()}') AND instructions.InstructionCombinations[2] in (select RoomSection from Rooms where RoomNumber = ${target_room_room_number} and rooms.RoomSubject = '${target_room_wing.toUpperCase()}');`

  db.any(query).then(function (data) {
    if (data.length > 0) {
      console.log(data)
      res.render("pages/instructions_page", {
        instructionData: data,
        currentRoom: current_room_room_number,
        currentRoomWing: current_room_wing,
        targetRoom: target_room_room_number,
        targetRoomWing: target_room_wing
      })
    }

    else {
      console.log("Empty Query")
      res.redirect("/home?instructions=invalid")

    }
  })
    .catch(function (fail) {
      console.log("Fail", fail)
      res.redirect("/home?instructions=invalid")
    })
})

app.post('/logout', function (req, res) {
  req.session.user_id = ""
  res.redirect("login")

})

app.get('/maps', checkAuth, function (req, res) {
  res.render("pages/maps")
})

var port = process.env.PORT;
// var port = 3000
app.listen(port)
console.log("Server running on port: " + port)

//accessing postgres database on heroku:
//heroku pg:psql postgresql-animated-86578 --app mapcu

