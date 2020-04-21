Infrastructure: 

Client Side Rendering
-We'll have two servers, one is our data server running NodeJS with Express on top (like in our NodeJS lab 8). This will be accessed on port 3000
---This is what is like our API server. You access the URL, and are given a JSON data object. Like what was going on with the Weather API our assignments have worked with
-The other one is our UI server, which will display our pages. This will be running with the package serve, which is easily installed. All its doing
is Rendering and displaying our HTML code on a port.  This is to be accessed on port 5000 
-Data will be obtained to calls to our NodeJS server with $.ajax (like in lab 9)

Dependencies: 
-node: should have from previous labs, if working in different environment than in labs, can do so through their website 
-express: should have it from NodeJS lab
-serve: "npm install serve", if working in Windows, installing Node will give npm installer, and will allow you to install packages with npm. This is the package that will display our html on port 5000.
-cors: "npm install cors", package that allows cross-origin access to resources, needed since our UI server is on a different port than API server with NodeJS
-postgres: have database setup (IMPORTANT: in server.js, ensure to have your username and passwords match the ones you have for your environment)

Startup:
-in package.json, there are two scripts created, one to start Node server, the other one to start UI server, which is what Serve will do. These are just to more easily start our servers

-to run scripts to get both servers running:
npm run start-ui
npm run start-server

Potential Errors:
<theres a chance youll hit errors saying some module isn't installed or the system saying it doesn't know what something is, could be express. if you have npm installer, 
it should be as easy as doing npm install <package name> to download it>
<also if you guys aren't getting your data to return correctly with your AJAX calls to our API server, ensure you've installed cors package. Otherwise, it won't return since
it'll hit cross-domain issues>

To see where the pages actually are, in browser go to:
127.0.0.1:5000/home
(or 127.0.0.1:5000 to see all of files, but this isn't what user will want to see obviously)

I was going to host all of our stuff through my network on a domain that I haven't setup yet, but will inform all of you guys when i do. Let me know if you guys have questions 
for any of it

