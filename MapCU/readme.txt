Infrastructure setup:
-Server Side Rendering
---server.js file (NodeJS server with Express on top, like in NodeJS Lab 8) will contain routes to optain our data from our data base, and will render HTML pages with data injections in ejs files

dependencies: 
-postgres
-node
-express


environments:
-postgres, with our database (IMPORTANT: ensure that in server js file under the dbConfig, the username and password match the ones you have your postgres setup with, or you can change your own to mapCU2020, whichever you deem easier)

-node and express should be installed from previous labs, if not, should be able to
through websites and npm install command

Go to browser, and go to 
"127.0.0.1:3000/home"
or 
"localhost:3000/home"
