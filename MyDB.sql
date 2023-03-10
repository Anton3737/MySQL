DROP DATABASE MyDB;
DROP TABLE NameAndPhone;
DROP TABLE SalaryAndPosition;
DROP TABLE PositionBornDateAndLivePlace;

-- ------------------------------------------------------

CREATE DATABASE MyDB;

USE MyDB;

CREATE TABLE NameAndPhone(

id int AUTO_INCREMENT,
name VARCHAR(30),
phone VARCHAR(20),
PRIMARY KEY(id)

);

INSERT INTO NameAndPhone
(name,phone)
value
('Andrii','380911112233'),
('Vladislav','0667893361'),
('Oksana','050223381'),
('Lyubov','0446782233'),
('Maria','30507789912'),
('Oksana','0913471823');

SELECT * FROM NameAndPhone;


CREATE TABLE SalaryAndPosition(

id int AUTO_INCREMENT,
salary double,
position VARCHAR(30),
PRIMARY KEY(id)

);

INSERT INTO SalaryAndPosition
(salary,position)
value
(12300.10 , 'Middle Java dev'),
(2200.22 , 'Junior Web dessigner'),
(5123.00 , 'HTML text reader'),
(15900.98 , 'Middle Java dev'),
(7200.00 , 'UI/UX Dessigner'),
(100001.01 , 'Senior Java developer');

SELECT * FROM SalaryAndPosition;

SELECT id , salary,position FROM SalaryAndPosition WHERE salary > 10000;


CREATE TABLE PositionBornDateAndLivePlace(

id int AUTO_INCREMENT,
position VARCHAR(40),
bornDate VARCHAR(20),
livePlace VARCHAR(50),
PRIMARY KEY(id)

);

INSERT INTO PositionBornDateAndLivePlace
(position, bornDate, livePlace)
value
('Middle Java dev','12.04.1994','Chernihiv'),
('Junior Web dessigner','01.08.2001','Kherson'),
('HTML text reader','31.12.89','Zhutomyr'),
('Middle Java dev','08.04.1999','Kyiv'),
('UI/UX Dessigner','08.03.1992','Lviv'),
('Senior Java developer','20.03.1994','Kyiv');

SELECT * FROM PositionBornDateAndLivePlace;

ALTER TABLE PositionBornDateAndLivePlace
ADD MarriedStatus varchar (10);

UPDATE PositionBornDateAndLivePlace SET MarriedStatus = 'YES' WHERE id = 1 ;

SELECT * FROM PositionBornDateAndLivePlace;




-- Задание 1

-- Виучите основні поняття, розглянуті на уроці. + 

-- Задание 2

-- Створіть базу даних з іменем “MyDB”. + 

-- Задание 3

-- У створеній базі даних (із завдання 2) створено 3 таблиці: 
-- 1-я містить імена та номери телефонів співробітників іншої компанії, +
-- 2-я містить відомості про їхню зарплату, і посади, + 
-- 3-я містить інформацію про посаду, дату народження та місце проживания. +

-- Задание 4

-- Из задания 3 таблицы 2 получить id сотрудников, зарплата которых больше 10000. + 

-- Задание 5

-- Із завдання 3 співробітник з id 1 не був зареєстрований, він змінив дані в третій таблиці про сімейне становище. 


-- Задание 6

-- За допомогою MySQL Workbench створіть пусту базу даних автомобілів. Заповнити таблицю даних (id(Autoincrement), марка, модель, об'єм двигуна, ціна, макс. швидкість).