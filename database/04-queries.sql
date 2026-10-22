-- Sudbury Slice queries, written by Carter Atkins for SliceDB on SQL Server
-- Q1
SELECT PizzaName, BasePrice
FROM tblPizza
WHERE BasePrice < 16
ORDER BY BasePrice;

-- Q2
SELECT t.ToppingName, pt.PortionSize
FROM tblPizza p
JOIN tblPizzaTopping pt ON p.PID = pt.PID
JOIN tblTopping t ON pt.TID = t.TID
WHERE p.PizzaName = 'The Big Nickel'
ORDER BY t.ToppingName;

-- Q3
SELECT RID, Stars, RatedOn
FROM tblRating
WHERE Remark IS NULL
ORDER BY RID;

-- Q4
SELECT CONCAT(c.FirstName, ' ', c.LastName) AS Customer,
       p.PizzaName, r.Stars, r.RatedOn
FROM tblRating r
JOIN tblCustomer c ON r.CID = c.CID
JOIN tblPizza p ON r.PID = p.PID
WHERE r.RatedOn BETWEEN '2026-10-10' AND '2026-10-14'
ORDER BY r.RatedOn DESC, r.RID;

-- Q5
SELECT p.PizzaName,
       COUNT(*) AS NumRatings,
       CAST(AVG(r.Stars * 1.0) AS DECIMAL(4,2)) AS AvgStars
FROM tblPizza p
JOIN tblRating r ON p.PID = r.PID
GROUP BY p.PizzaName
HAVING AVG(r.Stars * 1.0) >= 4
ORDER BY AVG(r.Stars * 1.0) DESC, p.PizzaName;

-- Q6
SELECT ToppingName
FROM tblTopping
WHERE TID NOT IN (SELECT TID FROM tblPizzaTopping)
ORDER BY ToppingName;
