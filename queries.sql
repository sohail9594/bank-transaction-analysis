-- Total deposits vs withdrawals
SELECT Transaction_Type, SUM(Transaction_Amount) AS Total
FROM transactions
GROUP BY Transaction_Type;

-- Monthly trend
SELECT Month, SUM(Transaction_Amount)
FROM transactions
GROUP BY Month;

-- Top customers
SELECT Customer_ID, SUM(Transaction_Amount)
FROM transactions
GROUP BY Customer_ID
ORDER BY SUM(Transaction_Amount) DESC
LIMIT 10;
