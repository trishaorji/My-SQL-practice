SELECT *
FROM sales_reps

SELECT *
FROM region

SELECT *
FROM orders

--find the sales rep name and the corresponding region
SELECT s.name AS sales_reps,
       r.name AS region
FROM accounts AS a
JOIN sales_reps AS s ON a.sales_rep_id =s.id
JOIN region r ON s.region_id =r.id
GROUP BY r.name, s.name;


SELECT s.name, r.name
FROM sales_reps AS s
JOIN region AS r
ON s.region_id =r.id
GROUP BY s.name,r.name;

---Find the accounts without any sales representative
SELECT id, name, website, lat, long, primary_poc
FROM accounts