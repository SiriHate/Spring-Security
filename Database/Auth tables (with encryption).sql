USE my_db;

CREATE TABLE users (
  username varchar(15),
  password varchar(100),
  enabled tinyint(1),
  PRIMARY KEY (username)
) ;

CREATE TABLE authorities (
  username varchar(15),
  authority varchar(25),
  FOREIGN KEY (username) references users(username)
) ;

INSERT INTO my_db.users (username, password, enabled)
VALUES
    ('andrey', '{bcrypt}andrey', 1),
    ('elena', '{bcrypt}elena', 1),
    ('ivan', '{bcrypt}ivan', 1);
    
INSERT INTO my_db.authorities (username, authority)
VALUES
    ('andrey', 'ROLE_EMPLOYEE'),
    ('elena', 'ROLE_HR'),
    ('ivan', 'ROLE_HR'),
    ('ivan', 'ROLE_MANAGER');