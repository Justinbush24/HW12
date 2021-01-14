const mysql = require("mysql");
const inquirer = require("inquirer");
require("console.table");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "employeesDB"
});

// connect to the server and database
connection.connect(function(err) {
    if (err) throw err;
    firstPrompt();
});

//function for main use

function firstPrompt() {

    inquirer.prompt({
            type: "list",
            name: "task",
            message: "Make selection",
            choices: [
                "View Employees",
                "View Employees by Department",
                "Add Employee",
                "Remove Employee",
                "Change Employee Role",
                "Add Role",
                "End"
            ]
        })
        .then(function({ task }) {
            switch (task) {
                case "View Employees":
                    viewEmployee();
                    break;
                case "View Employees by Department":
                    viewEmployeeByDepartment();
                    break;
                case "Add Employee":
                    addEmployee();
                    break;
                case "Remove Employee":
                    removeEmployee();
                    break;
                case "Change Employee Role":
                    changeEmployeeRole();
                    break;
                case "Add Role":
                    addRole();
                    break;
                case "End":
                    connection.end();
                    break;
            }
        });
}


// additional functions
// View Employee

function viewEmployee() {
    console.log("View Employees\n");
    var query =
        `SELECT e.id, e.first_name, e.last_name, r.title, d.name AS department, r.salary, CONCAT(m.first_name, ' ', m.last_name) AS manager
  FROM employee e
  LEFT JOIN role r
	ON e.role_id = r.id
  LEFT JOIN department d
  ON d.id = r.department_id
  LEFT JOIN employee m
    ON m.id = e.manager_id`

    connection.query(query, function(err, res) {
        if (err) throw err;

        console.table(res);
        console.log("Employees viewed!\n");

        firstPrompt();
    });
}