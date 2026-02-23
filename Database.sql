DROP TABLE IF EXISTS classroom;


CREATE TABLE classroom
(
    rollno INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    house CHAR(12) NOT NULL,
    grade CHAR(1),
    age INT NOT NULL,
    CONSTRAINT chk_age CHECK (age >= 15)   -- Age must be 15 or more
);
INSERT INTO classroom (name, house, grade, age)
VALUES
('Sam', 'Akash', 'B', 16),   -- age add karna compulsory
('Ram', 'Agni', 'A', 17),
('Shyam', 'Jal', 'B', 15),
('Sundar', 'Agni', 'A', 18);
SELECT * FROM classroom;

SELECT *
FROM classroom
WHERE grade = 'B';
