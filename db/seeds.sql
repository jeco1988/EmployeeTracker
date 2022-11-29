USE employeetracker_db;
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
VALUES ("Marketing Manager", 100000, 1 );

INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 100000, 2 );

INSERT INTO role (title, salary, department_id)
VALUES ("Accounts Manager", 150000, 2 );

INSERT INTO role (title, salary, department_id)
VALUES ("HR Coordinator", 70000, 3 );

INSERT INTO role (title, salary, department_id)
VALUES ("HR Manager", 90000, 3 );

INSERT INTO role (title, salary, department_id)
VALUES ("Product Manager", 70000, 4 );

INSERT INTO role (title, salary, department_id)
VALUES ("Warehouse Manager", 80000, 4 );


-- employee list --
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Eryn", "Delacruz", 1);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Ann", "O'Sullivan", 2);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Whitney", "Mendez", 3);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Leslie", "Hart", 4);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Aadam", "Best", 5);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Albie", "Bowman", 6);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Sion", "Harrell", 7);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Simon", "Finch", 8);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Lester", "Mason", 1);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Arabella", "Acevedo", 2);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Mollie", "Hopkins", 3);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Theodore", "McPherson", 4);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Mattie", "McGuire", 5);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Haydn", "Jenkins", 6);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Cindy", "Martinez", 7);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Zahra", "Brock", 8);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Stanley", "Dickerson", 1);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Gerald", "Romero", 2);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Alina", "Webster", 3);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Kamran", "Fowler", 4);