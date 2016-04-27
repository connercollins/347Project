DROP SEQUENCE Department_seq ; 
create sequence Department_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger Department_PK_trig 
before insert on Department
for each row 
begin 
select Department_seq.nextval into :new.dept_no from dual; 
end; 
/
alter table Department add created date ; 
alter table Department add created_by VARCHAR2 (255) ; 
alter table Department add row_version_number integer ; 
alter table Department add updated date ; 
alter table Department add updated_by VARCHAR2 (255) ; 
/
create or replace trigger Department_AUD_trig 
before insert or update on Department 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE Person_seq ; 
create sequence Person_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger Person_PK_trig 
before insert on Person
for each row 
begin 
select Person_seq.nextval into :new.person_id from dual; 
end; 
/
alter table Person add created date ; 
alter table Person add created_by VARCHAR2 (255) ; 
alter table Person add row_version_number integer ; 
alter table Person add updated date ; 
alter table Person add updated_by VARCHAR2 (255) ; 
/
create or replace trigger Person_AUD_trig 
before insert or update on Person 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE Project_seq ; 
create sequence Project_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger Project_PK_trig 
before insert on Project
for each row 
begin 
select Project_seq.nextval into :new.project_no from dual; 
end; 
/
alter table Project add created date ; 
alter table Project add created_by VARCHAR2 (255) ; 
alter table Project add row_version_number integer ; 
alter table Project add updated date ; 
alter table Project add updated_by VARCHAR2 (255) ; 
/
create or replace trigger Project_AUD_trig 
before insert or update on Project 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
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
