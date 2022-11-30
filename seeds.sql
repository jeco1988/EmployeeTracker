USE employees_db;

-- department ids --
INSERT INTO department (id, name) VALUES (1, 'Marketing');
INSERT INTO department (id, name) VALUES (2, 'Finance');
INSERT INTO department (id, name) VALUES (3, 'Human Resources');
INSERT INTO department (id, name) VALUES (4, 'Manufacturing');

-- roles --
INSERT INTO role (title, salary, departmentID) VALUES ("Marketing Manager", 100000, 1);
INSERT INTO role (title, salary, departmentID) VALUES ("Digital Marketing Coordinator", 80000, 1);
INSERT INTO role (title, salary, departmentID) VALUES ("Accounts Manager", 150000, 2);
INSERT INTO role (title, salary, departmentID) VALUES ("Accountant", 100000, 2);
INSERT INTO role (title, salary, departmentID) VALUES ("HR Manager", 90000, 3);
INSERT INTO role (title, salary, departmentID) VALUES ("HR Coordinator", 70000, 3);
INSERT INTO role (title, salary, departmentID) VALUES ("Warehouse technician", 70000, 4);
INSERT INTO role (title, salary, departmentID) VALUES ("Warehouse Manager", 80000, 4);

-- employee info --
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Chiara', 'Garza', 1, null );
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Anne', 'Frye', 2, 1);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Antonia', 'Jarvis', 3, null);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Reid', 'House', 4, 3);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Santiago', 'Cannon', 5, 3);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Denise', 'Powell', 6, null);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Harmony', 'Cooke', 7, 6);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Richard', 'Richardson', 8, 6);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Calvin', 'Haines', 9, null);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Leah', 'Wells', 10, null);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Poppie', 'Lowe', 2, 1);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Louis', 'Perkins', 11, null);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Ewan', 'Carrillo', 7, 6);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Edward', 'Carter', 2, 1);