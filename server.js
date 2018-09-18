var express = require("express");
var exphbs = require("express-handlebars");
var bodyParser = require("body-parser");
// Importing the tables from models/travel_db.js
var db = require("./models");

// Create an instance of the express app.
var app = express();

// Middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(express.static("public"));

// Set the port of our application
// process.env.PORT lets the port be set by Heroku
var PORT = process.env.PORT || 8080;

// Set Handlebars as the default templating engine.
app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

// Render index.handlebars
app.get("/", function (req, res) {
  res.render("index");
});

// Routes
require("./routes/apiRoutes.js")(app);
require("./routes/htmlRoutes.js")(app);

var syncOptions = { force: false };


// Start our server so that it can begin listening to client requests.
app.listen(PORT, function () {
  // Log (server-side) when our server has started
  console.log("Server listening on: http://localhost:" + PORT);
});

module.exports = app;