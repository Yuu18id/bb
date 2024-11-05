const {Sequelize, DataTypes} = require('sequelize');

const sequelize = new Sequelize(process.env.DB_NAME, process.env.DB_USER, process.env.DB_PASS, {
    host: process.env.DB_HOST, // Ini harus 'db'
    dialect: 'mysql',
    port: 3306 // Port default MySQL
});

module.exports = {sequelize, DataTypes}
