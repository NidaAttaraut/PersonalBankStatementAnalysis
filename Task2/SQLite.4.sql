
/*---1. What is the total amount of money spent in each spending category?---*/
SELECT description, SUM(transcation) AS total_spent
FROM PersonalFinance
GROUP BY description
ORDER BY total_spent DESC;

---2. What is the average daily spending?---
SELECT AVG(transcation) AS average_daily_spending
FROM PersonalFinance;

---3. What is the maximum amount spent on a single transaction?---
SELECT description,MAX(transcation) AS maximum_single_transaction
FROM PersonalFinance;

---4. What is the minimum amount spent on a single transaction?---
SELECT description, (transcation) AS minimum_single_transaction
FROM PersonalFinance
WHERE transcation<= 0
ORDER BY minimum_single_transaction DESC
LIMIT 3;

---5. What is the total amount of money credited to the account?---
SELECT SUM(transcation) AS total_credited
FROM PersonalFinance
WHERE transcation > 0;

---6. What is the total amount of money withdrawn from the account?---
SELECT SUM(transcation) AS total_withdrawn
FROM PersonalFinance
WHERE transcation < 0;

/*---7. What is the average monthly balance?
SELECT AVG(balance) AS average_monthly_balance
FROM (
  SELECT date, balance, MONTH(date) AS month
  FROM PersonalFinance
) AS monthly_data
GROUP BY month
ORDER BY month;---*/

---8. What is the highest total balance ever reached?---
SELECT MAX(balance) AS highest_total_balance
FROM PersonalFinance;

---9. What is the lowest total balance ever reached?---
SELECT MIN(balance) AS lowest_total_balance
FROM PersonalFinance;

---10. What is the most common spending category?---
SELECT description, COUNT(*) AS frequency
FROM PersonalFinance
GROUP BY description
ORDER BY frequency DESC
LIMIT 1;

BAR-SELECT description,transcation from PersonalFinance GROUP by description
