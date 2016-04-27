DROP SEQUENCE Department_seq ; 
create sequence Department_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Department_PK_trig 
; 

create or replace trigger Department_PK_trig 
before insert on Department
for each row 
begin 
select Department_seq.nextval into :new.dept_no from dual; 
end; 
/

DROP SEQUENCE Person_seq ; 
create sequence Person_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Person_PK_trig 
; 

create or replace trigger Person_PK_trig 
before insert on Person
for each row 
begin 
select Person_seq.nextval into :new.person_id from dual; 
end; 
/

DROP SEQUENCE Project_seq ; 
create sequence Project_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Project_PK_trig 
; 

create or replace trigger Project_PK_trig 
before insert on Project
for each row 
begin 
select Project_seq.nextval into :new.project_no from dual; 
end; 
/

DROP INDEX Project_project_no_FK_0 ;
CREATE INDEX Project_project_no_FK_0 ON Current_Project_Employee(Project_project_no) ;
DROP INDEX employee_manager_id_FK_1 ;
CREATE INDEX employee_manager_id_FK_1 ON Person(employee_manager_id) ;
DROP INDEX department_manager_id_FK_2 ;
CREATE INDEX department_manager_id_FK_2 ON Person(department_manager_id) ;
DROP INDEX department_assigned_FK_3 ;
CREATE INDEX department_assigned_FK_3 ON Project(department_assigned) ;
DROP INDEX Person_person_id_FK_4 ;
CREATE INDEX Person_person_id_FK_4 ON Current_Project_Employee(Person_person_id) ;
DROP INDEX project_manager_id_FK_5 ;
CREATE INDEX project_manager_id_FK_5 ON Project(project_manager_id) ;
DROP INDEX sub_project_of_FK_6 ;
CREATE INDEX sub_project_of_FK_6 ON Project(sub_project_of) ;
DROP INDEX spouse_id_FK_7 ;
CREATE INDEX spouse_id_FK_7 ON Person(spouse_id) ;
DROP INDEX parent_id_FK_8 ;
CREATE INDEX parent_id_FK_8 ON person_child(parent_id) ;
DROP INDEX child_id_FK_9 ;
CREATE INDEX child_id_FK_9 ON person_child(child_id) ;
