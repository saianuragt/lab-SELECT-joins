--1. Write a query to return all the rows from user_new table and role tables where there is matching
--   user_new.role_id value in both the usernew and role tables. Display role.name and user_new.name in ascending order.
SELECT USER_NEW.NAME,ROLE.NAME
FROM USER_NEW INNER JOIN ROLE
ON USER_NEW.ID=ROLE.ID
ORDER BY USER_NEW.NAME, ROLE.NAME ASC;
--2. Write a query to return all rows from the user_new table and only those rows from the role table where the joined fields are equal.
--   Display role.name and user_new in ascending order.
SELECT * 
FROM ROLE INNER JOIN USER_NEW
ON USER_NEW.ID=ROLE.ID
ORDER BY USER_NEW.NAME, ROLE.NAME ASC;
--3. Write a query to return all names from the user_new table where there is matching user_new.role_id value in
--   both the user_new and role tables.
SELECT USER_NEW.NAME
FROM ROLE INNER JOIN USER_NEW
ON USER_NEW.ROLE_ID=ROLE.ID;
--4. Write a query to return all  user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation,
--   experience.company_name from user_new table where there is matching 
--  - profile id in both user_new and profile table, 
--  - profile.degree_id and degree.id from profile and degree table, 
--  - degree.department_id and department.id in degree and department
--  - profile.id and experience.profile_id in experience and profile table
--  - where user_name.name = "ProGrad" and experience.currentValue=3
SELECT USER_NEW.PHONENUMBER,PROFILE.BATCH,DEPARTMENT.NAME,PROFILE.DESIGNATION,EXPERIENCE.COMPANY_NAME
FROM USER_NEW 
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE_ID
INNER JOIN DEGREE ON PROFILE.DEGREE_ID=DEGREE.ID
INNER JOIN DEPARTMENT ON DEGREE.DEPARTMENT_ID=DEPARTMENT.ID
INNER JOIN EXPERIENCE ON PROFILE.ID=EXPERIENCE.PROFILE_ID
WHERE USER_NEW.NAME='PROGRAD' AND EXPERIENCE.CURRENTVALUE=3;
--5. Write a query to return all user_new.name, skill.name from user_new table where there are matching ids in the tables
--   in the order with constraints given below
--  - role
--  - profile
--  - profile_skills
--  - where role.name="Alumini" 
--  - Display by user_new.name and skill.name
SELECT USER_NEW.NAME,SKILL.NAME
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN SKILL ON PROFILE.ID=SKILL.ID
WHERE ROLE.NAME='ALUMINI';
--6. Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - experience
--  - where role.name = "Alumini"
--  - Display in the order user_name.name followed by experience.company_name
SELECT USER_NEW.NAME,EXPERIENCE.COMPANY_NAME
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN EXPERIENCE ON USER_NEW.ID=EXPERIENCE.ID
WHERE ROLE.NAME='ALUMINI';
--7. Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - experience
--  - where role.name = "Alumini"
--  - Display in the order user_name.name followed by experience.company_name
SELECT USER_NEW.NAME,EXPERIENCE.COMPANY_NAME
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN EXPERIENCE ON USER_NEW.ID=EXPERIENCE.ID
WHERE ROLE.NAME='ALUMINI';
--8. Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - experience
--  - where role.name='Alumni' and experience.currentValue=1
--  - Display in the order of user_new.name;
SELECT USER_NEW.NAME,EXPERIENCE.COMPANY_NAME
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN EXPERIENCE ON USER_NEW.ID=EXPERIENCE.ID
WHERE ROLE.NAME='ALUMINI' AND EXPERIENCE.CURRENTVALUE=1;
--9. Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - experience
--  - where role.name='Alumni' and experience.currentValue=1 and profile.batch='2008' 
--  - Display in the order of user_new.name;
SELECT USER_NEW.NAME,EXPERIENCE.COMPANY_NAME
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN EXPERIENCE ON USER_NEW.ID=EXPERIENCE.ID
WHERE ROLE.NAME='ALUMINI' AND EXPERIENCE.CURRENTVALUE=1 AND PROFILE.BATCH='2008'
ORDER BY USER_NEW.NAME;
--10. Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where
--    there are matching ids in the tables 
--  - role
--  - profile
--  - where role.name='Alumni' and user_new.profile_id is not null 
--  - Display in the order of user_new.name;
SELECT USER_NEW.NAME, USER_NEW.EMAILID, USER_NEW.PHONENUMBER, PROFILE.ADDRESS
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
WHERE ROLE.NAME='ALUMINI' AND USER_NEW.PROFILE_ID IS NOT NULL
ORDER BY USER_NEW.NAME;
--11. Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from
--    user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - where role.name='Alumni' and profile.batch='2008'
--  - Display in the order of user_new.name;     
SELECT USER_NEW.NAME, USER_NEW.EMAILID, USER_NEW.PHONENUMBER, PROFILE.ADDRESS
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
WHERE ROLE.NAME='ALUMINI' AND PROFILE.BATCH='2008'
ORDER BY USER_NEW.NAME;
--12. Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from 
--    user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - degree
--  - where role.name='Alumni' and degree.name='BSC_CT'
--  - Display in the order of user_new.name;  
SELECT USER_NEW.NAME, USER_NEW.EMAILID, USER_NEW.PHONENUMBER, PROFILE.ADDRESS
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN DEGREE ON USER_NEW.ID=DEGREE.ID
WHERE ROLE.NAME='ALUMINI' AND DEGREE.NAME='BSC_CT'
ORDER BY USER_NEW.NAME;
--13. Write a query to return alluser_new.name, user_new.emailid, user_new.phonenumber, profile.address from
--    user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - degree
--  - department
--  - where role.name='Alumni' and department.name='CSE'
--  - Display in the order of user_new.name;  
SELECT USER_NEW.NAME, USER_NEW.EMAILID, USER_NEW.PHONENUMBER, PROFILE.ADDRESS
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN DEGREE ON USER_NEW.ID=DEGREE.ID
INNER JOIN DEPARTMENT ON USER_NEW.ID=DEPARTMENT.ID
WHERE ROLE.NAME='ALUMINI' AND DEPARTMENT.NAME='CSE'
ORDER BY USER_NEW.NAME;                  
--14. Write a query to return all user_new.name, higher_degree.university_name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - higher_degree
--  - department
--  - where role.name='Alumni' and higher_degree.degree_name is not null
--  - Display in the order of user_new.name,higher_degree.university_name 
SELECT USER_NEW.NAME, HIGHER_DEGREE.UNIVERSITY_NAME
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN HIGHER_DEGREE ON USER_NEW.ID=HIGHER_DEGREE.ID
INNER JOIN DEGREE ON USER_NEW.ID=DEGREE.ID
INNER JOIN DEPARTMENT ON USER_NEW.ID=DEPARTMENT.ID
WHERE ROLE.NAME='ALUMINI' AND HIGHER_DEGREE.DEGREE_NAME IS NOT NULL
ORDER BY USER_NEW.NAME,HIGHER_DEGREE.UNIVERSITY_NAME;
--15. Write a query to return all user_new.name, higher_degree.university_name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - higher_degree
--  - department
--  - where role.name='Alumni' and higher_degree.degree_name is not null
--  - Display in the order of user_new.name,higher_degree.university_name 
SELECT USER_NEW.NAME, HIGHER_DEGREE.UNIVERSITY_NAME
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN HIGHER_DEGREE ON USER_NEW.ID=HIGHER_DEGREE.ID
INNER JOIN DEGREE ON USER_NEW.ID=DEGREE.ID
INNER JOIN DEPARTMENT ON USER_NEW.ID=DEPARTMENT.ID
WHERE ROLE.NAME='ALUMINI' AND HIGHER_DEGREE.DEGREE_NAME IS NOT NULL
ORDER BY USER_NEW.NAME,HIGHER_DEGREE.UNIVERSITY_NAME;
--16. Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new 
--    where there are matching ids in the tables 
--  - role
--  - profile
--  - degree
--  - department
--  - higher_degree
--  - where role.name='Alumni' and higher_degree.university_name='Texas University'
--  - Display in the order of user_new.name;
SELECT USER_NEW.NAME, USER_NEW.EMAILID,USER_NEW.PHONENUMBER,PROFILE.ADDRESS
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN DEGREE ON USER_NEW.ID=DEGREE.ID
INNER JOIN DEPARTMENT ON USER_NEW.ID=DEPARTMENT.ID
INNER JOIN HIGHER_DEGREE ON USER_NEW.ID=HIGHER_DEGREE.ID
WHERE ROLE.NAME='ALUMINI' AND HIGHER_DEGREE.UNIVERSITY_NAME='TEXAS UNIVERSITY'
ORDER BY USER_NEW.NAME;
--17. Write a query to return all user_new.name, profile.batch from user_new where there are matching ids in the tables  
--  - role
--  - profile
--  - where role.name='Alumni' and profile.gender='female'
--  - Display in the order of user_new.name;
SELECT USER_NEW.NAME, PROFILE.BATCH
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
WHERE ROLE.NAME='ALUMINI' AND PROFILE.GENDER='FEMALE'
ORDER BY USER_NEW.NAME;
--18. Write a query to return all user_new.name, profile.batch, degree.name from user_new where there are matching ids in the tables  
--  - role
--  - profile
--  - degree
--  - where role.name='Alumni' and profile.gender='female'
--  - Display in the order of user_new.name;
SELECT USER_NEW.NAME, PROFILE.BATCH,DEGREE.NAME
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN DEGREE ON USER_NEW.ID=DEGREE.ID
WHERE ROLE.NAME='ALUMINI' AND PROFILE.GENDER='FEMALE'
ORDER BY USER_NEW.NAME;
--19. Write a query to return all user_new.name, profile.batch, degree.name, department.name from user_new where
--    there are matching ids in the tables 
--  - role
--  - profile
--  - degree
--  - department
--  - where role.name='Alumni' and profile.gender='female'
--  - Display in the order of user_new.name;
SELECT USER_NEW.NAME, PROFILE.BATCH,DEGREE.NAME,DEPARTMENT.NAME
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN DEGREE ON USER_NEW.ID=DEGREE.ID
INNER JOIN DEPARTMENT ON USER_NEW.ID=DEPARTMENT.ID
WHERE ROLE.NAME='ALUMINI' AND PROFILE.GENDER='FEMALE'
ORDER BY USER_NEW.NAME;
--19. Write a query to return all degree.name, department.name from degree where there are matching ids in the tables 
--  - department
--  - Display in the order of degree.name;
SELECT DEGREE.NAME, DEPARTMENT.NAME
FROM DEGREE
INNER JOIN DEPARTMENT ON DEGREE.DEPARTMENT_ID=DEPARTMENT.ID
ORDER BY DEGREE.NAME;
--20. Write a query to return all user_new.name, profile.designation from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - where role.name='Alumni' and profile.gender='male'
--  - Display in the order of user_new.name;                                     
SELECT USER_NEW.NAME,PROFILE.DESIGNATION
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
WHERE ROLE.NAME='ALUMNI' AND PROFILE.GENDER='MALE'
ORDER BY USER_NEW.NAME;
--21. Write a query to return all  user_new.name, profile.designation from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - experience
--  - where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
--  - Display in the order of user_new.name; 
SELECT USER_NEW.NAME,PROFILE.DESIGNATION
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN EXPERIENCE ON USER_NEW.ID=EXPERIENCE.ID
WHERE ROLE.NAME='ALUMNI' AND EXPERIENCE.currentValue=1 AND EXPERIENCE.COMPANY_NAME='TCS'
ORDER BY USER_NEW.NAME;
--22. Write a query to return all  user_new.name, querytable.content from user_new where there are matching ids in the tables 
--  - querytable
--  - Display in the order of user_new.name;
SELECT USER_NEW.NAME, QUERYTABLE.CONTENT
FROM USER_NEW
INNER JOIN QUERYTABLE ON USER_NEW.ID=QUERYTABLE.ID
ORDER BY USER_NEW.NAME;
--23. Write a query to return all  user_new.name, querytable.content from user_new where there are matching ids in the tables 
--  - querytable
--  - where parent_id is not null
--  - Display in the order of user_new.name;
SELECT USER_NEW.NAME, QUERYTABLE.CONTENT
FROM USER_NEW
INNER JOIN QUERYTABLE ON USER_NEW.ID=QUERYTABLE.ID
WHERE QUERYTABLE.PARENT_ID IS NOT NULL
ORDER BY USER_NEW.NAME;
--24. Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables 
--  - post
--  - Display in the order of user_new.name;
SELECT USER_NEW.NAME, POST.CONTENT
FROM USER_NEW
INNER JOIN POST ON USER_NEW.ID=POST.ID
ORDER BY USER_NEW.NAME;          
--25. Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables 
--  - post
--  - where post_type.name='Technology'
--  - Display in the order of user_new.name,post.dateof;                                       
SELECT USER_NEW.NAME, POST.CONTENT
FROM USER_NEW
INNER JOIN POST ON USER_NEW.ID=POST.ID
INNER JOIN POST_TYPE ON POST.TYPE_ID=POST.ID
WHERE POST_TYPE.NAME='TECHNOLOGY'
ORDER BY USER_NEW.NAME, POST.DATEOF;
--26. Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables 
--  - post
--  - where post.dateof='2013'
--  - Display in the order of user_new.name, post.dateof, post.content;      
SELECT USER_NEW.NAME, POST.CONTENT
FROM USER_NEW
INNER JOIN POST ON USER_NEW.ID=POST.ID
WHERE POST.DATEOF='2013'
ORDER BY USER_NEW.NAME, POST.DATEOF, POST.CONTENT;
--27. Write a query to return all user_new.name, department.name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - degree
--  - department
--  - profile_skills
--  - skill
--  - where skill.name='Programming'
--  - Display in the order of user_new.name;                         
SELECT USER_NEW.NAME, DEPARTMENT.NAME
FROM USER_NEW
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
INNER JOIN PROFILE ON USER_NEW.PROFILE_ID=PROFILE.ID
INNER JOIN DEGREE ON USER_NEW.ID=DEGREE.ID
INNER JOIN DEPARTMENT ON USER_NEW.ID=DEPARTMENT.ID
INNER JOIN PROFILE_SKILLS ON USER_NEW.PROFILE_ID=PROFILE_SKILLS.PROFILE_ID
INNER JOIN SKILL ON PROFILE_SKILLS.SKILL_ID=SKILL.ID
WHERE SKILL.NAME='PROGRAMMING'
ORDER BY USER_NEW.NAME;
--28. Write a query to return all user_new.name, event.name from user_new where there are matching ids in the tables 
--  - event
--  - where role.name='Alumni'
--  - Display in the order of user_new.name,event.dateof
--  - Display event in descending order.
SELECT USER_NEW.NAME, EVENT.NAME
FROM USER_NEW
INNER JOIN EVENT ON USER_NEW.ID=EVENT.ID
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
WHERE ROLE.NAME='ALUMNI'
ORDER BY USER_NEW.NAME, EVENT.DATEOF, EVENT.NAME DESC;
--29. Write a query to return all user_new.name, event.name from user_new where there are a matching ids in the tables 
--  - event
--  - role
--  - where role.name='Alumni'
--  - Display in the order of user_new.name,event.dateof
SELECT USER_NEW.NAME, EVENT.NAME
FROM USER_NEW
INNER JOIN EVENT ON USER_NEW.ID=EVENT.ID
INNER JOIN ROLE ON USER_NEW.ROLE_ID=ROLE.ID
WHERE ROLE.NAME='ALUMNI'
ORDER BY USER_NEW.NAME, EVENT.DATEOF;

