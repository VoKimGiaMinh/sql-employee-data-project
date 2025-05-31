USE master
GO
CREATE DATABASE EmployeeData
GO 

USE EmployeeData


--Initial database
CREATE TABLE Employee (
	EmployeeID INT PRIMARY KEY IDENTITY(1,1),
	employeeName NVARCHAR(50),
	gender NVARCHAR(50),
	DateOfBirth DATE,
	Email NVARCHAR(100) UNIQUE
	)

CREATE TABLE Skill (
	SkillID INT PRIMARY KEY IDENTITY(1,1),
	SkillName NVARCHAR(100),
	Skilltype NVARCHAR(255)
	)

CREATE TABLE EmployeeSkill (
	EmployeeSkillID INT PRIMARY KEY IDENTITY(1,1),
	EmployeeID INT,
	SkillID INT,
	CONSTRAINT FK_EmployeeSkill_Employee FOREIGN KEY (EmployeeID) 
	REFERENCES Employee(EmployeeID),
	CONSTRAINT FK_EmployeeSkill_Skill FOREIGN KEY (SkillID) 
	REFERENCES Skill(SkillID)
	)

INSERT INTO Employee (employeeName, gender, DateOfBirth, Email)
VALUES
  ('John Doe', 'Male', '1985-02-15', 'john.doe@example.com'),
  ('Jane Smith', 'Female', '1990-07-25', 'jane.smith@example.com'),
  ('Bob Johnson', 'Male', '1982-11-30', 'bob.johnson@example.com'),
  ('Alice Williams', 'Female', '1988-03-12', 'alice.williams@example.com'),
  ('David Brown', 'Male', '1995-06-22', 'david.brown@example.com'),
  ('Emily Davis', 'Female', '1993-04-05', 'emily.davis@example.com'),
  ('Michael Miller', 'Male', '1980-10-18', 'michael.miller@example.com'),
  ('Sarah Wilson', 'Female', '1989-01-27', 'sarah.wilson@example.com'),
  ('James Moore', 'Male', '1979-12-08', 'james.moore@example.com'),
  ('Laura Taylor', 'Female', '1992-08-14', 'laura.taylor@example.com'),
  ('Daniel Anderson', 'Male', '1987-07-11', 'daniel.anderson@example.com'),
  ('Megan Thomas', 'Female', '1996-05-21', 'megan.thomas@example.com'),
  ('Chris Jackson', 'Male', '1983-09-30', 'chris.jackson@example.com'),
  ('Hannah White', 'Female', '1991-03-17', 'hannah.white@example.com'),
  ('Brian Harris', 'Male', '1984-06-03', 'brian.harris@example.com'),
  ('Olivia Martin', 'Female', '1997-11-09', 'olivia.martin@example.com'),
  ('Jason Thompson', 'Male', '1990-02-26', 'jason.thompson@example.com'),
  ('Samantha Garcia', 'Female', '1986-10-19', 'samantha.garcia@example.com'),
  ('Andrew Martinez', 'Male', '1994-01-10', 'andrew.martinez@example.com'),
  ('Victoria Robinson', 'Female', '1985-08-23', 'victoria.robinson@example.com'),
  ('Joshua Clark', 'Male', '1993-07-02', 'joshua.clark@example.com'),
  ('Chloe Rodriguez', 'Female', '1999-12-13', 'chloe.rodriguez@example.com'),
  ('Kevin Lewis', 'Male', '1988-04-15', 'kevin.lewis@example.com'),
  ('Natalie Lee', 'Female', '1991-06-27', 'natalie.lee@example.com'),
  ('Steven Walker', 'Male', '1982-03-08', 'steven.walker@example.com'),
  ('Rachel Hall', 'Female', '1995-09-19', 'rachel.hall@example.com'),
  ('Justin Allen', 'Male', '1987-12-03', 'justin.allen@example.com'),
  ('Grace Young', 'Female', '1992-11-06', 'grace.young@example.com'),
  ('Eric Hernandez', 'Male', '1984-01-25', 'eric.hernandez@example.com'),
  ('Madison King', 'Female', '1996-07-29', 'madison.king@example.com'),
  ('Patrick Wright', 'Male', '1989-05-10', 'patrick.wright@example.com'),
  ('Anna Scott', 'Female', '1993-02-04', 'anna.scott@example.com'),
  ('Kyle Green', 'Male', '1991-08-16', 'kyle.green@example.com'),
  ('Avery Adams', 'Female', '1994-03-28', 'avery.adams@example.com'),
  ('Brandon Baker', 'Male', '1986-09-11', 'brandon.baker@example.com'),
  ('Lily Nelson', 'Female', '1990-12-21', 'lily.nelson@example.com'),
  ('Shawn Carter', 'Male', '1983-04-30', 'shawn.carter@example.com'),
  ('Sofia Mitchell', 'Female', '1998-06-07', 'sofia.mitchell@example.com'),
  ('Dylan Perez', 'Male', '1992-01-13', 'dylan.perez@example.com'),
  ('Zoe Roberts', 'Female', '1997-10-26', 'zoe.roberts@example.com'),
  ('Tyler Turner', 'Male', '1981-07-07', 'tyler.turner@example.com'),
  ('Aubrey Phillips', 'Female', '1989-05-31', 'aubrey.phillips@example.com'),
  ('Nathan Campbell', 'Male', '1985-11-22', 'nathan.campbell@example.com'),
  ('Ella Parker', 'Female', '1996-03-06', 'ella.parker@example.com'),
  ('Ethan Evans', 'Male', '1993-09-15', 'ethan.evans@example.com'),
  ('Scarlett Edwards', 'Female', '1987-01-05', 'scarlett.edwards@example.com'),
  ('Benjamin Collins', 'Male', '1984-06-18', 'benjamin.collins@example.com'),
  ('Luna Stewart', 'Female', '1991-08-09', 'luna.stewart@example.com'),
  ('Logan Sanchez', 'Male', '1995-04-02', 'logan.sanchez@example.com');

INSERT INTO Skill (SkillName, Skilltype)
VALUES
  ('Java Programming', 'Technical'),
  ('Project Management', 'Management'),
  ('Data Analysis', 'Technical'),
  ('Marketing', 'Business'),
  ('Graphic Design', 'Creative'),
  ('Python Programming', 'Technical'),
  ('Leadership', 'Management'),
  ('SQL', 'Technical'),
  ('Sales Strategy', 'Business'),
  ('UI/UX Design', 'Creative'),
  ('Machine Learning', 'Technical'),
  ('Agile Methodology', 'Management'),
  ('Excel Modeling', 'Technical'),
  ('Brand Management', 'Business'),
  ('Video Editing', 'Creative'),
  ('Cloud Computing', 'Technical'),
  ('Team Coordination', 'Management'),
  ('Power BI', 'Technical'),
  ('Customer Service', 'Business'),
  ('Photography', 'Creative'),
  ('Cybersecurity', 'Technical'),
  ('Time Management', 'Management'),
  ('ETL Development', 'Technical'),
  ('Business Development', 'Business'),
  ('Illustration', 'Creative'),
  ('Network Administration', 'Technical'),
  ('Conflict Resolution', 'Management'),
  ('Tableau', 'Technical'),
  ('Public Relations', 'Business'),
  ('Animation', 'Creative'),
  ('Linux Administration', 'Technical'),
  ('Budget Planning', 'Management'),
  ('NoSQL Databases', 'Technical'),
  ('Entrepreneurship', 'Business'),
  ('Web Design', 'Creative'),
  ('C++ Programming', 'Technical'),
  ('Strategic Planning', 'Management'),
  ('Big Data Analytics', 'Technical'),
  ('Negotiation', 'Business'),
  ('Interior Design', 'Creative'),
  ('DevOps', 'Technical'),
  ('People Management', 'Management'),
  ('Data Visualization', 'Technical'),
  ('Market Research', 'Business'),
  ('3D Modeling', 'Creative'),
  ('Software Testing', 'Technical'),
  ('Change Management', 'Management'),
  ('R Programming', 'Technical'),
  ('Content Creation', 'Business'),
  ('Creative Writing', 'Creative');

INSERT INTO EmployeeSkill (EmployeeID, SkillID) 
VALUES
	(1, 5), (1, 12), (1, 18), (1, 27), (1, 44),
	(2, 1), (2, 3), (2, 8), (2, 17), (2, 25), (2, 30),
	(3, 9), (3, 19), (3, 22), (3, 35),
	(4, 6), (4, 11), (4, 16), (4, 29), (4, 43),
	(5, 7), (5, 10), (5, 15), (5, 20),
	(6, 2), (6, 4), (6, 14), (6, 28), (6, 41),
	(7, 13), (7, 18), (7, 21), (7, 33), (7, 50),
	(8, 3), (8, 9), (8, 24), (8, 31), (8, 39),
	(9, 5), (9, 15), (9, 23), (9, 34),
	(10, 6), (10, 10), (10, 17), (10, 27), (10, 46),
	(11, 1), (11, 7), (11, 19), (11, 30),
	(12, 8), (12, 11), (12, 22), (12, 32), (12, 45),
	(13, 2), (13, 4), (13, 12), (13, 20), (13, 44),
	(14, 6), (14, 14), (14, 25), (14, 41),
	(15, 3), (15, 7), (15, 16), (15, 29), (15, 48),
	(16, 5), (16, 13), (16, 26), (16, 36), (16, 47),
	(17, 8), (17, 11), (17, 21), (17, 33),
	(18, 4), (18, 12), (18, 18), (18, 38), (18, 50),
	(19, 9), (19, 10), (19, 24), (19, 40),
	(20, 2), (20, 17), (20, 22), (20, 35), (20, 49),
	(21, 3), (21, 5), (21, 15), (21, 43),
	(22, 6), (22, 8), (22, 14), (22, 39),
	(23, 1), (23, 4), (23, 19), (23, 28), (23, 47),
	(24, 10), (24, 11), (24, 23), (24, 34), (24, 50),
	(25, 7), (25, 9), (25, 13), (25, 31),
	(26, 2), (26, 16), (26, 30), (26, 45),
	(27, 5), (27, 6), (27, 12), (27, 26), (27, 46),
	(28, 3), (28, 14), (28, 29), (28, 38), (28, 42),
	(29, 4), (29, 8), (29, 10), (29, 27),
	(30, 1), (30, 17), (30, 21), (30, 33), (30, 48),
	(31, 2), (31, 11), (31, 20), (31, 36),
	(32, 7), (32, 15), (32, 18), (32, 32), (32, 40),
	(33, 9), (33, 13), (33, 24), (33, 37), (33, 44),
	(34, 6), (34, 16), (34, 19), (34, 34),
	(35, 3), (35, 12), (35, 26), (35, 35), (35, 42),
	(36, 5), (36, 8), (36, 22), (36, 41), (36, 49),
	(37, 2), (37, 14), (37, 28), (37, 47),
	(38, 1), (38, 7), (38, 23), (38, 31), (38, 46),
	(39, 4), (39, 17), (39, 25), (39, 39),
	(40, 10), (40, 20), (40, 29), (40, 43),
	(41, 3), (41, 15), (41, 30), (41, 36), (41, 50),
	(42, 6), (42, 11), (42, 18), (42, 32),
	(43, 9), (43, 14), (43, 24), (43, 33), (43, 48),
	(44, 5), (44, 13), (44, 19), (44, 38), (44, 45),
	(45, 8), (45, 10), (45, 21), (45, 37),
	(46, 2), (46, 16), (46, 27), (46, 35), (46, 47),
	(47, 1), (47, 12), (47, 20), (47, 31), (47, 44),
	(48, 7), (48, 22), (48, 26), (48, 34), (48, 50),
	(49, 3), (49, 6), (49, 23), (49, 28), (49, 42);


CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NOT NULL
);


CREATE TABLE Position (
    PositionID INT PRIMARY KEY IDENTITY(1,1),
    PositionName NVARCHAR(100) NOT NULL,
    Salary DECIMAL(10, 2) 
);


ALTER TABLE Employee
ADD DepartmentID INT,
    PositionID INT;

ALTER TABLE Employee
ADD CONSTRAINT FK_Employee_Department FOREIGN KEY (DepartmentID)
    REFERENCES Department(DepartmentID),
    CONSTRAINT FK_Employee_Position FOREIGN KEY (PositionID)
    REFERENCES Position(PositionID);


CREATE TABLE Project (
    ProjectID INT PRIMARY KEY IDENTITY(1,1),
    ProjectName NVARCHAR(100) NOT NULL,
    StartDate DATE,
    EndDate DATE
);


CREATE TABLE EmployeeProject (
    EmployeeProjectID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT,
    ProjectID INT,
    Role NVARCHAR(100),
    CONSTRAINT FK_EmpProj_Emp FOREIGN KEY (EmployeeID)
        REFERENCES Employee(EmployeeID),
    CONSTRAINT FK_EmpProj_Proj FOREIGN KEY (ProjectID)
        REFERENCES Project(ProjectID)
);

-- INSERT Department
INSERT INTO Department (DepartmentName)
VALUES
('Human Resources'),
('Finance'),
('IT'),
('Marketing'),
('Sales'),
('Research and Development'),
('Customer Service'),
('Operations'),
('Legal'),
('Procurement');

-- INSERT Position
INSERT INTO Position (PositionName, Salary)
VALUES
('Software Engineer', 85000.00),
('Data Analyst', 70000.00),
('Project Manager', 95000.00),
('HR Specialist', 60000.00),
('Marketing Manager', 90000.00),
('Sales Representative', 65000.00),
('Customer Support Specialist', 50000.00),
('Business Analyst', 75000.00),
('QA Engineer', 72000.00),
('Legal Advisor', 100000.00);

-- INSERT Project
INSERT INTO Project (ProjectName, StartDate, EndDate)
VALUES
('ERP System Upgrade', '2024-01-15', '2024-12-31'),
('Website Redesign', '2024-03-01', '2024-08-31'),
('Mobile App Development', '2024-02-10', '2024-10-30'),
('Marketing Campaign Q3', '2024-06-01', '2024-09-30'),
('Customer Satisfaction Survey', '2024-05-15', '2024-07-15'),
('AI Chatbot Implementation', '2024-04-20', '2024-11-20'),
('Data Warehouse Migration', '2024-03-25', '2024-12-15'),
('Employee Training Program', '2024-05-01', '2024-07-31'),
('CRM System Integration', '2024-02-01', '2024-09-01'),
('Compliance Audit', '2024-06-15', '2024-08-15');

-- INSERT EmployeeProject
INSERT INTO EmployeeProject (EmployeeID, ProjectID, Role)
VALUES
(1, 1, 'Developer'),
(2, 1, 'QA Engineer'),
(3, 2, 'UI/UX Designer'),
(4, 3, 'Project Manager'),
(5, 3, 'Developer'),
(6, 4, 'Marketing Specialist'),
(7, 5, 'Analyst'),
(8, 6, 'AI Engineer'),
(9, 6, 'Data Scientist'),
(10, 7, 'ETL Developer'),
(11, 7, 'Data Engineer'),
(12, 8, 'Trainer'),
(13, 8, 'Coordinator'),
(14, 9, 'Integration Specialist'),
(15, 9, 'Business Analyst'),
(16, 10, 'Auditor'),
(17, 10, 'Compliance Officer'),
(18, 1, 'Developer'),
(19, 2, 'UI/UX Designer'),
(20, 4, 'Marketing Manager');

-- UPDATE Employee: assign random DepartmentID + PositionID
UPDATE Employee
SET DepartmentID = (ABS(CHECKSUM(NEWID())) % 10) + 1,
    PositionID = (ABS(CHECKSUM(NEWID())) % 10) + 1;








