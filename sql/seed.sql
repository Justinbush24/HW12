USE employeesDB;

-- Department names
INSERT INTO department (name)
VALUES ("Finance");
INSERT INTO department (name)
VALUES ("Sales");
INSERT INTO department (name)
VALUES ("Legal");
INSERT INTO department (name)
VALUES ("Engineering");

-- Employee role
INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 100000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Lead Engineer", 150000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 120000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 125000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Legal Team Lead", 250000, 4);

-- Employee name and id numbers
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Justin", "Bush", 1, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Wren", "Britt", 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Hawwa", "Bob", 3, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Duke", "Holder", 4, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Riaan", "Krueger", 5, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Janae", "Hawes", 2, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Tylor", "Reeve", 4, 7);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Michael", "Hodges", 1, 2);