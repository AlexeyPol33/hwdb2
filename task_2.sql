create table if not exists departments(
	department_id SERIAL PRIMARY KEY,
	name text);
	
create table if not exists employees(
	employee_id SERIAL primary key,
	name text,
	department_id INTEGER references departments (department_id)
);

create table if not exists managers(
	manager_id SERIAL primary key,
	employee_id INTEGER references employees(employee_id));
	
create table if not exists EmployeesManagers(
	EmployeeManager_id SERIAL primary key,
	employee_id INTEGER references employees(employee_id),
	manager_id INTEGER references managers(manager_id));