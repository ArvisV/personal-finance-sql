USE PersonalFinanceDB;
GO

-- Insert user
INSERT INTO Users (Name)
VALUES ('John Doe');

-- Insert categories
INSERT INTO Categories (Name, Type)
VALUES 
('Salary', 'Income'),
('Food', 'Expense'),
('Transport', 'Expense'),
('Entertainment', 'Expense');

-- Insert transactions
INSERT INTO Transactions (UserId, CategoryId, Amount, Date, Description)
VALUES
(1, 1, 2000.00, '2026-04-01', 'Monthly salary'),
(1, 2, 45.50, '2026-04-02', 'Groceries Lidl'),
(1, 3, 15.00, '2026-04-03', 'Bus ticket'),
(1, 4, 25.00, '2026-04-05', 'Cinema'),
(1, 2, 30.00, '2026-04-06', 'More groceries');
