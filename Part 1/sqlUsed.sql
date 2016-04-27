-- PL/SQL

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





-- DYNAMIC PROCESSES
-- Accept Projects
UPDATE Project
SET accepted = 'y'
WHERE project_no = :P14_UNACCEPTED_PROJECTS;

