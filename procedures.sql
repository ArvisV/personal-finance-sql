USE PersonalFinanceDB;
GO

CREATE PROCEDURE AddTransaction
    @UserId INT,
    @CategoryId INT,
    @Amount DECIMAL(10,2),
    @Date DATE,
    @Description NVARCHAR(255)
AS
BEGIN
    INSERT INTO dbo.Transactions (UserId, CategoryId, Amount, Date, Description)
    VALUES (@UserId, @CategoryId, @Amount, @Date, @Description);
END;
GO

CREATE PROCEDURE GetTotalExpenses
AS
BEGIN
    SELECT 
        SUM(t.Amount) AS TotalExpenses
    FROM dbo.Transactions t
    JOIN dbo.Categories c ON t.CategoryId = c.Id
    WHERE c.Type = 'Expense';
END;
GO
