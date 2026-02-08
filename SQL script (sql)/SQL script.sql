CREATE VIEW customer_satisfaction_young_adults AS
SELECT age, ROUND(AVG(satisfaction),2) AS average_satisfaction
FROM themeparkdw.dim_person
WHERE age BETWEEN 20 AND 40
GROUP BY age
ORDER BY AVG(satisfaction) ASC;

SELECT *
FROM customer_satisfaction_young_adults;

