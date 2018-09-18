// Importing Activity table from models directory
var db = require("../models");

// Creating and exporting app to use on server.js
module.exports = function (app) {
  // Load activites.handlebars
  app.get("/activities", function (req, res) {
    db.Activity.findAll({
      where: {
        // column names from Activity Table: ajax request route
        city: req.params.city,
        category: req.params.category,
        price: req.params.price
      }
    }).then(function (dbActivities) {
      // Render in activities.handlebars
      res.render("activities", {
        // Giving activities property the res.json(dbActivities) from routes/apiRoutes.js
        activities: dbActivities
      });
    });
  });

  // Load example page and pass in an example by id
  app.get("/example/:id", function (req, res) {
    db.Example.findOne({ where: { id: req.params.id } }).then(function (dbExample) {
      res.render("example", {
        example: dbExample
      });
    });
  });

  // Render 404 page for any unmatched routes
  app.get("*", function (req, res) {
    res.render("404");
  });
};
