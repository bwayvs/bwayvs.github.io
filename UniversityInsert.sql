INSERT INTO college
VALUES
(DEFAULT, 'College of Business and Communication'),
(DEFAULT, 'College of Language and Letters');

INSERT INTO department
VALUES
(DEFAULT, 'Computer Information Technology', 'CIT', 1),
(DEFAULT, 'Economics', 'ECON', 1),
(DEFAULT, 'Humanities and Philosophy', 'HUM', 2);

INSERT INTO professor
VALUES
(DEFAULT, 'Morring'),
(DEFAULT, 'Nate'),
(DEFAULT, 'Barrus'),
(DEFAULT, 'Jensen'),
(DEFAULT, 'Barney');

INSERT INTO course
VALUES
(DEFAULT, 'Intro to Databses', '111', 3, 1),
(DEFAULT, 'Micro Economics', '150', 3, 2),
(DEFAULT, 'Econometrics', '388', 4, 2),
(DEFAULT, 'The Classical Heritage', 376, 2, 3);

INSERT INTO semester
VALUES
(DEFAULT, 2016, 'Spring'),
(DEFAULT, 2016, 'Summer'), 
(DEFAULT, 2016, 'Fall'),
(DEFAULT, 2016, 'Winter'),
(DEFAULT, 2017, 'Spring'),
(DEFAULT, 2017, 'Summer'), 
(DEFAULT, 2017, 'Fall'),
(DEFAULT, 2017, 'Winter');

INSERT INTO state
VALUES
('TX', 'Texas'), 
('UT', 'Utah'), 
('AZ', 'Arizona'),
('KS', 'Kansas'),
('ID', 'Idaho'),
('MT', 'Montana'),
('TN', 'Tennessee');

INSERT INTO location
VALUES
(DEFAULT, 'Dallas', 'TX'),
(DEFAULT, 'Provo', 'UT'),
(DEFAULT, 'Mesa', 'AZ'),
(DEFAULT, 'Topeka', 'KS'),
(DEFAULT, 'Rigby', 'ID'),
(DEFAULT, 'Bozeman', 'MT'),
(DEFAULT, 'Decatur', 'TN'),
(DEFAULT, 'Rexburg', 'ID');

INSERT INTO student
VALUES
(DEFAULT, 'Paul', 'M', '1996-02-22', 1), 
(DEFAULT, 'Katie', 'F', '1995-07-22', 2),
(DEFAULT, 'Kelly', 'F', '1998-06-22', 2),
(DEFAULT, 'Devon', 'M', '2000-07-22', 3),
(DEFAULT, 'Mandy', 'F', '1996-11-22', 4),
(DEFAULT, 'Alece', 'F', '1997-05-22', 5), 
(DEFAULT, 'Bryce', 'M', '1997-11-22', 6), 
(DEFAULT, 'Preston', 'M', '1996-09-22', 7),
(DEFAULT, 'Julia', 'F', '1998-09-22', 8),
(DEFAULT, 'Susan', 'F', '1998-09-08', 3);

INSERT INTO class
VALUES
(DEFAULT, 1, 1, '1', '30', 3),
(DEFAULT, 2, 2, '1', '50', 3),
(DEFAULT, 2, 2, '2', '50', 3),
(DEFAULT, 3, 3, '1', '35', 3), 
(DEFAULT, 4, 4, '1', '30', 3),
(DEFAULT, 1, 1, '2', '30', 8),
(DEFAULT, 1, 5, '3', '35', 8),
(DEFAULT, 2, 2, '1', '50', 8),
(DEFAULT, 2, 2, '2', '50', 8),
(DEFAULT, 4, 4, '1', '30', 8);

-- Function to locate student_id using student_name. 
-- When calling the function, type:
-- SELECT student_id
-- WHERE student_id = get_student_id('[student's name]');

SET GLOBAL log_bin_trust_function_creators = 1;
DROP FUNCTION IF EXISTS get_student_id;
DELIMITER //

CREATE FUNCTION get_student_id
(
student_name_param VARCHAR(45)
)
RETURNS INT

BEGIN
	DECLARE student_id_var INT;
    SELECT student_id
    INTO student_id_var
    FROM student
    WHERE student_name = student_name_param;
    
    RETURN(student_id_var);
END //
-- End of Function

INSERT INTO registration
VALUES
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Alece')), 7),
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Bryce')), 6),
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Bryce')), 8),
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Bryce')), 10),
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Devon')), 5),
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Julia')), 9),
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Katie')), 4),
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Kelly')), 4),
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Mandy')), 4),
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Mandy')), 5),
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Paul')), 1),
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Paul')), 3),
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Preston')), 9),
(DEFAULT, 
(SELECT student_id
FROM student
WHERE student_id = get_student_id('Susan')), 6);

SELECT * FROM registration;
SELECT * FROM class;
SELECT * FROM student;
SELECT * FROM semester;
SELECT * FROM department;
SELECT * FROM professor;
SELECT * FROM course;
SELECT * FROM state;
SELECT * FROM location;

