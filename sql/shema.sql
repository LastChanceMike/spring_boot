CREATE TABLE mysqlbase.user
(
  id INT(8) PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(25) NOT NULL,
  age INT,
  is_admin BIT DEFAULT 0 NOT NULL,
  created_date TIMESTAMP DEFAULT current_timestamp NOT NULL
);