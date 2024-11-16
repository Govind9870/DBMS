CREATE DATABASE College;
USE College;

CREATE TABLE Student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);
INSERT INTO Student VALUES(1, "Govind", 25);
INSERT INTO Student VALUES(2, "Aman", 27);
SELECT * FROM Student;
SHOW DATABASES;
SHOW TABLES;

CREATE TABLE Children(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
	age INT NOT NULL,
    class INT 
);
INSERT INTO Children
(rollno, name, age, class) 
VALUES
(1, "Govind", 25, 3),
(2, "Aman", 26, 4),
(3, "Neha", 27, 5),
(4, "Aniket", 28, 6),
(5, "Ravi", 29, 7);
INSERT INTO Children VALUES (6, "Kanika", 30, 3);
SELECT * FROM Children;


CREATE DATABASE XYZ_Company;
USE XYZ_Company;

CREATE TABLE Employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
	age INT NOT NULL,
    salary FLOAT
);
INSERT INTO Employee
(id, name, age, salary) 
VALUES
(101, "Govind", 25, 50000.50),
(102, "Aman", 26, 35000.25),
(103, "Neha", 27, 47000.00),
(104, "Aniket", 28, 25000),
(105, "Ravi", 29, 33500.75);
SELECT * FROM Employee;

CREATE TABLE Emp(
	id INT,
    salary INT DEFAULT 25000
);
INSERT INTO Emp (id) VALUE (101);
SELECT * FROM Emp;


CREATE DATABASE Hardayal_College;
USE Hardayal_College;
CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);
INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "Govind", 95, 'A', "Agra"),
(102, "Rahul", 99, 'A', "Noida"),
(103, "Neha", 78, 'B', "Bihar"),
(104, "Ram", 59, 'C', "Pune"),
(105, "Geeta", 97, 'A', "Gujrat"),
(106, "Mohan", 88, 'B', "Delhi"),
(107, "Anjali", 63, 'C', "Delhi"),
(108, "Monika", 58, 'A', "Agra"),
(109, "Sohan", 96, 'B', "Bihar"),
(110, "Ravi", 78, 'C', "Pune");

SELECT * FROM student;
SET SQL_SAFE_UPDATES = 0;
UPDATE student
SET grade = "O"
WHERE grade = "A";
UPDATE student
SET marks = 82
WHERE rollno = 105;
UPDATE student
SET grade = "B"
WHERE marks > 60; 
UPDATE student
SET marks = 15
WHERE rollno = 105;
DELETE FROM student
WHERE marks < 30;
SELECT * FROM student;
SELECT rollno, name, marks FROM student;
SELECT DISTINCT city FROM student;
SELECT * FROM student WHERE marks > 80;
SELECT * FROM student WHERE city = "Noida";
SELECT * FROM student 
WHERE marks > 80 AND city = "Agra";
SELECT * FROM student 
WHERE marks > 70 OR city = "Noida";
SELECT * FROM student 
WHERE city IN ("Agra", "Bihar");
SELECT rollno, name, city FROM student
WHERE marks > 75 
LIMIT 3;
SELECT * FROM student 
ORDER BY city ASC;
SELECT * FROM student 
ORDER BY marks DESC;
SELECT MAX(marks)
FROM student; 
SELECT AVG(marks)
FROM student; 
SELECT COUNT(name)
FROM student; 
SELECT city, AVG(marks)
FROM student
GROUP BY city;
SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY AVG(marks) DESC;
SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) > 70
ORDER BY city ASC;


CREATE DATABASE payment_details;
USE payment_details;
CREATE TABLE payment_method(
	sr_no INT,
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    payment_mode VARCHAR(50),
    city VARCHAR(20)
);
INSERT INTO payment_method
(sr_no, customer_id, customer_name, payment_mode, city)
VALUES
(1, 101, "Govind", 'Net banking', "Agra"),
(2, 102, "Neha", 'Credit Card', "Bihar"),
(3, 103, "Ram", 'Debit Card', "Pune"),
(4, 104, "Shyam", 'Paytm', "Delhi"),
(5, 105, "Anjali", 'Net banking', "Delhi"),
(6, 106, "Mohan", 'Credit Card', "Agra"),
(7, 107, "Bablu", 'Debit Card', "Bihar"),
(8, 108, "Kiran", 'Paytm', "Pune"),
(9, 109, "Rishi", 'Net banking', "Delhi"),
(10, 110, "Monika", 'Credit Card', "Delhi"),
(11, 111, "Himanshu", 'Debit Card', "Agra"),
(12, 112, "Ashish", 'Paytm', "Bihar"),
(13, 113, "Rajesh", 'Net banking', "Pune"),
(14, 114, "Mishra", 'Credit Card', "Delhi"),
(15, 115, "Bahadur", 'Debit Card', "Delhi"),
(16, 116, "Kalua", 'Paytm', "Agra"),
(17, 117, "Sapna", 'Paytm', "Bihar"),
(18, 118, "Jyoti", 'Net banking', "Pune"),
(19, 119, "Rahul", 'Credit Card', "Delhi"),
(20, 120, "Geeta", 'Debit Card', "Delhi");

SELECT * FROM payment_method;
SELECT DISTINCT city FROM payment_method;

SELECT payment_mode, customer_name 
FROM payment_method
GROUP BY payment_mode, customer_name
ORDER BY (payment_mode);


