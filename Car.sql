DROP DATABASE Car;
DROP TABLE Cars;

-- ---------------------------------

CREATE DATABASE Car;
USE Car;


CREATE TABLE Cars(

id int AUTO_INCREMENT,
Marc VARCHAR(30),
Model VARCHAR(30),
Engen_capacity double,
Price double,
MaxSpeed int,
PRIMARY KEY(id)

);


INSERT INTO Cars
(Marc,Model,Engen_capacity,Price,MaxSpeed)
VALUE
('Ferrary','Modena',5.5,120000.10,320),
('Mercedes','G-class',3.5,55000.22,210),
('Nissan','Cedric', 2.2, 12000.51,220),
('Toyota','Supra', 1.5, 80000.14,400),
('Subaru','Impreza WRX STI' , 1.2, 8000.44, 340);



SELECT * FROM Cars;




-- За допомогою MySQL Workbench створіть пусту базу даних автомобілів. Заповнити таблицю даних (id(Autoincrement), марка, модель, об'єм двигуна, ціна, макс. швидкість).