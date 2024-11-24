-- Active: 1724394192258@@127.0.0.1@3306@student_course
show databases;
use student_course;
show tables;

CREATE TABLE student (
    RollNo CHAR(6) NOT NULL PRIMARY KEY,
    StudentName VARCHAR(20),
    CourseID VARCHAR(10),
    DOB DATE
);
SELECT * FROM student;

INSERT INTO student (Rollno, StudentName, CourseId, Dob) VALUES
('S12101', 'Aarav Chaudhary', 'MATH01', '2000-05-15'),
('S12202', 'Mayank Singh', 'PHY02', '1999-08-22'),
('S12303', 'Rahul Gupta', 'CHEM03', '2001-02-10'),
('S12404', 'Raju Kumar', 'HIST04', '2000-11-30'),
('S12505', 'Chatur', 'ENG05', '1998-07-05'),
('S12606', 'Manav', 'CS06', '1999-12-18'),
('S12627', 'Abhishek', 'CS06', '2003-08-19'),
('S12713', 'Harsh Dubey', 'VOCSD11', '2005-02-11'),
('S12722', 'Nitish Singh', 'VOCSD11', '2005-01-22'),
('S12724', 'Prasant Kumar', 'VOCSD11', '2005-02-01'),
('S12726', 'Ranjana Gupta', 'VOCSD11', '2005-03-16'),
('S12727', 'Rishab Gupta', 'VOCSD11', '2005-05-19'),
('S12728', 'Ritik Gupta', 'VOCSD11', '2003-02-11'),
('S12735', 'Sahil Yadav', 'VOCSD11', '2004-02-02'),
('S12756', 'Ayush Tiwari', 'MATH01', '2000-05-15'),
('S12766', 'Mridul Gupta', 'BMS13', '2005-09-01'),
('S12807', 'Dev', 'BIO07', '2001-06-25'),
('S12908', 'Shiva', 'GEO08', '2000-03-12'),
('S13010', 'Sophia Martin', 'PSY10', '2001-04-03'),
('X12736', 'Saniya Batt', 'VOCBNK12', '2005-08-15'),
('X12739', 'Sneha Kumari', 'VOCBNK12', '2005-09-17'),
('X13009', 'Ritesh', 'ECO09', '1998-09-08'),
('Y12741', 'Suajl R Kumar', 'VOCSD11', '2005-04-18'),
('Z12669', 'Sujit Kumar', 'CS06', '2005-07-17'),
('Z12762', 'Amit Pal', 'VOCSD11', '2005-06-18');
select* from student;

CREATE TABLE courses (
    CID CHAR(10) NOT NULL PRIMARY KEY,
    CourseName VARCHAR(20),
    CourseType CHAR(8),
    TeacherInCharge VARCHAR(15),
    TotalSeats INT UNSIGNED,
    Duration INT UNSIGNED
);

INSERT INTO course (CID, CourseName, CourseType, TeacherInCharge, TotalSeats, Duration) VALUES
('BIO07', 'Biology', 'Full', 'Dr. Gupta', 48, 6),
('BMS13', 'Business Management', 'Full', 'Mr. Grey', 60, 6),
('CHEM03', 'Chemistry', 'Full', 'Dr. White', 48, 6),
('CS06', 'Computer Science', 'Full', 'Dr. Ashima Jain', 72, 6),
('ECO09', 'Economics', 'Full', 'Dr. Pink', 66, 6),
('ENG05', 'English', 'Full', 'Mr. Blue', 42, 6),
('GEO08', 'Geography', 'Part', 'Ms. Yadav', 36, 5),
('HIST04', 'History', 'Part', 'Ms. Black', 36, 5),
('MATH01', 'Mathematics', 'Full', 'Dr. Brown', 60, 6),
('PHY02', 'Physics', 'Full', 'Prof. Green', 54, 6),
('PSY10', 'Psychology', 'Part', 'Dr. Orange', 24, 4),
('VOCBNK12', 'Banking Studies', 'Part', 'Prof. Indigo', 30, 4),
('VOCSD11', 'Vocational Studies', 'Part', 'Ms. Yellow', 30, 4);


select * from course;
CREATE TABLE admission (
    RollNo CHAR(6) NOT NULL,
    CID CHAR(10) NOT NULL,
    DateOfAdmission DATE,
    PRIMARY KEY (RollNo, CID),
    FOREIGN KEY (RollNo) REFERENCES student(RollNo),
    FOREIGN KEY (CID) REFERENCES course(CID)
);

SELECT * from admission;
INSERT INTO admission (Rollno, CID, DateOfAdmission) VALUES
('S12101', 'CHEM03', '2024-08-20'),
('S12101', 'CS06', '2024-09-05'),
('S12101', 'ECO09', '2025-08-15'),
('S12101', 'ENG05', '2024-09-01'),
('S12101', 'GEO08', '2024-09-15'),
('S12101', 'HIST04', '2024-08-25'),
('S12101', 'MATH01', '2024-08-15'),
('S12101', 'PHY02', '2024-08-18'),
('S12101', 'PSY10', '2023-09-18'),
('S12101', 'VOCBNK12', '2025-09-25'),
('S12101', 'VOCSD11', '2025-09-10'),
('S12202', 'CS06', '2025-08-18'),
('S12202', 'PHY02', '2024-08-18'),
('S12303', 'CHEM03', '2024-08-20'),
('S12303', 'CS06', '2025-08-20'),
('S12404', 'CS06', '2025-08-25'),
('S12404', 'HIST04', '2024-08-25'),
('S12505', 'CS06', '2025-09-01'),
('S12505', 'ENG05', '2024-09-01'),
('S12606', 'CS06', '2024-09-05'),
('S12713', 'CS06', '2025-09-08'),
('S12713', 'VOCSD11', '2025-09-08'),
('S12722', 'CS06', '2025-09-28'),
('S12722', 'ECO09', '2025-09-22'),
('S12722', 'HIST04', '2025-09-10'),
('S12722', 'MATH01', '2024-08-15'),
('S12722', 'VOCBNK12', '2025-09-20'),
('S12722', 'VOCSD11', '2025-09-10'),
('S12807', 'BIO07', '2024-09-12'),
('S12807', 'CS06', '2025-09-12'),
('S12908', 'BIO07', '2024-09-12'),
('S12908', 'CS06', '2025-09-15'),
('S12908', 'GEO08', '2024-09-15'),
('S12908', 'VOCSD11', '2025-09-08'),
('S13010', 'CS06', '2025-09-18'),
('S13010', 'PSY10', '2023-09-18'),
('X12736', 'CS06', '2025-09-20'),
('X12736', 'VOCBNK12', '2025-09-20'),
('X13009', 'CS06', '2025-09-22'),
('X13009', 'ECO09', '2025-09-22'),
('Y12741', 'HIST04', '2025-09-25'),
('Y12741', 'VOCSD11', '2025-09-25'),
('Z12669', 'CS06', '2025-09-28');


-- 1. Retrieve names of students enrolled in any course.--
select studentName from student  s join admission a on s.RollNo = a.Rollno;

-- 2. Retrieve names of students enrolled in at least one part time course.--
select studentName, coursename from student s join course c on s.courseid = c.cid where coursetype = 'part';

-- 3. Retrieve students' names starting with letter ‘A’
SELECT StudentName
FROM student
WHERE StudentName LIKE 'A%';

-- 4. Retrieve students' details studying in courses ‘computer science’ or ‘chemistry’
select s. * from
 student s join admission a on s.rollno = a.rollno 
 join course c on s.courseid = c.cid 
 where coursename in ('Computer Science', 'Chemistry');
 
-- 5. Retrieve students’ names whose roll no either starts with ‘X’ or ‘Z’ and ends with ‘9’.--
select  studentName , Rollno from
student where RollNo like 'x%9' or 'z%9';


-- 6. Find course details with more than N students enrolled where N is to be input by the user.--
Select c.* from course 
c join admission a on c.cid = a.cid 
group by c.cid 
having count(a.rollno) > 12;

-- 7. Update student table for modifying a student name.
update student set studentname = 'Abhishek'
 where rollno = 'S12627';
 
 -- 8. Find course names in which more than five students have enrolled
Select c.coursename from course 
c join admission a on c.cid = a.cid 
group by c.cid 
having count(a.rollno) > 5;

-- 9. Find the name of youngest student enrolled in course ‘CS’
select s.* from student
 s join course c on s.courseid = c.cid 
 join admission a on s.rollno = a.rollno 
 where c.coursename = 'computer science' 
 order by dob desc limit 1;
 
 -- 10. Find the name of most popular course (on the basis of enrolled students)
 Select c.coursename from course 
c join admission a on c.cid = a.cid 
group by c.cid 
order by count(*) desc limit 1;

-- 11. Find the name of two popular part time courses (on the basis of enrolled students)
 Select c.coursename , count(a.rollno) as noOfStudent from course 
c join admission a on c.cid = a.cid 
group by c.cid 
order by count(*) desc limit 2;

-- 12. Find the student names who are admitted to full time courses only.
select studentname , coursetype from student s join course c on s.courseid = c.cid where coursetype = 'full';

-- 13. Find course names in which more than 30 students took admission
Select c.* from course 
c join admission a on c.cid = a.cid 
group by c.cid 
having count(a.rollno) > 30;

-- 14. Find names of all students who took admission to any course and course names in which at least one student has enrolled.
select studentName from student s join admission a on s.rollno = a.rollno 
 union
 select  courseName from course c join admission a on c.cid = a.cid;

-- 15. Find course names where teacher-in-charge has ‘Gupta’ as surname and the course is full time
select * from course where teacherInCharge like '%gupta' and coursetype = 'full';

-- 16. Find the course names in which the number of enrolled students is only 10% of its total seats.
Select c.coursename, totalseats, count(a.rollno) as noOfStudent from course 
c join admission a on c.cid = a.cid 
group by c.cid 
having count(rollno) = totalseats * 0.1 ;

-- 17. Display the vacant seats for each course
Select c.coursename, totalseats, count(a.rollno) as noOfStudent, totalseats - count(a.rollno) as vacantSeats from course 
c join admission a on c.cid = a.cid 
group by c.cid;

set sql_safe_updates = 0 ;
-- 18. Increment Total Seats of each course by 20%
update course set totalseats =  totalseats * 1.2 ;

-- 19. Add enrolment fees paid (‘yes’/’No’) field in the enrolment table
alter table admission add column AdmissionFees enum('yes','no') default 'no';

-- 20. Update the date of admission for all the courses by 1 year
update admission set dateOFAdmission = dateofadmission + interval 1 year;

-- 21. Create a view to keep track of course names with total number of students enrolled in it.
create view courseAdmissionView as select c.coursename, totalseats, count(a.rollno) as noOfStudent from course 
c join admission a on c.cid = a.cid 
group by c.cid;

-- 22. Count the number of courses with more than 5 students enrolled for each type of course
SELECT c.coursetype, COUNT(c.cid) AS course_count
FROM course c
JOIN admission a ON c.cid = a.cid
GROUP BY c.coursetype, c.cid
HAVING COUNT(a.rollno) > 5;



-- 23. Add column Mobile number in student table with default value ‘9999999999’
alter table student add column MobileNo varchar(10) default'999999999';

-- 24. Find the total number of students whose age is > 18 years
select studentName ,  timestampdiff(year,dob, curdate()) as Age from student where timestampdiff(year,dob, curdate()) > 18;

-- 25. Find names of students who are born in 2001 and are admitted to at least one part time course.
select studentname ,dob, coursetype from student s join course c on s.courseid = c.cid where dob like '2001-%-%' and coursetype = 'part' ; 

-- 26. Count all courses having ‘science’ in the name and starting with the word ‘B.Sc.’
SELECT COUNT(*)
FROM course
WHERE coursename LIKE 'B.Sc.%science%';



