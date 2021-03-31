USE universitypt2;
-- Query 1
SELECT 
    college.name AS College, COUNT(course.CourseId) AS Courses
FROM
    course
        JOIN
    department ON course.departmentId = department.departmentId
        JOIN
    college ON department.CollegeId = college.CollegeId
GROUP BY college.name;

-- Query 2
SELECT 
    professor.name AS 'Name',
    term.year AS 'Year',
    term.term AS 'Term',
    SUM(section.capacity) AS Capacity
FROM
    section
        JOIN
    professor ON section.professorId = professor.professorId
        JOIN
    term ON section.termId = term.termId
GROUP BY professor.name , term.termId
ORDER BY professor.name;

-- Query 3
SELECT 
    professor.name AS 'Name',
    term.year AS 'Year',
    term.term AS 'Term',
    COUNT(studentsection.StudentSectionId) AS StudentCount
FROM
    section
        JOIN
    professor ON section.ProfessorId = professor.ProfessorId
        JOIN
    term ON section.TermId = term.TermId
        JOIN
    studentsection ON section.SectionId = studentsection.sectionId
GROUP BY professor.name , term.termId
ORDER BY professor.name;

-- Query 4
-- Begin function
SET GLOBAL log_bin_trust_function_creators = 1;
DROP FUNCTION IF EXISTS get_StudentId;
DELIMITER //

CREATE FUNCTION get_StudentId
(
student_name_param VARCHAR(45)
)
RETURNS INT

BEGIN
	DECLARE StudentId_var INT;
    SELECT StudentId
    INTO StudentId_var
    FROM student
    WHERE student.name = student_name_param;
    
    RETURN(StudentId_var);
END //
-- End of Function

SELECT 
    professor.name AS 'Name'
FROM
    professor
        JOIN
    section ON professor.ProfessorId = section.ProfessorId
        JOIN
    studentsection ON section.SectionId = studentsection.SectionId
WHERE
    studentsection.StudentId = GET_STUDENTID('Bryce')
GROUP BY professor.name;

-- Query 5
SELECT 
    student.name
FROM
    student
        JOIN
    studentsection ON student.studentid = studentsection.studentid
        JOIN
    section ON studentsection.sectionid = section.sectionid
        JOIN
    course ON section.courseid = course.courseid
        JOIN
    term ON section.termid = term.termid
WHERE
    course.name = 'Econometrics'
        AND term.year = '2016'
        AND term.term = 'Fall';

-- Query 6
SELECT 
    student.name AS 'Name',
    term.term AS 'Term',
    term.year AS 'Year',
    SUM(course.credit) AS 'Credits'
FROM
    student
        JOIN
    studentsection ON student.studentid = studentsection.studentid
        JOIN
    section ON studentsection.sectionid = section.sectionid
        JOIN
    term ON section.termid = term.termid
        JOIN
    course ON section.courseid = course.courseid
GROUP BY student.name
ORDER BY term.year , SUM(course.credit) DESC;

-- Query 7

SELECT 
    student.name AS 'Name',
    term.term AS 'Term',
    term.year AS 'Year',
    SUM(course.credit) AS 'Credits'
FROM student
        JOIN studentsection ON student.studentid = studentsection.studentid
        JOIN section ON studentsection.sectionid = section.sectionid
        JOIN term ON section.termid = term.termid
        JOIN course ON section.courseid = course.courseid
GROUP BY student.name
HAVING SUM(course.credit) > 3
ORDER BY term.year , SUM(course.credit) DESC;

-- Query 8
SELECT student.name, student.DOB
FROM student
WHERE MONTH(DOB) = '09';

-- Query 9
SELECT 
    student.name,
    TRUNCATE((DATEDIFF('2017-01-05', DOB) / 365),
        0) AS 'Years',
    DATEDIFF('2017-01-05', DOB) % 365 AS 'Days',
    CONCAT(TRUNCATE((DATEDIFF('2017-01-05', DOB) / 365),
                0),
            '-Yrs ',
            (DATEDIFF('2017-01-05', DOB) % 365),
            '-Days') AS 'YearDay'
FROM
    student
ORDER BY DOB;


