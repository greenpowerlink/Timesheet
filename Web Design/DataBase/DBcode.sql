CREATE TABLE employee(
    emp_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    emailAddress VARCHAR(40) UNIQUE,
    role_id INT,
    gender VARCHAR(1),
    super_id INT,
    PRIMARY KEY(emp_id)
); -- create a databe but role id is not define yet because it is a foreign paramiter

CREATE TABLE role(
    role_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    position VARCHAR(40)
); -- create role  table role_id is linked to employee table

ALTER TABLE employee ADD FOREIGN KEY (role_id) REFERENCES role(role_id) ON DELETE SET NULL; -- update role_id in employee table


SELECT * FROM employee;-- to select all data in employee table
SELECT * FROM role;-- to select all the data in role table
--DESCRIBE employee; --to visualize the data table in popsql
--DESCRIBE role; --to visualize the data table in popsql
--DROP TABLE employee; -- to delete employee db
--DROP TABLE role; -- to delete role db
--ALTER TABLE employee ADD phoneNumber INT; -- to add a new parameter
-- ALTER TABLE employee DROP COLUMN phoneNumber;--  to delete a column

ALTER TABLE employee MODIFY emp_id NOT NULL AUTO_INCREMENT; -- modife characteristis of emp_id

UPDATE role
SET position = 'Software Engineer'
WHERE role_id = 24;  -- to update a data in an specifict location

DELETE FROM employee
WHERE emp_id=1; -- delete a data

/* INSERT INTO teckStaff(staff_id, emailAddress) VALUES(4, '@teckglobal.com.au'); to add some vaules not all */
-- INSERT INTO teckStaff(emailAddress, name, role) VALUES('david@teckglobal.com.au', 'David Zucaro','Managing Director');
-- INSERT INTO teckStaff(emailAddress, name, role) VALUES('ben.ko@teckglobal.com.au', 'Ben Ko','Engineering Manager');
-- INSERT INTO teckStaff(emailAddress, name, role) VALUES('Sean.Kho@teckglobal.com.au', 'Sean Kho','Project Manager');
-- INSERT INTO teckStaff(emailAddress, name, role) VALUES('david.Ong@teckglobal.com.au', 'David Ong','Operation Manager');

-- INSERT INTO role(position) VALUES('Workshop Manager');
INSERT INTO employee(first_name, last_name, emailAddress, role_id, gender, super_id)
VALUES('William',	'Burroughs',	'liam.hawley@teckglobal.com.au',	4,	'M',	5);-- to insert new data

UPDATE employee
SET emp_id= emp_id-1
WHERE emp_id>17; -- i used it to fix a data i missed so i moved emp_id one position back 
