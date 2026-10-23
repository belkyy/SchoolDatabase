--Question 1) Selection and projection
-- Find sid, fname, and lname of students who belong to department 1 or department 2, were born before 198101-01, and were not born in 'izmir'. Use one selection predicate containing AND, OR, and NOT, followed by projection. 

Select sid, fname, lname from Student 
where (did = 1 OR did = 2) AND birthdate < '1981-01-01' AND birthplace != 'izmir';



--Question 2) Cartesian product
-- List every possible student–course pair in which the student’s department equals the course’s offering department, whether or not the student is enrolled. Return sid and cid. Use Cartesian product, selection, projection, and explicit attribute renaming; do not use a join operator. 

SELECT Student.sid AS S, Course.cid as C From Student, Course WHERE Student.did = Course.did;
