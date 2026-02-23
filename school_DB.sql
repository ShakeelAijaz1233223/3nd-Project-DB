CREATE TABLE Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL,
    Age INT
);

CREATE TABLE Classes (
    ClassID INT IDENTITY(1,1) PRIMARY KEY,
    ClassName NVARCHAR(50) NOT NULL,
    TeacherID INT -- FK Teacher
);

CREATE TABLE Teachers (
    TeacherID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL,
    Subject NVARCHAR(50)
);

CREATE TABLE Enrollments (
    EnrollmentID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT,
    ClassID INT,
    EnrollmentDate DATE DEFAULT GETDATE(),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);





INSERT INTO Teachers (Name, Subject)
VALUES
('Shakeel', 'Self');




INSERT INTO Classes (ClassName, TeacherID)
VALUES
('2rd Grade', 5);



INSERT INTO Students (Name, Age)
VALUES
('AQeel', 20);





INSERT INTO Enrollments (StudentID, ClassID)
VALUES

(5, 5);





SELECT s.Name AS StudentName, s.Age, c.ClassName, t.Name AS TeacherName, t.Subject, e.EnrollmentDate
FROM Enrollments e
JOIN Students s ON e.StudentID = s.StudentID
JOIN Classes c ON e.ClassID = c.ClassID
JOIN Teachers t ON c.TeacherID = t.TeacherID;



select * from Students;