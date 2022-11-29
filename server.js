const mysql = require("mysql2");
const inquirer = require("inquirer");

const consoleTable = require("console.table");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "user",
  password: "password",
  database: "employeetracker_db"
});

function updateServer() {
    connection.query("SELECT * from department", function(error, res) {
      alldepartments = res.map(dept => ({ name: dept.name, value: dept.id }));
    });
    connection.query("SELECT * from role", function(error, res) {
        allroles = res.map(role => ({ name: role.title, value: role.id }));
      });
    connection.query("SELECT * from employee", function(error, res) {
      allemployees = res.map(employee => ({
        name: `${employee.first_name} ${employee.last_name}`,
        value: employee.id
      }));
    });
  }
  
  connection.connect(function(err) {
    if (err) throw err;
    console.log("Welcome to the Employee Database");
    startEmployeeDB();
    updateServer();
  });

  // start db
  function startEmployeeDB() {
    inquirer
      .prompt({
        name: "action",
        type: "list",
        message: "Please select:",
        choices: [
          "View All Employees",
          "View All Departments",
          "View All Roles",
          "Add Employee",
          "Add Department",
          "Add Role",
          "Update Employee Role",
          "Exit"
        ]
      })
      .then(function(answer) {
        switch (answer.action) {
          case "View All Employees":
            viewAllEmployees();
            break;
          case "View All Departments":
            viewAllDepartments();
            break;
          case "View All Roles":
            viewAllRoles();
            break;
          case "Add Employee":
            addEmployee();
            break;
          case "Add Department":
            addDepartment();
            break;
          case "Add Role":
            addRole();
            break;
          case "Update Employee Role":
            updateEmployeeRole();
            break;
          case "Exit":
            connection.end();
            break;
          case "Exit":
                console.log ("Goodbye!");
                connection.end();
            break;
        }
      });
  }

  // view employees
  function viewAllEmployees() {
    console.log("   ");
    var query =
      "SELECT employee.id, first_name AS firstname, last_name AS lastname, title AS role, name AS department, salary as salary FROM employee INNER JOIN role ON employee.role_id = role.id INNER JOIN department ON role.department_id = department.id;";
    connection.query(query, function(err, res) {
      if (err) throw err;
      console.table(res);
      startEmployeeDB();
    });
  }
  
  // view departments
  function viewAllDepartments() {
    console.log("   ");
    var query = "SELECT id, name AS department FROM department";
    connection.query(query, function(err, res) {
      if (err) throw err;
      console.table(res);
      startEmployeeDB();
    });
  }
  
  // view roles
  function viewAllRoles() {
    console.log("   ");
    var query =
      "SELECT r.id, title AS role, salary, name AS department FROM role r LEFT JOIN department d ON department_id = d.id";
    connection.query(query, function(err, res) {
      if (err) throw err;
      console.table(res);
      startEmployeeDB();
    });
  }
  
  // adding employees
  function addEmployee() {
    updateServer();
    inquirer
      .prompt([
        {
          type: "input",
          name: "first_name",
          message: "Please enter first name."
        },
        {
          type: "input",
          name: "last_name",
          message: "Please enter last name."
        },
        {
          name: "role",
          type: "list",
          message: "Please enter role.",
          choices: allroles
        }
      ])
      .then(function(answer) {
        var query = connection.query(
          "INSERT INTO employee SET ?",
          {
            first_name: answer.first_name,
            last_name: answer.last_name,
            role_id: answer.role
          },
          function(err, res) {
            if (err) throw err;
            console.table("New employee added.");
            startEmployeeDB();
          }
        );
      });
  }

  // adding departments
  function addDepartment() {
    updateServer();
    inquirer
      .prompt([
        {
          type: "input",
          name: "new_department",
          message: "Which department do you want to add?"
        }
      ])
      .then(function(answer) {
        var query = connection.query(
          "INSERT INTO department SET ?",
          {
            name: answer.new_department
          },
          function(err, res) {
            if (err) throw err;
            console.table("New department added.");
            updateServer();
            startEmployeeDB();
          }
        );
      });
  }

  // adding roles
  function addRole() {
    updateServer();
    inquirer
      .prompt([
        {
          type: "input",
          name: "new_role",
          message: "Which role do you want to add?"
        },
        {
          type: "input",
          name: "new_salary",
          message: "What is the role's salary?"
        },
        {
          name: "department",
          type: "list",
          message: "Please enter the department the role belongs to.",
          choices: alldepartments
        }
      ])
      .then(function(answer) {
        var query = connection.query(
          "INSERT INTO role SET ?",
          {
            title: answer.new_role,
            salary: answer.new_salary,
            department_id: answer.department
          },
          function(err, res) {
            if (err) throw err;
            console.table("New role added.");
            updateServer();
            startEmployeeDB();
          }
        );
      });
  }

  // updating employee's role
  function updateEmployeeRole() {
    updateServer();
    inquirer
      .prompt([
        {
          name: "employee",
          type: "list",
          message: "Which employee would you like to update?",
          choices: allemployees
        },
        {
          name: "role",
          type: "list",
          message: "What is the role of the employee?",
          choices: allroles
        }
      ])
      .then(function(answer) {
        var query = connection.query(
          "UPDATE employee SET ? WHERE ?",
          [
            {
              role_id: answer.role
            },
            {
              id: answer.employee
            }
          ],
          function(err, res) {
            if (err) throw err;
            console.table("Employee role updated.");
            updateServer();
            startEmployeeDB();
          }
        );
      });
  }