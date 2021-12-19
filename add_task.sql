create table if not exists department (
id serial primary key,
department_name varchar(40) not null,
manager_name varchar(40) not null);

create table if not exists employee (
id serial primary key,
employee_name varchar(40) not null,
department_id integer references department(id));

