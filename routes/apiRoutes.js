// Importing Activity table from models directory
var db = require("../models");

// Creating and exporting app to use on server.js
module.exports = function (app) {
  // Recieve the getActivities ajax call from the public/js/index.js
  app.get("api/activities/:city/:category/:price", function (req, res) {
    // Querying from Activity table from models/travel_db.js
    db.Activity.findAll({
      where: {
        // column names from Activity Table: ajax request route
        city: req.params.city,
        category: req.params.category,
        price: req.params.price
      }
        //package data in json to send to routes/htmlRoutes.js
        .then(function (dbActivities) {
          res.json(dbActivities);
        })
    })
  })
}