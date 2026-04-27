USE PersonalFinanceDB;
GO

-- 1. View all transactions
SELECT * FROM dbo.Transactions;

-- 2. View all categories
SELECT * FROM dbo.Categories;

-- 3. Expenses by category
SELECT 
    c.Name AS Category,
    SUM(t.Amount) AS TotalSpent
FROM dbo.Transactions t
JOIN dbo.Categories c ON t.CategoryId = c.Id
WHERE c.Type = 'Expense'
GROUP BY c.Name;

-- 4. Income vs Expenses
SELECT 
    c.Type,
    SUM(t.Amount) AS Total
FROM dbo.Transactions t
JOIN dbo.Categories c ON t.CategoryId = c.Id
GROUP BY c.Type;

-- 5. Monthly spending
SELECT 
    MONTH(t.Date) AS Month,
    SUM(t.Amount) AS TotalSpent
FROM dbo.Transactions t
JOIN dbo.Categories c ON t.CategoryId = c.Id
WHERE c.Type = 'Expense'
GROUP BY MONTH(t.Date);

-- 6. Top spending category
SELECT TOP 1
    c.Name,
    SUM(t.Amount) AS TotalSpent
FROM dbo.Transactions t
JOIN dbo.Categories c ON t.CategoryId = c.Id
WHERE c.Type = 'Expense'
GROUP BY c.Name
ORDER BY TotalSpent DESC;
