-- USE test;
-- 
-- SELECT gender,AVG(salary) AS 'salary', COUNT(*) AS 'count', SUM(salary) AS 'sum'
-- FROM users WHERE ID < 5000 GROUP BY gender HAVING AVG(salary)<62693 ;

-- SELECT REFERRED_BY_ID, COUNT(*) AS 'TOTAL REFERRED' FROM USERS 
-- WHERE REFERRED_BY_ID IS NOT NULL GROUP BY REFERRED_BY_ID HAVING COUNT(*) > 1; 

SELECT gender,AVG(salary) AS 'salary', COUNT(*) AS 'count' 
FROM users WHERE ID < 5000 GROUP BY gender WITH ROLLUP  HAVING AVG(salary)>61000 ;
-- Weighted Average = (માર્ક × મહત્વ) / (મહત્વ નો કુલ)
