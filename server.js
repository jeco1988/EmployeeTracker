const inquirer = require("inquirer");
const mysql = require("mysql2");
const consoleTable = require("console.table");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3000,
  user: "user",
  password: "password",
  database: "employeetracker_db"
});

