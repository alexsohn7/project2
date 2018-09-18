// Packaging table structure to use in ./routes/apiRoutes.js and htmlRoutes.js
module.exports = function (sequelize, DataTypes) {
  var Reservation = sequelize.define("Reservation", {
    id: {
      type: Sequelize.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    reserved: {
      type: Sequelize.BOOLEAN,
      allowNull: false,
      defaultValue: false
    },

    time: DataTypes.DATE,
    name: DataTypes.STRING,
    phone: DataTypes.INTEGER,
    activity_id: DataTypes.INTEGER,
    PRIMARY KEY(id)
  });
  return Reservation;

  var Activity = sequelize.define("Activity", {
    id: DataTypes.INTEGER AUTO_INCREMENT,
    // Restaurant or hotel
    category: DataTypes.STRING,
    // Name of restaurant or hotel
    name: DataTypes.STRING,
    price: DataTypes.INTEGER,
    city_id: INTEGER,
    PRIMARY KEY(id)
  });
  return Activity;

  var City = sequelize.define("City", {
    id: DataTypes.INTEGER AUTO_INCREMENT,
    city: DataTypes.STRING,
    PRIMARY KEY(id)
  })
  return City;

  // City id is a foreign key for the Category table as city_id
  Activity.belongsTo(City);

  // Category id is a foreign key for the Reservation table as category_id
  Reservation.belongsTo(Activity);
};
