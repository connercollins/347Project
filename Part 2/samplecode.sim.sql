# This file contains some sample code used for part II
# to avoid redundancy (since a lot of the code is similar)
# we will only include a few examples representative of the 
# project as while 

# Sample RETRIEVE statements
# Used to populate the reports

FROM manager RETRIEVE *;

# Used for EVAs

FROM current-project 
RETRIEVE employee-id OF project-members, 
         first-name OF project-members, 
         last-name OF project-members 
WHERE project-no = 'projectno';


# Sample INSERT 

INSERT manager (employee-id := 'employeeid', 
                salary := 'salary', 
                person-id := 'personid', 
                first-name := 'firstname', 
                last-name := 'lastname', 
                home_address := 'homeaddress', 
                zipcode := 'zipcode', 
                home-phone := 'homephone', 
                us-citizen := 'uscitizen', 
                bonus := 'bonus');


# Sample SQL to populate clob with JSON 

SELECT clob001 from apex_collections 
WHERE collection_name = 'S16_CURPROJ_JSON'

# Sample SQL to retrieve JSON from clob and populate report 

SELECT             
jt1.project_no     project_no,         
jt2.project_title  project_title,
jt3.project_active project_active
FROM apex_collections t,
json_table(t.clob001, '$.project_no[*]' COLUMNS rid for ordinality, project_no varchar path '$') jt1,
json_table(t.clob001, '$.project_title[*]' COLUMNS rid for ordinality, project_title varchar path '$') jt2,
json_table(t.clob001, '$.project_active[*]' COLUMNS rid for ordinality, project_active varchar path '$') jt3
WHERE t.collection_name   =   'S16_CURPROJ_JSON' and 
jt1.rid = jt2.rid and jt2.rid = jt3.rid