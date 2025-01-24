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

CREATE TABLE Loans
(
    LoanID INT PRIMARY KEY NOT NULL,
    CustomerID INT NOT NULL,
    LoanType VARCHAR(50) NOT NULL,
    --Determines the kind of loans recieved by the customer,
    LoanAmount DECIMAL(15,2) NOT NULL,
    InterestRate DECIMAL(15,2) not NULL,
    StartDate DATE NOT NULL,
    EndDate DATE not null,
    Note VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE LoanRepayment
(
    PaymentID INT PRIMARY KEY NOT NULL,
    LoanID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    AmountPaid DECIMAL(15,2),
    FOREIGN KEY (LoanID) REFERENCES Loans(LoanID)
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

INSERT INTO Accounts
    (AccountID, CustomerID, AccountType, Balance, OpenDate, Note)
VALUES
    (1, 1, 'Checking', 1000.00, '2024-01-01', 'Active'),
    (2, 1, 'Savings', 5000.00, '2024-01-01', 'Active'),
    (3, 2, 'Checking', 2000.00, '2024-01-02', 'Active'),
    (4, 3, 'Savings', 3000.00, '2024-01-03', 'Active'),
    (5, 4, 'Checking', 1500.00, '2024-01-04', 'Active'),
    (6, 5, 'Savings', 7000.00, '2024-01-05', 'Active'),
    (7, 6, 'Checking', 800.00, '2024-01-06', 'Active'),
    (8, 7, 'Savings', 9000.00, '2024-01-07', 'Active'),
    (9, 8, 'Checking', 500.00, '2024-01-08', 'Active'),
    (10, 9, 'Savings', 12000.00, '2024-01-09', 'Active'),
    (11, 10, 'Checking', 2500.00, '2024-01-10', 'Active'),
    (12, 11, 'Savings', 10000.00, '2024-01-11', 'Active'),
    (13, 12, 'Checking', 3500.00, '2024-01-12', 'Active'),
    (14, 13, 'Savings', 11000.00, '2024-01-13', 'Active'),
    (15, 14, 'Checking', 4500.00, '2024-01-14', 'Active'),
    (16, 15, 'Savings', 8000.00, '2024-01-15', 'Active'),
    (17, 16, 'Checking', 5500.00, '2024-01-16', 'Active'),
    (18, 17, 'Savings', 6000.00, '2024-01-17', 'Active'),
    (19, 18, 'Checking', 200.00, '2024-01-18', 'Active'),
    (20, 19, 'Savings', 3000.00, '2024-01-19', 'Active'),
    (21, 20, 'Checking', 100.00, '2024-01-20', 'Active'),
    (22, 21, 'Savings', 500.00, '2024-01-21', 'Active'),
    (23, 22, 'Checking', 700.00, '2024-01-22', 'Active'),
    (24, 23, 'Savings', 600.00, '2024-01-23', 'Active'),
    (25, 24, 'Checking', 2000.00, '2024-01-24', 'Active'),
    (26, 25, 'Savings', 1500.00, '2024-01-25', 'Active'),
    (27, 26, 'Checking', 1000.00, '2024-01-26', 'Active'),
    (28, 27, 'Savings', 2000.00, '2024-01-27', 'Active'),
    (29, 28, 'Checking', 1200.00, '2024-01-28', 'Active'),
    (30, 29, 'Savings', 900.00, '2024-01-29', 'Active');

INSERT INTO Transactions
    (TransactionsID, AccountID, TransactionType, TransactionDate, Amount, Comment)
VALUES
    (1, 1, 'Deposit', '2024-01-10', 200.00, 'Initial deposit'),
    (2, 1, 'Withdrawal', '2024-01-15', 50.00, 'ATM withdrawal'),
    (3, 2, 'Deposit', '2024-01-20', 300.00, 'Paycheck deposit'),
    (4, 3, 'Withdrawal', '2024-01-25', 100.00, 'Bill payment'),
    (5, 4, 'Deposit', '2024-01-30', 400.00, 'Direct deposit'),
    (6, 5, 'Withdrawal', '2024-02-04', 200.00, 'Cash withdrawal'),
    (7, 6, 'Deposit', '2024-02-09', 500.00, 'Bonus deposit'),
    (8, 7, 'Withdrawal', '2024-02-14', 300.00, 'Online purchase'),
    (9, 8, 'Deposit', '2024-02-19', 100.00, 'Gift deposit'),
    (10, 9, 'Withdrawal', '2024-02-24', 400.00, 'Rent payment'),
    (11, 10, 'Deposit', '2024-03-01', 600.00, 'Paycheck deposit'),
    (12, 11, 'Withdrawal', '2024-03-06', 150.00, 'ATM withdrawal'),
    (13, 12, 'Deposit', '2024-03-11', 200.00, 'Interest credit'),
    (14, 13, 'Withdrawal', '2024-03-16', 100.00, 'Bill payment'),
    (15, 14, 'Deposit', '2024-03-21', 300.00, 'Direct deposit'),
    (16, 15, 'Withdrawal', '2024-03-26', 50.00, 'Cash withdrawal'),
    (17, 16, 'Deposit', '2024-03-31', 400.00, 'Bonus deposit'),
    (18, 17, 'Withdrawal', '2024-04-05', 200.00, 'Online purchase'),
    (19, 18, 'Deposit', '2024-04-10', 500.00, 'Gift deposit'),
    (20, 19, 'Withdrawal', '2024-04-15', 300.00, 'Rent payment'),
    (21, 20, 'Deposit', '2024-04-20', 600.00, 'Paycheck deposit'),
    (22, 21, 'Withdrawal', '2024-04-25', 100.00, 'ATM withdrawal'),
    (23, 22, 'Deposit', '2024-04-30', 200.00, 'Interest credit'),
    (24, 23, 'Withdrawal', '2024-05-05', 50.00, 'Bill payment'),
    (25, 24, 'Deposit', '2024-05-10', 300.00, 'Direct deposit'),
    (26, 25, 'Withdrawal', '2024-05-15', 150.00, 'Cash withdrawal'),
    (27, 26, 'Deposit', '2024-05-20', 400.00, 'Bonus deposit'),
    (28, 27, 'Withdrawal', '2024-05-25', 200.00, 'Online purchase'),
    (29, 28, 'Deposit', '2024-05-30', 500.00, 'Gift deposit'),
    (30, 29, 'Withdrawal', '2024-06-04', 300.00, 'Rent payment');


INSERT INTO Employees
    (EmployeeID, FirstName, LastName, DateOfBirth, HireDate, Position, Salary)
VALUES
    (1, 'Alice', 'Johnson', '1985-03-03', '2020-01-01', 'Manager', 60000.00),
    (2, 'Bob', 'Williams', '1975-04-04', '2015-05-01', 'Teller', 40000.00),
    (3, 'Carol', 'Davis', '1982-05-05', '2018-06-15', 'Developer', 50000.00),
    (4, 'David', 'Smith', '1990-07-07', '2019-07-01', 'Analyst', 55000.00),
    (5, 'Emma', 'Brown', '1988-08-08', '2021-08-01', 'Clerk', 35000.00),
    (6, 'Frank', 'Jones', '1983-09-09', '2016-09-01', 'Supervisor', 58000.00),
    (7, 'Grace', 'Miller', '1978-10-10', '2013-10-01', 'Consultant', 62000.00),
    (8, 'Hank', 'Wilson', '1992-11-11', '2022-11-01', 'Assistant', 30000.00),
    (9, 'Ivy', 'Moore', '1986-12-12', '2017-12-01', 'Coordinator', 47000.00),
    (10, 'Jack', 'Taylor', '1981-01-01', '2014-01-01', 'Director', 70000.00);


INSERT INTO Loans
    (LoanID, CustomerID, LoanType, LoanAmount, InterestRate, StartDate, EndDate, Note)
VALUES
    (1, 1, 'Personal Loan', 10000.00, 5.00, '2024-01-01', '2026-01-01', 'Active'),
    (2, 2, 'Home Loan', 200000.00, 3.50, '2024-02-01', '2034-02-01', 'Active'),
    (3, 3, 'Auto Loan', 15000.00, 4.00, '2024-03-01', '2029-03-01', 'Active'),
    (4, 4, 'Student Loan', 5000.00, 4.50, '2024-04-01', '2028-04-01', 'Active'),
    (5, 5, 'Business Loan', 50000.00, 6.00, '2024-05-01', '2030-05-01', 'Active'),
    (6, 6, 'Mortgage Loan', 250000.00, 3.75, '2024-06-01', '2044-06-01', 'Active'),
    (7, 7, 'Payday Loan', 1000.00, 10.00, '2024-07-01', '2024-12-01', 'Active'),
    (8, 8, 'Credit Card', 2000.00, 12.00, '2024-08-01', '2025-02-01', 'Active'),
    (9, 9, 'Line of Credit', 5000.00, 5.00, '2024-09-01', '2026-09-01', 'Active'),
    (10, 10, 'Equipment Loan', 7500.00, 4.75, '2024-10-01', '2028-10-01', 'Active'),
    (11, 11, 'Construction Loan', 100000.00, 3.50, '2024-11-01', '2034-11-01', 'Active'),
    (12, 12, 'Debt Consolidation Loan', 20000.00, 4.25, '2024-12-01', '2029-12-01', 'Active'),
    (13, 13, 'Medical Loan', 15000.00, 6.50, '2025-01-01', '2030-01-01', 'Active'),
    (14, 14, 'Travel Loan', 5000.00, 7.00, '2025-02-01', '2029-02-01', 'Active'),
    (15, 15, 'Wedding Loan', 10000.00, 5.50, '2025-03-01', '2028-03-01', 'Active'),
    (16, 16, 'Home Improvement Loan', 25000.00, 5.00, '2025-04-01', '2030-04-01', 'Active'),
    (17, 17, 'Green Loan', 20000.00, 3.75, '2025-05-01', '2035-05-01', 'Active'),
    (18, 18, 'Boat Loan', 30000.00, 4.25, '2025-06-01', '2032-06-01', 'Active'),
    (19, 19, 'RV Loan', 45000.00, 4.50, '2025-07-01', '2031-07-01', 'Active'),
    (20, 20, 'Farm Loan', 60000.00, 3.75, '2025-08-01', '2035-08-01', 'Active'),
    (21, 21, 'Vacation Loan', 7000.00, 6.00, '2025-09-01', '2029-09-01', 'Active'),
    (22, 22, 'Holiday Loan', 8000.00, 5.50, '2025-10-01', '2029-10-01', 'Active'),
    (23, 23, 'Emergency Loan', 10000.00, 8.00, '2025-11-01', '2026-11-01', 'Active'),
    (24, 24, 'Investment Loan', 150000.00, 4.00, '2025-12-01', '2040-12-01', 'Active'),
    (25, 25, 'Relocation Loan', 5000.00, 5.00, '2026-01-01', '2028-01-01', 'Active'),
    (26, 26, 'Technology Loan', 20000.00, 6.00, '2026-02-01', '2031-02-01', 'Active'),
    (27, 27, 'Furniture Loan', 10000.00, 4.75, '2026-03-01', '2030-03-01', 'Active'),
    (28, 28, 'Lease Buyout Loan', 15000.00, 5.25, '2026-04-01', '2029-04-01', 'Active'),
    (29, 29, 'Secured Loan', 20000.00, 3.50, '2026-05-01', '2036-05-01', 'Active'),
    (30, 30, 'Unsecured Loan', 10000.00, 7.00, '2026-06-01', '2029-06-01', 'Active');


INSERT INTO LoanRepayment
    (PaymentID, LoanID, PaymentDate, AmountPaid)
VALUES
    (1, 1, '2024-02-01', 500.00),
    (2, 2, '2024-02-15', 1500.00),
    (3, 3, '2024-03-01', 300.00),
    (4, 4, '2024-03-15', 250.00),
    (5, 5, '2024-04-01', 2000.00),
    (6, 6, '2024-04-15', 2500.00),
    (7, 7, '2024-05-01', 100.00),
    (8, 8, '2024-05-15', 150.00),
    (9, 9, '2024-06-01', 200.00),
    (10, 10, '2024-06-15', 500.00),
    (11, 11, '2024-07-01', 3000.00),
    (12, 12, '2024-07-15', 400.00),
    (13, 13, '2024-08-01', 500.00),
    (14, 14, '2024-08-15', 200.00),
    (15, 15, '2024-09-01', 1000.00),
    (16, 16, '2024-09-15', 1250.00),
    (17, 17, '2024-10-01', 750.00),
    (18, 18, '2024-10-15', 900.00),
    (19, 19, '2024-11-01', 1100.00),
    (20, 20, '2024-11-15', 3000.00),
    (21, 21, '2024-12-01', 350.00),
    (22, 22, '2024-12-15', 400.00),
    (23, 23, '2025-01-01', 200.00),
    (24, 24, '2025-01-15', 3500.00),
    (25, 25, '2025-02-01', 250.00),
    (26, 26, '2025-02-15', 800.00),
    (27, 27, '2025-03-01', 500.00),
    (28, 28, '2025-03-15', 450.00),
    (29, 29, '2025-04-01', 300.00),
    (30, 30, '2025-04-15', 1000.00);


USE CreditUDB

SELECT *
FROM Loans


SELECT
    SUM(AmountPaid) AS TotalLoanCollected
FROM
    LoanRepayment;


SELECT
    L.CustomerID,
    SUM(LP.AmountPaid) AS TotalLoanCollected
FROM
    LoanRepayment LP
    INNER JOIN
    Loans L ON LP.LoanID = L.LoanID
GROUP BY 
    L.CustomerID;


CREATE TABLE LoanType
(
    LoanTypeID INT PRIMARY KEY NOT NULL,
    LoanTypeName VARCHAR(50) NOT NULL,
    Comment VARCHAR(50)
);

INSERT INTO LoanType
    (LoanTypeID, LoanTypeName, Comment)
VALUES
    (1, 'Personal Loan', 'Unsecured personal loan'),
    (2, 'Mortgage Loan', 'Home mortgage loan'),
    (3, 'Auto Loan', 'Loan for vehicle purchase'),
    (4, 'Education Loan', 'Student education loan'),
    (5, 'Business Loan', 'Small business loan'),
    (6, 'Home Improvement Loan', 'Loan for home renovations'),
    (7, 'Debt Consolidation Loan', 'Loan to consolidate debt'),
    (8, 'Payday Loan', 'Short-term payday loan'),
    (9, 'Credit Card Loan', 'Loan against credit card'),
    (10, 'Medical Loan', 'Loan for medical expenses');

SELECT
    LT.LoanTypeName,
    SUM(LP.AmountPaid) AS TotalLoanCollected
FROM
    LoanRepayment LP
    INNER JOIN
    Loans L ON LP.LoanID = L.LoanID
    INNER JOIN
    LoanType LT ON L.LoanType = LT.LoanTypeID
GROUP BY 
    LT.LoanTypeName;


SELECT
    L.CustomerID AS ID,
    MAX(L.LoanAmount) AS HighestLoanCollected
FROM
    Loans L
GROUP BY 
    L.CustomerID;

SELECT
    L.CustomerID AS ID,
    MAX(L.LoanAmount) AS HighestLoanCollected
FROM
    Loans L
GROUP BY 
    L.CustomerID
ORDER BY
    HighestLoanCollected DESC;
-- This orders the results by the highest loan collected in descending order


CREATE VIEW CustomersWithHighestLoan
AS
    SELECT
        C.CustomerID,
        C.Address,
        C.City,
        MAX(L.LoanAmount) AS HighestLoanCollected
    FROM
        Customers C
        INNER JOIN Loans L ON C.CustomerID = L.CustomerID
    GROUP BY 
    C.CustomerID,
    C.Address,
    C.City;

SELECT *
FROM CustomersWithHighestLoan
ORDER BY HighestLoanCollected DESC;

USE CreditUDB;

SELECT CustomerID, FirstName, LastName
FROM Customers;

SELECT DISTINCT FirstName, LastName
FROM Customers;


CREATE VIEW TopLoaners
AS
    SELECT CustomerID, LoanAmount, InterestRate
    FROM Loans
    WHERE LoanAmount <= 100000 AND

DROP

SELECT *
FROM TopLoaners

SELECT CustomerID, LoanAmount, InterestRate
FROM Loans
WHERE LoanAmount <= 100000 AND InterestRate = 5.00

CREATE VIEW InterestRates
AS
    SELECT CustomerID, LoanAmount, InterestRate
    FROM Loans
    WHERE InterestRate >= 5

SELECT *
FROM InterestRates

USE CreditUDB;

Select *
from Customers

CREATE VIEW CustomerDetail
AS
    SELECT
        CustomerID,
        CONCAT(FirstName, ' ', LastName) AS FullName,
        PhoneNumber,
        Email
    FROM Customers;

SELECT *
FROM CustomerDetail

SELECT DISTINCT CustomerID, FullName
FROM CustomerDetail;

USE CreditUDB

select JoinDate
from customers

select *
from Customers
where JoinDate BETWEEN '2024-01-28' and '2024-01-30';

select *
from Customers
where City IN ('Anytown', 'Smalltown');

select *
from CustomerDetail
where FullName like '[b,s,p]%'

USE CreditUDB


select *
from Customers

SELECT TOP 10
    *
FROM Customers
WHERE State in ('CA');


select * from Customers
where State = 'CA';

USE CreditUDB;

-- Delete all transactions for AccountID = 1 except the first one
DELETE FROM Transactions
WHERE AccountID = 1 AND TransactionsID <> 1;

SELECT * FROM Transactions;

SELECT * FROM Accounts;

DELETE FROM Accounts
WHERE AccountID = 1 AND CustomerID <> 1;

SELECT * FROM Accounts
WHERE AccountID = 1;

SELECT * FROM Customers;


WITH NumberedTransactions AS (
    SELECT 
        ROW_NUMBER() OVER (ORDER BY TransactionDate) AS RowNum, 
        TransactionsID
    FROM Transactions
)
SELECT 
    RIGHT('000' + CAST(RowNum AS VARCHAR), 3) AS NewTransactionID, 
    TransactionsID
FROM NumberedTransactions
WHERE RowNum <= 29;