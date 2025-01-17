CREATE DATABASE IF NOT EXISTS main;
USE main;
CREATE TABLE Persons (
    PersonID int NOT NULL AUTO_INCREMENT,
    CreatedAt datetime,
    Age float,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
    PRIMARY KEY (PersonID)
);
CREATE TABLE Tasks (
    TaskID int NOT NULL AUTO_INCREMENT,
    PersonID INT,
    TaskName varchar(255),
    PRIMARY KEY (TaskID),
    CONSTRAINT fkPersons
        FOREIGN KEY(PersonID)
	    REFERENCES Persons(PersonID)
);
CREATE TABLE Products (
    id serial primary key,
    name text,
    updated time
);
INSERT INTO Persons (FirstName, LastName, Age, Address, City, CreatedAt) VALUES ('Mike', 'Hughes', 28.2, '123 Fake Street', 'Belfast', '2021-01-19 03:14:07');
INSERT INTO Tasks (PersonID, TaskName) VALUES (1, 'assembling');
INSERT INTO Tasks (PersonID, TaskName) VALUES (1, 'processing');
INSERT INTO Products (name, updated) VALUES ('Meat', '11:00:22'), ('Fruit', '10:00:00');
