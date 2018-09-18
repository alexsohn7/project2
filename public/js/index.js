// Creating variables for form fields in index.handlebars
var $city = $("#city");
var $category = $("#category");
var $price = $("#price");

// Creating variables for buttons in index.handlebars 
var $displayActivitesBtn = $("#displayActivitesBtn");

// Contains methods for each ajax request to send to route/apiRoutes.js  
var api = {
  getActivities: function (city, category, price) {
    return $.ajax({
      url: "api/activities/:" + city + "/:" + category + "/:" + price,
      type: "GET"
    });
  }
}

var handleFormSubmit = function (event) {
  event.preventDefault();

  // Storing the user input data from index.handlebars form fields in an object to send to routes/apiRoutes.js
  // Also referenced in activities.handlebars 
  var activitiesData = {
    city: $city.val().trim(),
    category: $category.val().trim(),
    price: $price.val().trim()
  };

  // Form Validation
  if (!(activitiesData.city && activitiesData.category && activitiesData.price)) {
    alert("You must enter an example text and description!");
    return;
  }

  // Sending AJAX call with user input 
  api.getActivities(activitiesData);
}

$displayActivitesBtn.on("click", handleFormSubmit);

