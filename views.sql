USE PersonalFinanceDB;
GO

CREATE VIEW MonthlyExpenses AS
SELECT 
    MONTH(t.Date) AS Month,
    SUM(t.Amount) AS TotalSpent
FROM dbo.Transactions t
JOIN dbo.Categories c ON t.CategoryId = c.Id
WHERE c.Type = 'Expense'
GROUP BY MONTH(t.Date);

CREATE VIEW CategoryExpenses AS
SELECT 
    c.Name AS Category,
    SUM(t.Amount) AS TotalSpent
FROM dbo.Transactions t
JOIN dbo.Categories c ON t.CategoryId = c.Id
WHERE c.Type = 'Expense'
GROUP BY c.Name;
