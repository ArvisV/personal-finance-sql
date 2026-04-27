# Personal Finance SQL Project

##  Overview

This project is a simple personal finance database built using SQL Server.
It allows users to track income and expenses, categorize transactions, and perform financial analysis.

---

##  Database Structure

The database consists of three main tables:

* **Users** – stores user information
* **Categories** – defines income and expense categories
* **Transactions** – stores all financial records

---

# Features

* Track income and expenses
* Categorize transactions
* Analyze spending by category
* Monthly expense analysis
* Income vs expense comparison

---

##  Example Queries

### Expenses by Category

```sql
SELECT 
    c.Name AS Category,
    SUM(t.Amount) AS TotalSpent
FROM dbo.Transactions t
JOIN dbo.Categories c ON t.CategoryId = c.Id
WHERE c.Type = 'Expense'
GROUP BY c.Name;
```

---

### Monthly Spending

```sql
SELECT 
    MONTH(t.Date) AS Month,
    SUM(t.Amount) AS TotalSpent
FROM dbo.Transactions t
JOIN dbo.Categories c ON t.CategoryId = c.Id
WHERE c.Type = 'Expense'
GROUP BY MONTH(t.Date);
```

---

## Views

* **MonthlyExpenses** – total spending per month
* **CategoryExpenses** – total spending per category

---

## Technologies Used

* SQL Server
* SQL Server Management Studio

---

## How to Run

1. Run `schema.sql`
2. Run `seed_data.sql`
3. Run `queries.sql`
4. Run `views.sql`

---

## Future Improvements

* Add budget limits
* Add alerts for overspending
* Create dashboard (Power BI)
* Build a web interface

---

## Author

Arvis
