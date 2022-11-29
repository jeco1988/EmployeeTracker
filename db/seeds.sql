USE employees_db;

-- departments --
INSERT INTO department (name)
VALUES ("Marketing");

INSERT INTO department (name)
VALUES ("Finance");

INSERT INTO department (name)
VALUES ("Human Resources");

INSERT INTO department (name)
VALUES ("Manufacturing");

-- roles --
INSERT INTO role (title, salary, department_id)
VALUES ("Digital Marketing Coordinator", 80000, 1 );

INSERT INTO role (title, salary, department_id)
VALUES ("Marketing Manager", 100000, 2 );

INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 100000, 3 );

INSERT INTO role (title, salary, department_id)
VALUES ("Accounts Manager", 150000, 4 );

INSERT INTO role (title, salary, department_id)
VALUES ("HR Coordinator", 70000, 5 );

INSERT INTO role (title, salary, department_id)
VALUES ("HR Manager", 90000, 6 );

INSERT INTO role (title, salary, department_id)
VALUES ("Warehouse technician", 70000, 7 );

INSERT INTO role (title, salary, department_id)
VALUES ("Warehouse Manager", 80000, 8 );


-- employee list --
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Eryn", "Delacruz", 1, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Ann", "O'Sullivan", 2, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Whitney", "Mendez", 3, 4);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Leslie", "Hart", 4, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Aadam", "Best", 5, 6);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Albie", "Bowman", 6, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Sion", "Harrell", 7, 8);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Simon", "Finch", 8, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Lester", "Mason", 1, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Arabella", "Acevedo", 2, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Mollie", "Hopkins", 3, 4);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Theodore", "McPherson", 4, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Mattie", "McGuire", 5, 6);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Haydn", "Jenkins", 6, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Cindy", "Martinez", 7, 8);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Zahra", "Brock", 8, null);