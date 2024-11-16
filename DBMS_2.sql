CREATE DATABASE ASI;
USE ASI;
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    SALARY_AMOUNT INT,
    JOININD_DATE DATETIME,
    DEPARTMENT VARCHAR(25),
    BONUS_AMOUNT INT,
    BONUS_DATE DATETIME,
    CITY_NAME VARCHAR(25),
    COUNTRY_NAME VARCHAR(25),
    PIN_CODE INT
);

INSERT INTO Worker 
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY_AMOUNT, JOININD_DATE, DEPARTMENT, BONUS_AMOUNT, BONUS_DATE, 
CITY_NAME, COUNTRY_NAME, PIN_CODE)
VALUES
    (1, 'Govind', 'Jaiswal', 50000, '2022-02-09 09:00:00', 'Manager', 5000, '2024-02-20', 'Agra', 'India', 282005),
    (2, 'Niharika', 'Verma', 30000, '2021-06-11 10:00:00', 'Admin', 7000, '2024-02-20', 'Delhi', 'India', 282007),
    (3, 'Vishal', 'Singhal', 300000, '2022-02-20 12:00:00', 'HR', 8000, '2024-02-20', 'California', 'USA', 282001),
    (4, 'Amitabh', 'Singh', 500000, '2024-02-20 01:00:00', 'Admin', 5000, '2024-02-20', 'Noida', 'India', 282003),
    (5, 'Vivek', 'Bhati', 50000, '2021-06-11 09:00:00', 'Admin', 7000, '2024-02-20', 'Haryana', 'India', 282002),
    (6, 'Vipul', 'Diwan', 20000, '2021-09-11 11:00:00', 'Account', 9000, '2024-02-20', 'Rome', 'Itly', 282004),
    (7, 'Satish', 'Kumar', 75000, '2021-10-26 09:00:00', 'Account', 10000, '2024-02-20', 'Oga', 'Japan', 282005),
    (8, 'Geetika', 'Chauhan', 300000, '2023-08-10 08:00:00', 'HR', 5000, '2024-02-20', 'Agra', 'India', 282006),
	(9, 'Bablu', 'Thakur', 500000, '2022-07-11 07:00:00', 'Engineer', 6000, '2024-02-20', 'NewYork', 'USA', 282001),
	(10, 'Neha', 'Sengar', 90000, '2024-06-12 06:00:00', 'HR', 7000, '2024-02-20', 'Toyota', 'japan', 282003),
	(11, 'Priya', 'Agarwal', 90000, '2024-05-13 05:00:00', 'Engineer', 9000, '2024-02-20', 'Turin', 'Itly', 282005);
    
select * from Worker;
select FIRST_NAME from Worker;
Select distinct DEPARTMENT from Worker;