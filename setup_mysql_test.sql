-- a script that prepares a MySQL server for the project
-- create a database hbnb_test_db
CREATE DATABASE IF NOT EXISTS hbnb_test_db;
-- a new user usernam ='hbnb_test' , host = 'localhost', password = 'hbnb_test_pwd'.
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';
-- hbnb_test should have all privileges on the database hbnb_test_db.
GRANT ALL PRIVILEGES ON `hbnb_dev_db`.* TO 'hbnb_test'@'localhost';
-- hbnb_test should have SELECT privilege on the database performance_schema.
GRANT SELECT ON `performance_schema`.* TO 'hbnb_test'@'localhost';
