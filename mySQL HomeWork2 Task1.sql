

-- В данной базе данных создайте 3 таблицы, В 1-й таблице содержатся имена и номера телефонов сотрудников компании. 
-- Во 2-й таблице содержатся ведомости о зарплате и должностях сотрудников: главный директор, менеджер, рабочий.
-- В 3-й таблице содержится информация о семейном положении, дате рождения, и месте проживания. 


DROP DATABASE SecondHW;
CREATE DATABASE SecondHW;
USE SecondHW;


DROP TABLE NamesAndPhonesWorkers;
DROP TABLE SalaryAndPosition;
DROP TABLE Borndate_LivePlace_MariedStatus;



CREATE TABLE NamesAndPhonesWorkers(

idNP INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
phone VARCHAR(25) NOT NULL
);


INSERT INTO NamesAndPhonesWorkers
(name,phone)
VALUES
('Viktor', '380912223344'),
('Nikolai','380507772233'),
('Dmityi', '380636668291'),
('Olga',   '380507783292'),
('Liubov', '380911112233'),
('iryna',  '380687772143');


SELECT * FROM NamesAndPhonesWorkers;


CREATE TABLE SalaryAndPosition(
idSP INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
salary DOUBLE NOT NULL,
position VARCHAR(100)
);

INSERT INTO SalaryAndPosition
(salary,position)
VALUES
(3239.33,'SQL developer'),
(12000.99, 'WEB developer'),
(22322.10, 'Java developer'),
(199999.99 , 'SEO Company'),
(2000.12 , 'some worker'),
(1500.02 , 'Manager');

SELECT * FROM SalaryAndPosition;



CREATE TABLE Borndate_LivePlace_MariedStatus(
idBLM INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
mariedStatus VARCHAR(20) NOT NULL,
bornDate VARCHAR(20) NOT NULL,
livePlace VARCHAR(100) NOT NULL
);


INSERT INTO Borndate_LivePlace_MariedStatus
(mariedStatus,bornDate,livePlace)
VALUES
('maried','10/03/1981','Kiev'),
('not maried','30/01/1979','Lviv'),
('maried','01/01/1991','Kharkiv'),
('not maried','20/03/1994','Odesa'),
('maried','07/07/1986','Kiev'),
('not maried','30/01/1999','Zhutomyr');


SELECT * FROM Borndate_LivePlace_MariedStatus;



-- ------------------------------------------------------------------------------------------------------------

-- Сделайте выборку при помощи JOIN’s для таких заданий: 
-- 1) Получите контактные данные сотрудников (номера телефонов, место жительства). 
-- 2) Получите информацию о дате рождения всех холостых сотрудников и их номера. 
-- 3) Получите информацию обо всех менеджерах компании: дату рождения и номер телефона. 



-- 1) Получите контактные данные сотрудников (номера телефонов, место жительства). 

select phone , livePlace 
from NamesAndPhonesWorkers, Borndate_LivePlace_MariedStatus
where Borndate_LivePlace_MariedStatus.idBLM = NamesAndPhonesWorkers.idNP;


SELECT NamesAndPhonesWorkers.phone , Borndate_LivePlace_MariedStatus.livePlace
FROM NamesAndPhonesWorkers
JOIN Borndate_LivePlace_MariedStatus ON NamesAndPhonesWorkers.idNP = Borndate_LivePlace_MariedStatus.idBLM;



-- 2) Получите информацию о дате рождения всех холостых сотрудников и их номера. 


select bornDate , phone 
from Borndate_LivePlace_MariedStatus, NamesAndPhonesWorkers
where Borndate_LivePlace_MariedStatus.idBLM = NamesAndPhonesWorkers.idNP
and mariedStatus = 'not maried';

SELECT Borndate_LivePlace_MariedStatus.bornDate , NamesAndPhonesWorkers.phone
FROM NamesAndPhonesWorkers
JOIN Borndate_LivePlace_MariedStatus ON Borndate_LivePlace_MariedStatus.idBLM = NamesAndPhonesWorkers.idNP
WHERE mariedStatus = 'not maried';



-- 3) Получите информацию обо всех менеджерах компании: дату рождения и номер телефона. 


select position , bornDate , phone
from SalaryAndPosition ,NamesAndPhonesWorkers,Borndate_LivePlace_MariedStatus
where SalaryAndPosition.idSP = NamesAndPhonesWorkers.idNP = Borndate_LivePlace_MariedStatus.idBLM 
and position = 'Manager';


SELECT SalaryAndPosition.position ,Borndate_LivePlace_MariedStatus.bornDate , NamesAndPhonesWorkers.phone
FROM NamesAndPhonesWorkers
JOIN Borndate_LivePlace_MariedStatus ON Borndate_LivePlace_MariedStatus.idBLM = NamesAndPhonesWorkers.idNP
JOIN SalaryAndPosition ON SalaryAndPosition.idSP = Borndate_LivePlace_MariedStatus.idBLM
WHERE SalaryAndPosition.position = 'Manager';

