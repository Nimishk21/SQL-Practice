SELECT
id, company, salary
FROM
(SELECT *,ROW_NUMBER() OVER(PARTITION BY company ORDER BY salary) AS rnk,COUNT(salary) OVER(PARTITION BY company) AS N
 FROM
 employee) a
WHERE
rnk BETWEEN N / 2.0 AND N / 2.0 + 1

