-- Sudbury Slice queries, SliceDB
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