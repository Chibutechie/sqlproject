CREATE DATABASE CreditUDB

USE CreditUDB

CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR (50) NOT NULL,
    LastName VARCHAR (50) NOT NULL,
    DateofBirth DATE not NULL,
    Address VARCHAR(50) NOT NULL,
    City VARCHAR (50) NOT NULL,
    State VARCHAR (50) NOT NULL,
    ZipCode VARCHAR (10) NOT NULL,
    PhoneNumber VARCHAR (15),
    Email VARCHAR(50),
    JoinDate DATE NOT NULL
);

CREATE TABLE Accounts
(
    AccountID INT PRIMARY KEY NOT NULL,
    CustomerID INT NOT NULL,
    AccountType VARCHAR(100) NOT NULL,
    Balance DECIMAL(15,2) NOT NULL,
    OpenDate DATE NOT NULL,
    Note VARCHAR (50) NOT NULL,
    -- e.g Active, closed.,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Transactions
(
    TransactionsID INT PRIMARY KEY NOT NULL,
    AccountID INT not null,
    TransactionType VARCHAR(50) NOT NULL,--e.g Deposit, Withdrawal, Transfer
    TransactionDate DATE NOT NULL,
    Amount DECIMAL(15,2) NOT NULL,
    Comment VARCHAR(50),
    --e.g Description of the transfer made,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50) not null,
    LastName VARCHAR(50) NOT NULL,
    DateofBirth DATE NOT NULL,
    HireDate Date NOT NULL,
    Position VARCHAR(50) NOT NULL,
    Salary DECIMAL(15,2)
);

INSERT INTO Customers
    (CustomerID, FirstName, LastName, DateOfBirth, Address, City, State, ZipCode, PhoneNumber, Email, JoinDate)
VALUES
    (1, 'John', 'Doe', '1980-01-01', '123 Main St', 'Anytown', 'CA', '12345', '555-1234', 'john.doe@example.com', '2024-01-01'),
    (2, 'Jane', 'Smith', '1990-02-02', '456 Oak St', 'Othertown', 'TX', '67890', '555-5678', 'jane.smith@example.com', '2024-01-02'),
    (3, 'Alice', 'Brown', '1975-03-03', '789 Pine St', 'Anycity', 'NY', '11111', '555-9012', 'alice.brown@example.com', '2024-01-03'),
    (4, 'Bob', 'Johnson', '1985-04-04', '101 Maple St', 'Newtown', 'FL', '22222', '555-3456', 'bob.johnson@example.com', '2024-01-04'),
    (5, 'Charlie', 'Davis', '1995-05-05', '202 Birch St', 'Oldtown', 'IL', '33333', '555-7890', 'charlie.davis@example.com', '2024-01-05'),
    (6, 'Diana', 'Miller', '1988-06-06', '303 Cedar St', 'Smalltown', 'TX', '44444', '555-4321', 'diana.miller@example.com', '2024-01-06'),
    (7, 'Evan', 'Wilson', '1992-07-07', '404 Elm St', 'Largetown', 'CA', '55555', '555-6543', 'evan.wilson@example.com', '2024-01-07'),
    (8, 'Fiona', 'Taylor', '1970-08-08', '505 Spruce St', 'Midtown', 'WA', '66666', '555-8765', 'fiona.taylor@example.com', '2024-01-08'),
    (9, 'George', 'Anderson', '1965-09-09', '606 Fir St', 'Capetown', 'TX', '77777', '555-0987', 'george.anderson@example.com', '2024-01-09'),
    (10, 'Hannah', 'Thomas', '1983-10-10', '707 Oak St', 'Farmtown', 'OR', '88888', '555-1234', 'hannah.thomas@example.com', '2024-01-10'),
    (11, 'Ian', 'Martinez', '1991-11-11', '808 Pine St', 'Beachtown', 'FL', '99999', '555-5678', 'ian.martinez@example.com', '2024-01-11'),
    (12, 'Jill', 'Clark', '1987-12-12', '909 Cedar St', 'Mountaintown', 'CO', '10101', '555-9012', 'jill.clark@example.com', '2024-01-12'),
    (13, 'Kevin', 'Rodriguez', '1978-01-13', '101 Maple St', 'Rivertown', 'GA', '20202', '555-3456', 'kevin.rodriguez@example.com', '2024-01-13'),
    (14, 'Laura', 'Lewis', '1989-02-14', '202 Birch St', 'Deserttown', 'NV', '30303', '555-7890', 'laura.lewis@example.com', '2024-01-14'),
    (15, 'Mike', 'Walker', '1993-03-15', '303 Cedar St', 'Forestown', 'WA', '40404', '555-4321', 'mike.walker@example.com', '2024-01-15'),
    (16, 'Nina', 'Hall', '1984-04-16', '404 Elm St', 'Valleytown', 'CA', '50505', '555-6543', 'nina.hall@example.com', '2024-01-16'),
    (17, 'Oscar', 'Allen', '1979-05-17', '505 Spruce St', 'Hilltown', 'TX', '60606', '555-8765', 'oscar.allen@example.com', '2024-01-17'),
    (18, 'Paula', 'Young', '1981-06-18', '606 Fir St', 'Laketown', 'NY', '70707', '555-0987', 'paula.young@example.com', '2024-01-18'),
    (19, 'Quinn', 'Hernandez', '1996-07-19', '707 Oak St', 'Watertown', 'IL', '80808', '555-1234', 'quinn.hernandez@example.com', '2024-01-19'),
    (20, 'Rachel', 'King', '1982-08-20', '808 Pine St', 'Raintown', 'TX', '90909', '555-5678', 'rachel.king@example.com', '2024-01-20'),
    (21, 'Sam', 'Wright', '1994-09-21', '909 Cedar St', 'Snowtown', 'CA', '10110', '555-9012', 'sam.wright@example.com', '2024-01-21'),
    (22, 'Tina', 'Lopez', '1986-10-22', '101 Maple St', 'Windtown', 'TX', '20220', '555-3456', 'tina.lopez@example.com', '2024-01-22'),
    (23, 'Uma', 'Hill', '1990-11-23', '202 Birch St', 'Flowertown', 'CA', '30330', '555-7890', 'uma.hill@example.com', '2024-01-23'),
    (24, 'Victor', 'Scott', '1977-12-24', '303 Cedar St', 'Icetown', 'TX', '40440', '555-4321', 'victor.scott@example.com', '2024-01-24'),
    (25, 'Wendy', 'Green', '1985-01-25', '404 Elm St', 'Sunnytown', 'FL', '50550', '555-6543', 'wendy.green@example.com', '2024-01-25'),
    (26, 'Xander', 'Baker', '1992-02-26', '505 Spruce St', 'Nighttown', 'NY', '60660', '555-8765', 'xander.baker@example.com', '2024-01-26'),
    (27, 'Yara', 'Parker', '1976-03-27', '606 Fir St', 'Rocktown', 'IL', '70770', '555-0987', 'yara.parker@example.com', '2024-01-27'),
    (28, 'Zane', 'Evans', '1983-04-28', '707 Oak St', 'Lighttown', 'TX', '80880', '555-1234', 'zane.evans@example.com', '2024-01-28'),
    (29, 'Abby', 'Mitchell', '1995-05-29', '808 Pine St', 'Hometon', 'CA', '90990', '555-5678', 'abby.mitchell@example.com', '2024-01-29'),
    (30, 'Ben', 'Carter', '1987-06-30', '909 Cedar St', 'Townsville', 'TX', '10101', '555-9012', 'ben.carter@example.com', '2024-01-30');

    
