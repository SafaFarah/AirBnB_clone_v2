-- a script that prepares a MySQL server for the project
-- create a database hbnb_dev_db
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
-- a new user usernam ='hbnb_dev' , host = 'localhost', password = 'hbnb_dev_pwd'.
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
-- hbnb_dev should have all privileges on the database hbnb_dev_db.
GRANT ALL PRIVILEGES ON `hbnb_dev_db`.* TO 'hbnb_dev'@'localhost';
-- hbnb_dev should have SELECT privilege on the database performance_schema.
GRANT SELECT ON `performance_schema`.* TO 'hbnb_dev'@'localhost';
