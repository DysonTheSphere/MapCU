MapCU is a web-application that will help CU Boulder students navigate the engineering center. It provides users 
written instructions how to get from one room to another room, and also provides visuals of the areas that
there are instructions for. For future development, the project is intended to have more precise navigation, 
expansion to all buildings on the CU campus, as well as being a hub for all building related information, such 
as events and school activities and clubs.

The repository includes all code and data for the project, however to run the application locally, there are 
a few dependencies and environments that need to be setup. This includes all packages listed in the package.json
file, which would be done through an "npm install" command. Postgres would also need to be set up, filled
with the database that's created with the MapCU_database.sql file, and listening on the correct port. To
start the server, the command "node server.js" is needed to be run. 

Instead, the best way to run the application would be going to where it's deployed: 
https://mapcu.herokuapp.com/

Accessing the link will give access to their entire app. New users will need to create a new account, but once
it's created, that user will be able to use that account to login in the future. 

Our app is a NodeJS program with EJS templating to render the full pages on the browser. It is hosted on 
Heroku, with an addition of Postgres plugin to have the database be in Heroku's services as well. 
