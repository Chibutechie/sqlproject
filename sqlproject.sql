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

