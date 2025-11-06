USE test;
SHOW indexes FROM users;
SELECT * FROM users WHERE GENDER = 'FEMALE' AND SALARY > 70000;


SELECT * FROM users;
CREATE INDEX idx_gender_salary ON users(gender,salary);
DROP INDEX idx_gender_salary ON USERS;
