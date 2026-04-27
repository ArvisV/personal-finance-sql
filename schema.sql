CREATE DATABASE PersonalFinanceDB;
GO

USE PersonalFinanceDB;
GO

CREATE TABLE dbo.Users (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100)
);

CREATE TABLE dbo.Categories (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(50),
    Type NVARCHAR(20)
);

CREATE TABLE dbo.Transactions (
    Id INT PRIMARY KEY IDENTITY,
    UserId INT,
    CategoryId INT,
    Amount DECIMAL(10,2),
    Date DATE,
    Description NVARCHAR(255),

    FOREIGN KEY (UserId) REFERENCES dbo.Users(Id),
    FOREIGN KEY (CategoryId) REFERENCES dbo.Categories(Id)
);
