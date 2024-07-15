
-- create tables
CREATE TABLE Student (
  id CHAR(11) PRIMARY KEY,
  name CHAR(50)
);
CREATE TABLE Teacher (
  id INT PRIMARY KEY,
  name CHAR(50)
);
CREATE TABLE Term (
  id INT PRIMARY KEY,
  begindate DATE,
  enddate DATE
);
CREATE TABLE Course (
  id INT PRIMARY KEY,
  name CHAR(50),
  termid INT,
  teacherid INT,
  capacity INT,
  FOREIGN KEY (termid) references Term(id),
  FOREIGN KEY (teacherid) references Teacher(id)
);
CREATE TABLE Enrollment (
  id INT AUTO_INCREMENT PRIMARY KEY,
  courseid INT,
  studentid CHAR(11),
  grade FLOAT,
  FOREIGN KEY (courseid) REFERENCES Course(id),
  FOREIGN KEY (studentid) REFERENCES Student(id)
);


-- insert values
INSERT INTO Student (id, name) VALUES
('40011415038', 'Reza Naghdi'   ),
('40011415091', 'Ali Akbari'    ),
('40011415092', 'Arshia Zakeri' ),
('40011415093', 'Mahnaz Abtahi' ),
('40011415094', 'Andia Vaezi'   ),
('40011415095', 'Melika Enayat' ),
('40011415096', 'Mahdi Ebtekar' ),
('40011415097', 'Arta Hashemi'  ),
('40011415098', 'Nasrin Tehrani'),
('40011415099', 'Mohammad Radan'),
('9611415090' , 'Ali Akbari'    ),
('9611415091' , 'Reza Amani'    );
INSERT INTO Teacher (id, name) VALUES
(0001, 'Leyla Yousofvand'     ),
(0002, 'Maryam Isvandi'       ),
(0003, 'Amin Hashemi'         ),
(0004, 'Sajad Bastami'        ),
(0005, 'Arefeh Dalvand'       ),
(0006, 'Fatemeh Malmir'       ),
(0007, 'Reyhan Nejati'        ),
(0008, 'Saba Beyranvand'      );
INSERT INTO Term (id, begindate, enddate) VALUES
(4001, '1400-07-21', '1400-11-04'),
(4002, '1400-11-25', '1401-04-07'),
(4011, '1401-06-28', '1401-11-06'),
(4012, '1401-11-22', '1402-04-09'),
(4021, '1402-06-25', '1402-11-04'),
(4022, '1402-11-21', '1403-04-02'),
(0972, '1397-11-05', '1398-04-07');
INSERT INTO Course (id, name, termid, teacherid, capacity) VALUES
(154, 'Electric Workshop'             , 4001, 0003, 30),
(155, 'Basic Programming'             , 4001, 0003, 32),
(158, 'Advanced Programming'          , 4002, 0003, 30),
(148, 'General Mathematics 2'         , 4002, 0006, 40),
(150, 'Physics 2'                     , 4002, 0007, 40),
(157, 'Discrete Mathematics'          , 4002, 0003, 30),
(165, 'Technical Language'            , 4002, 0003, 20),
(160, 'Logic Circuits'                , 4011, 0002, 35),
(162, 'Data Structure'                , 4011, 0008, 32),
(163, 'Electrical Circuits'           , 4011, 0002, 35),
(228, 'Graph Theory'                  , 4011, 0003, 37),
(166, 'Computer Architecture'         , 4012, 0002, 40),
(182, 'Compiler Design Fundamentals'  , 4012, 0001, 40),
(176, 'Software Engineering 1'        , 4012, 0001, 30),
(177, 'Research Method & Presentation', 4012, 0004, 50),
(170, 'Microprocessor'                , 4021, 0002, 36),
(183, 'Programming Languages'         , 4021, 0002, 38),
(172, 'Operating Systems'             , 4021, 0005, 30),
(199, 'Computational intelligence'    , 4021, 0004, 30),
(181, 'Principles Of Database Design' , 4021, 0001, 40),
(198, 'Artificial Intelligence'       , 4021, 0003, 35),
(001, 'Data Analysis'                 , 4022, 0003, 32),
(132, 'Bioinformatics'                , 0972, 0003, 34),
(135, 'Software Engineering 2'        , 0972, 0001, 37);
INSERT INTO Enrollment (courseid, studentid, grade) VALUES
(154, '40011415038', 20),
(154, '40011415091', 16),
(154, '40011415092', 17.25),
(154, '40011415093', 16),
(154, '40011415094', 20),
(154, '40011415095', 9),
(154, '40011415096', 12.75),
(155, '40011415038', 20),
(155, '40011415091', 15.25),
(155, '40011415092', 17.75),
(155, '40011415093', 17.75),
(155, '40011415094', 14),
(158, '40011415038', 20),
(158, '40011415091', 8),
(158, '40011415092', 15.5),
(158, '40011415093', 19),
(148, '40011415038', 20),
(148, '40011415091', 5),
(148, '40011415092', 3),
(148, '40011415093', 7),
(150, '40011415038', 20),
(150, '40011415091', 15),
(150, '40011415092', 16),
(150, '40011415093', 17),
(157, '40011415038', 20),
(157, '40011415091', 16),
(157, '40011415092', 17),
(157, '40011415093', 18),
(165, '40011415038', 20),
(165, '40011415091', 5.5),
(165, '40011415092', 15.25),
(165, '40011415093', 19.75),
(160, '40011415038', 20),
(160, '40011415091', 18),
(160, '40011415092', 17),
(160, '40011415093', 16.5),
(162, '40011415038', 20),
(162, '40011415091', 15.25),
(162, '40011415092', 11.75),
(162, '40011415093', 10.5),
(163, '40011415038', 20),
(163, '40011415091', 12),
(163, '40011415092', 13.25),
(163, '40011415093', 13),
(228, '40011415038', 20),
(228, '40011415091', 8),
(228, '40011415092', 7.5),
(228, '40011415093', 2.5),
(166, '40011415038', 20),
(166, '40011415091', 10.75),
(166, '40011415092', 16),
(166, '40011415093', 17),
(182, '40011415038', 20),
(182, '40011415091', 9.75),
(182, '40011415092', 8.5),
(182, '40011415093', 15),
(172, '40011415038', 20),
(172, '40011415093', 15),
(172, '40011415091', 18.25),
(176, '40011415038', 20),
(176, '40011415091', 10),
(176, '40011415092', 1.25),
(176, '40011415093', 14),
(177, '40011415038', 20),
(177, '40011415091', 8),
(177, '40011415092', 5),
(177, '40011415093', 11),
(170, '40011415038', 20),
(170, '40011415091', 16),
(170, '40011415092', 17),
(170, '40011415093', 19),
(183, '40011415038', 20),
(183, '40011415091', 20),
(183, '40011415092', 20),
(183, '40011415093', 20),
(199, '40011415038', 20),
(199, '40011415091', 19),
(199, '40011415092', 19.25),
(199, '40011415093', 18.25),
(181, '40011415038', 20),
(181, '40011415091', 6.75),
(181, '40011415092', 17),
(181, '40011415093', 17),
(198, '40011415038', 20),
(198, '40011415091', 5),
(198, '40011415092', 16.75),
(198, '40011415093', 17),
(001, '40011415038', 20),
(001, '40011415091', 5),
(001, '40011415092', 19),
(001, '40011415093', 20),
(132, '9611415090', null),
(132, '9611415091', 2.5),
(135, '9611415090', null),
(135, '9611415091', 5);



-- A
SELECT Student.id, Student.name FROM Student
LEFT JOIN Enrollment ON Student.id = Enrollment.studentid
GROUP BY Student.id, Student.name
HAVING MAX(Enrollment.grade) IS NULL;

-- B
SELECT Teacher.id, Teacher.name FROM Teacher
LEFT JOIN Course ON Teacher.id = Course.teacherid
LEFT JOIN Enrollment ON Course.id = courseid
GROUP BY Teacher.id
HAVING AVG(grade) >= (SELECT AVG(grade) FROM Enrollment);

-- C
SELECT Term.id FROM Term
LEFT JOIN Course ON Term.id = Course.termid
LEFT JOIN Enrollment ON Course.id = Enrollment.courseid
WHERE Course.id = 1
GROUP BY TERM.id
HAVING AVG(grade) >= (SELECT AVG(grade) FROM Enrollment
                      WHERE courseid = 1);
                      
-- D
SELECT Student.id, Student.name FROM Student
LEFT JOIN Enrollment ON Student.id = studentid
LEFT JOIN Course ON Enrollment.courseid = Course.id
WHERE Course.termid = (SELECT MAX(id) FROM Term)
GROUP BY Student.id, Course.termid
HAVING AVG(Enrollment.grade) > 16;

-- E
SELECT Teacher.id, Teacher.name FROM Teacher
LEFT JOIN Course ON Teacher.id = Course.teacherid
GROUP BY Teacher.id
HAVING COUNT(DISTINCT Course.termid) > 5;

-- F
SELECT Teacher.id, Teacher.name FROM Teacher
LEFT JOIN Course ON Teacher.id = Course.teacherid
GROUP BY Teacher.id
HAVING COUNT(DISTINCT Course.termid) = COUNT(DISTINCT Course.id);

-- G
SELECT Teacher.id, Teacher.name FROM Teacher
WHERE NOT Teacher.id IN(SELECT Course.teacherid FROM Course
                            LEFT JOIN Enrollment ON Course.id = Enrollment.courseid
                            WHERE Enrollment.grade < 10);
                            
-- H
SELECT Teacher.id, Teacher.name FROM Teacher
LEFT JOIN Course ON Teacher.id = Course.teacherid
GROUP BY Teacher.id
HAVING COUNT(DISTINCT Course.id) > 3;

-- I
SELECT Teacher.id, Teacher.name FROM Teacher
LEFT JOIN Course ON Teacher.id = Course.teacherid
LEFT JOIN Term ON Course.termid = Term.id
LEFT JOIN Enrollment ON Course.id = Enrollment.courseid
WHERE Term.enddate > '1398-02-05' AND Enrollment.grade IS NULL;

-- J (TOP GRADE OF STUDENTS WHOS NAMES' START WITH A)
SELECT Student.id, Student.name, MAX(Enrollment.grade) AS top_grade FROM Student
LEFT JOIN Enrollment ON Student.id = Enrollment.studentid
WHERE Student.name LIKE 'A%'
GROUP BY Student.id;

-- J (TOP STUDENTS BETWEEN WHOS NAMES' START WITH A)
SELECT Student.id, Student.name, AVG(Enrollment.grade) AS top_avg FROM Student
LEFT JOIN Enrollment ON Student.id = Enrollment.studentid
GROUP BY Student.id
HAVING Student.name LIKE 'A%' AND AVG(Enrollment.grade) > (SELECT AVG(Enrollment.grade) FROM Enrollment
                                                           LEFT JOIN Student ON Student.id = Enrollment.studentid
                                                           WHERE Student.name LIKE 'A%');
                                