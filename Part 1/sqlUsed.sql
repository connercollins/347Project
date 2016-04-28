I-- PL/SQL

-- CONDITIONAL STATEMENTS:
NVL(:P1_USERTYPE,'') = 'President' OR 
NVL(:P1_USERTYPE,'') = 'Interim_manager' OR
NVL(:P1_USERTYPE,'') = 'Manager'
--
NVL(:P1_USERTYPE,'') = 'President' OR
NVL(:P1_USERTYPE,'') = 'Manager'
--
NVL(:P1_USERTYPE,'') = 'President'



-- SHARED COMPONENTS
-- Parents
select first_name || ' ' || last_name as p,
       person_id
  from person
 order by 1
-- Department
select dept_name as d,
       dept_no as n
  from Department
 order by 1
 -- Managers
 select first_name || ' ' || last_name as n,
       person_id
  from person
 where type = 'Manager' OR type = 'President' OR type = 'Interim_manager'
 order by 1
 -- Projects
 select project_title AS p,
       project_no AS n
  from Project
 order by 1
 -- Spouse
 select first_name || ' ' || last_name as n,
       person_id
  from person
 order by 1
 -- Unaccepted Projects
 select project_title,
       project_no
  from Project
 where accepted = 'n'
 order by 1
 -- Usertypes = static
 -- Booleans = static




-- REPORTS
-- Person
select p.TYPE,
       p.FIRST_NAME,
       p.LAST_NAME,
       p.HOME_ADDRESS,
       p.ZIPCODE,
       p.HOME_PHONE,
       p.US_CITIZEN,
       s.first_name || ' ' || s.last_name AS Spouse,
       p.EMPLOYEE_ID,
       p.SALARY,
       p.SALARY_EXCEPTION,
       p.IS_FIRED,
       m.first_name || ' ' || m.last_name AS Manager,
       p.BONUS,
       d.dept_name AS "Manages Department",
       p.CREATED,
       p.CREATED_BY,
       p.ROW_VERSION_NUMBER,
       p.UPDATED,
       p.UPDATED_BY
  from PERSON p
  LEFT JOIN PERSON s ON p.spouse_id = s.person_id
  LEFT JOIN PERSON m ON p.employee_manager_id = m.person_id
  LEFT JOIN DEPARTMENT d ON p.department_manager_id = d.dept_no
  ORDER BY 1;
-- Employee
select 
e."FIRST_NAME",
e."LAST_NAME",
e."HOME_ADDRESS",
e."ZIPCODE",
e."HOME_PHONE",
e."US_CITIZEN",
s.first_name || ' ' || s.last_name AS Spouse,
e."EMPLOYEE_ID",
e."SALARY",
e."SALARY_EXCEPTION",
m.first_name || ' ' || m.last_name AS Manager
from "#OWNER#"."EMPLOYEE_VIEW" e
LEFT JOIN PERSON s ON e.spouse_id = s.person_id
LEFT JOIN PERSON m ON e.employee_manager_id = m.person_id;
-- Manager
select  
p."FIRST_NAME",
p."LAST_NAME",
p."HOME_ADDRESS",
p."ZIPCODE",
p."HOME_PHONE",
p."US_CITIZEN",
s.first_name || ' ' || s.last_name AS Spouse,
p."EMPLOYEE_ID",
p."SALARY",
p."SALARY_EXCEPTION",
m.first_name || ' ' || m.last_name AS Manager,
p."BONUS",
d.dept_name AS "Manages Department"
from "#OWNER#"."MANAGER_VIEW" p
LEFT JOIN PERSON s ON p.spouse_id = s.person_id
LEFT JOIN PERSON m ON p.employee_manager_id = m.person_id
LEFT JOIN DEPARTMENT d on p.department_manager_id = d.dept_no;
-- President
select 
p."FIRST_NAME",
p."LAST_NAME",
p."HOME_ADDRESS",
p."ZIPCODE",
p."HOME_PHONE",
p."US_CITIZEN",
s.first_name || ' ' || s.last_name AS Spouse,
p."EMPLOYEE_ID",
p."SALARY",
p."SALARY_EXCEPTION",
m.first_name || ' ' || m.last_name AS Manager,
p."BONUS",
d.dept_name AS "Manages Department"
from "#OWNER#"."PRESIDENT_VIEW" p
LEFT JOIN PERSON s ON p.spouse_id = s.person_id
LEFT JOIN PERSON m ON p.employee_manager_id = m.person_id
LEFT JOIN Department d ON p.department_manager_id = d.dept_no;
-- Department
select
"DEPT_NAME",
"CREATED",
"CREATED_BY",
"ROW_VERSION_NUMBER",
"UPDATED",
"UPDATED_BY"
from "#OWNER#"."DEPARTMENT"
-- Project
select p.TYPE,
       p.PROJECT_TITLE,
       d.dept_name AS "Department",
       s.project_title AS "Sub Project Of",
       m.first_name || ' ' || m.last_name AS "Project Manager",
       p.END_DATE,
       p.EST_PERSON_HOURS,
       p.PROJECT_ACTIVE,
       p.CREATED,
       p.CREATED_BY,
       p.ROW_VERSION_NUMBER,
       p.UPDATED,
       p.UPDATED_BY
  from PROJECT p
  LEFT JOIN department d ON d.dept_no = p.department_assigned
  LEFT JOIN project s ON p.sub_project_of = s.project_no
  LEFT JOIN person m ON p.project_manager_id = m.person_id
Where p.accepted = 'y';
-- Current Project
select p."PROJECT_NO", 
p."PROJECT_TITLE",
m.first_name || ' ' || m.last_name AS "PROJECT MANAGER",
d.dept_name AS "Department Assigned",
s.project_title AS "SUB PROJECT OF",
p."PROJECT_ACTIVE"
from "#OWNER#"."CURRENT_PROJECT_VIEW" p
LEFT JOIN PERSON m ON p.project_manager_id = m.person_id
LEFT JOIN DEPARTMENT d ON p.department_assigned = d.dept_no
LEFT JOIN Project s ON p.sub_project_of = s.project_no
WHERE p.accepted = 'y';
-- Projects Needing Acceptance
select p.TYPE,
       p.PROJECT_TITLE,
       d.dept_name AS "DEPARTMENT",
       s.project_title AS "Sub Project Of",
       m.first_name || ' ' || m.last_name AS "Project Manager",
       p.END_DATE,
       p.EST_PERSON_HOURS,
       p.PROJECT_ACTIVE,
       p.CREATED,
       p.CREATED_BY,
       p.ROW_VERSION_NUMBER,
       p.UPDATED,
       p.UPDATED_BY
  from PROJECT p
  LEFT JOIN department d ON p.department_assigned = d.dept_no
  LEFT JOIN project s ON p.sub_project_of = s.project_no
  LEFT JOIN person m ON p.project_manager_id = m.person_id
  where p.accepted = 'n'
-- Previous Project
select p."PROJECT_NO", 
p."PROJECT_TITLE",
p."ACCEPTED",
m.first_name || ' ' || m.last_name AS "Project Manager",
d.dept_name AS "Department",
s.project_title AS "Sub Project Of",
p."END_DATE",
p."EST_PERSON_HOURS"
from "#OWNER#"."PREVIOUS_PROJECT_VIEW" p
LEFT JOIN Person m ON p.project_manager_id = m.person_id
LEFT JOIN Department d ON p.department_assigned = d.dept_no
LEFT JOIN Project s ON p.sub_project_of = s.project_no;
-- Previous Employee
select p."PERSON_ID", 
p."FIRST_NAME",
p."LAST_NAME",
p."HOME_ADDRESS",
p."ZIPCODE",
p."HOME_PHONE",
p."US_CITIZEN",
s.first_name || ' ' || s.last_name AS "Spouse",
p."IS_FIRED",
p."SALARY"
from "#OWNER#"."PREVIOUS_EMPLOYEE_VIEW" p
LEFT JOIN person s ON p.spouse_id = s.person_id;
-- Interim Manager
select p."PERSON_ID", 
p."FIRST_NAME",
p."LAST_NAME",
p."HOME_ADDRESS",
p."ZIPCODE",
p."HOME_PHONE",
p."US_CITIZEN",
s.first_name || ' ' || s.last_name AS "Spouse",
p."EMPLOYEE_ID",
p."SALARY",
p."SALARY_EXCEPTION",
m.first_name || ' ' || m.last_name AS "Manager",
p."BONUS",
d.dept_name AS "Manages"
from "#OWNER#"."INTERIM_MANAGER_VIEW" p
LEFT JOIN person s ON p.person_id = s.person_id
LEFT JOIN department d ON d.dept_no = p.department_manager_id
LEFT JOIN person m ON p.employee_manager_id = m.person_id;
-- Children
select p."PERSON_ID", 
p."TYPE",
p."FIRST_NAME",
p."LAST_NAME",
p."HOME_ADDRESS",
p."ZIPCODE",
p."HOME_PHONE",
p."US_CITIZEN",
s.first_name || ' ' || s.last_name AS "Spouse",
p."EMPLOYEE_ID",
p."SALARY",
p."SALARY_EXCEPTION",
p."IS_FIRED",
m.first_name || ' ' || m.last_name AS "Manager",
p."BONUS",
d.dept_name AS "Manages Department",
p."CREATED",
p."CREATED_BY",
p."ROW_VERSION_NUMBER",
p."UPDATED",
p."UPDATED_BY"
from person_child pc
JOIN person p ON pc.child_id = p.person_id
LEFT JOIN person s ON p.spouse_id = s.person_id
LEFT JOIN person m ON p.employee_manager_id = m.person_id
LEFT JOIN department d ON p.department_manager_id = d.dept_no
WHERE pc.parent_id = :P23_PARENT_SELECTOR
-- Employees On Project
select p.TYPE,
       p.FIRST_NAME,
       p.LAST_NAME,
       p.HOME_ADDRESS,
       p.ZIPCODE,
       p.HOME_PHONE,
       p.US_CITIZEN,
       s.first_name || ' ' || s.last_name AS Spouse,
       p.EMPLOYEE_ID,
       p.SALARY,
       p.SALARY_EXCEPTION,
       p.IS_FIRED,
       m.first_name || ' ' || m.last_name AS Manager,
       p.BONUS,
       d.dept_name AS "Manages Department",
       p.CREATED,
       p.CREATED_BY,
       p.ROW_VERSION_NUMBER,
       p.UPDATED,
       p.UPDATED_BY
  from Current_Project_Employee ep
  JOIN person p ON p.person_id = ep.Person_person_id
  LEFT JOIN PERSON s ON p.spouse_id = s.person_id
  LEFT JOIN PERSON m ON p.employee_manager_id = m.person_id
  LEFT JOIN DEPARTMENT d ON p.department_manager_id = d.dept_no
  WHERE ep.Project_project_no = :P36_PROJECT
  ORDER BY 1;
-- Projects For Employees
select p.TYPE,
       p.PROJECT_TITLE,
       d.dept_name AS "Department",
       s.project_title AS "Sub Project Of",
       m.first_name || ' ' || m.last_name AS "Project Manager",
       p.END_DATE,
       p.EST_PERSON_HOURS,
       p.PROJECT_ACTIVE,
       p.CREATED,
       p.CREATED_BY,
       p.ROW_VERSION_NUMBER,
       p.UPDATED,
       p.UPDATED_BY
  from Current_Project_Employee ep
  JOIN PROJECT p ON p.project_no = ep.Project_project_no
  LEFT JOIN department d ON d.dept_no = p.department_assigned
  LEFT JOIN project s ON p.sub_project_of = s.project_no
  LEFT JOIN person m ON p.project_manager_id = m.person_id
  WHERE ep.Person_person_id = :P38_EMPLOYEE;



-- DYNAMIC PROCESSES
-- Accept Projects
UPDATE Project
SET accepted = 'y'
WHERE project_no = :P14_UNACCEPTED_PROJECTS;
