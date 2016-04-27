drop view Previous_employee_view;
drop view Employee_view;
drop view Project_employee_view;
drop view Interim_manager_view;
drop view Manager_view;
drop view President_view;

drop view Previous_project_view;
drop view Current_project_view;

create view Previous_employee_view as
	SELECT
		person_id,
		type,
		first_name,
		last_name,
		home_address,
		zipcode,
		home_phone,
		us_citizen,
		spouse_id,
		is_fired,
		salary
	FROM Person where type = 'Previous_employee';

create or replace TRIGGER Previous_employee_trigger
	INSTEAD OF insert ON Previous_employee_view
	FOR EACH ROW
BEGIN
	insert into Person(
		person_id,
		type,
		first_name,
		last_name,
		home_address,
		zipcode,
		home_phone,
		us_citizen,
		spouse_id,
		is_fired,
		salary)
		VALUES (
			:NEW.person_id,
			'Previous_Employee',
			:NEW.first_name,
			:NEW.last_name,
			:NEW.home_address,
			:NEW.zipcode,
			:NEW.home_phone,
			:NEW.us_citizen,
			:NEW.spouse_id,
			:NEW.is_fired,
			:NEW.salary);
END;
/

create view Employee_view as
	SELECT
		person_id,
		type,
		first_name,
		last_name,
		home_address,
		zipcode,
		home_phone,
		us_citizen,
		spouse_id,
		employee_id,
		salary,
		salary_exception,
		employee_manager_id
	from Person where type = 'Employee';

create or replace TRIGGER Employee_trigger
	INSTEAD OF insert ON Employee_view
	FOR EACH ROW
BEGIN
	insert into Person(
		person_id,
		type,
		first_name,
		last_name,
		home_address,
		zipcode,
		home_phone,
		us_citizen,
		spouse_id,
		employee_id,
		salary,
		salary_exception,
		employee_manager_id)
		VALUES (
			:NEW.person_id,
			'Employee',
			:NEW.first_name,
			:NEW.last_name,
			:NEW.home_address,
			:NEW.zipcode,
			:NEW.home_phone,
			:NEW.us_citizen,
			:NEW.spouse_id,
			:NEW.employee_id,
			:NEW.salary,
			:NEW.salary_exception,
			:NEW.employee_manager_id);
END;
/

create view Project_employee_view as
	SELECT
		person_id,
		type,
		first_name,
		last_name,
		home_address,
		zipcode,
		home_phone,
		us_citizen,
		spouse_id,
		employee_id,
		salary,
		salary_exception,
		employee_manager_id
	from Person where type = 'Project_employee';

create or replace TRIGGER Project_employee_trigger
	INSTEAD OF insert ON Project_employee_view
	FOR EACH ROW
BEGIN
	insert into Person(
		person_id,
		type,
		first_name,
		last_name,
		home_address,
		zipcode,
		home_phone,
		us_citizen,
		spouse_id,
		employee_id,
		salary,
		salary_exception,
		employee_manager_id)
		VALUES (
			:NEW.person_id,
			'Project_employee',
			:NEW.first_name,
			:NEW.last_name,
			:NEW.home_address,
			:NEW.zipcode,
			:NEW.home_phone,
			:NEW.us_citizen,
			:NEW.spouse_id,
			:NEW.employee_id,
			:NEW.salary,
			:NEW.salary_exception,
			:NEW.employee_manager_id);
END;
/

create view Interim_manager_view as
	SELECT
		person_id,
		type,
		first_name,
		last_name,
		home_address,
		zipcode,
		home_phone,
		us_citizen,
		spouse_id,
		employee_id,
		salary,
		salary_exception,
		employee_manager_id,
		bonus,
		department_manager_id
	from Person where type = 'Interim_manager';

create or replace TRIGGER Interim_manager_trigger
	INSTEAD OF insert ON Interim_manager_view
	FOR EACH ROW
BEGIN
	insert into Person(
		person_id,
		type,
		first_name,
		last_name,
		home_address,
		zipcode,
		home_phone,
		us_citizen,
		spouse_id,
		employee_id,
		salary,
		salary_exception,
		employee_manager_id,
		bonus,
		department_manager_id)
		VALUES (
			:NEW.person_id,
			'Interim_manager',
			:NEW.first_name,
			:NEW.last_name,
			:NEW.home_address,
			:NEW.zipcode,
			:NEW.home_phone,
			:NEW.us_citizen,
			:NEW.spouse_id,
			:NEW.employee_id,
			:NEW.salary,
			:NEW.salary_exception,
			:NEW.employee_manager_id,
			:NEW.bonus,
			:NEW.department_manager_id);
END;
/

create view Manager_view as
	SELECT
		person_id,
		type,
		first_name,
		last_name,
		home_address,
		zipcode,
		home_phone,
		us_citizen,
		spouse_id,
		employee_id,
		salary,
		salary_exception,
		employee_manager_id,
		bonus,
		department_manager_id
	from Person where type = 'Manager';

create or replace TRIGGER Manager_trigger
	INSTEAD OF insert ON Manager_view
	FOR EACH ROW
BEGIN
	insert into Person(
		person_id,
		type,
		first_name,
		last_name,
		home_address,
		zipcode,
		home_phone,
		us_citizen,
		spouse_id,
		employee_id,
		salary,
		salary_exception,
		employee_manager_id,
		bonus,
		department_manager_id)
		VALUES (
			:NEW.person_id,
			'Manager',
			:NEW.first_name,
			:NEW.last_name,
			:NEW.home_address,
			:NEW.zipcode,
			:NEW.home_phone,
			:NEW.us_citizen,
			:NEW.spouse_id,
			:NEW.employee_id,
			:NEW.salary,
			:NEW.salary_exception,
			:NEW.employee_manager_id,
			:NEW.bonus,
			:NEW.department_manager_id);
END;
/

create view President_view as
	SELECT
		person_id,
		type,
		first_name,
		last_name,
		home_address,
		zipcode,
		home_phone,
		us_citizen,
		spouse_id,
		employee_id,
		salary,
		salary_exception,
		employee_manager_id,
		bonus,
		department_manager_id
	from Person where type = 'President';

create or replace TRIGGER President_trigger
	INSTEAD OF insert ON President_view
	FOR EACH ROW
BEGIN
	insert into Person(
		person_id,
		type,
		first_name,
		last_name,
		home_address,
		zipcode,
		home_phone,
		us_citizen,
		spouse_id,
		employee_id,
		salary,
		salary_exception,
		employee_manager_id,
		bonus,
		department_manager_id)
		VALUES (
			:NEW.person_id,
			'President',
			:NEW.first_name,
			:NEW.last_name,
			:NEW.home_address,
			:NEW.zipcode,
			:NEW.home_phone,
			:NEW.us_citizen,
			:NEW.spouse_id,
			:NEW.employee_id,
			:NEW.salary,
			:NEW.salary_exception,
			:NEW.employee_manager_id,
			:NEW.bonus,
			:NEW.department_manager_id);
END;
/

create view Previous_project_view as
	SELECT
		project_no,
		type,
		project_title,
		accepted,
		project_manager_id,
		department_assigned,
		sub_project_of,
		end_date,
		est_person_hours
	FROM Project where type = 'Previous_project';
create or replace TRIGGER Previous_project_trigger
	INSTEAD OF insert ON Previous_project_view
	FOR EACH ROW
BEGIN
	insert into Project(
		project_no,
		type,
		project_title,
		accepted,
		project_manager_id,
		department_assigned,
		sub_project_of,
		end_date,
		est_person_hours)
		VALUES (
		:NEW.project_no,
		'Previous_project',
		:NEW.project_title,
		:NEW.accepted,
		:NEW.project_manager_id,
		:NEW.department_assigned,
		:NEW.sub_project_of,
		:NEW.end_date,
		:NEW.est_person_hours);
END;
/

create view Current_project_view as
	SELECT
		project_no,
		type,
		project_title,
		accepted,
		project_manager_id,
		department_assigned,
		sub_project_of,
		project_active
	FROM Project where type = 'Current_project';
create or replace TRIGGER Current_project_trigger
	INSTEAD OF insert ON Current_project_view
	FOR EACH ROW
BEGIN
	insert into Project(
		project_no,
		type,
		project_title,
		accepted,
		project_manager_id,
		department_assigned,
		sub_project_of,
		project_active)
		VALUES (
		:NEW.project_no,
		'Current_project',
		:NEW.project_title,
		'n',
		:NEW.project_manager_id,
		:NEW.department_assigned,
		:NEW.sub_project_of,
		:NEW.project_active);
END;
/


