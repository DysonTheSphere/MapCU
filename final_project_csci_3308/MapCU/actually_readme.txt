Infrastructure setup:
-Client Side Rendering
---server.js file (NodeJS server with Express on top, like in NodeJS Lab 8) will only contain routes to optain our data from our data base
---obtaining data will be done with ajax calls with JQuery library (like lab 9) to our NodeJS server 

dependencies: 
-postgres
-node
-express
-serve

environments:
-postgres, with our database (IMPORTANT: ensure that in server js file under the dbConfig, the username and password match the ones you have your postgres setup with, or you can change your own to mapCU2020, whichever you deem easier)

-node and express should be installed from previous labs, if not, should be able to
through websites and npm install command
-serve is a package that will just display html webpages on a port
---to install, just do "npm install serve"

-in package.json there are two scripts that will help get things started
-there is a script to start our NodeJS server, which contains routes for just our data, and then a script that will start serve, which should by default display our web pages on port 5000

to get everything going, open a cmd prompt window in our mapCU directory

run:
npm run start-ui
npm run start-server

Go to browser, and go to 
"127.0.0.1:5000/home"
or 
"127.0.0.1:5000" to get to view to all of files, but obviously this isn't what user will see in the end
