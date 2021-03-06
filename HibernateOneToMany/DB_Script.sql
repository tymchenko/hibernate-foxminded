--<ScriptOptions statementTerminator=";"/>

drop table if exists training.department;
CREATE TABLE training.department (
	department_id BIGINT PRIMARY KEY ,
	dept_name VARCHAR(50) NOT NULL DEFAULT '0'
	
);


drop table if exists training.employee;

CREATE TABLE training.employee (
	employee_id BIGINT PRIMARY KEY,
	firstname VARCHAR(50) NULL DEFAULT NULL,
	lastname VARCHAR(50) NULL DEFAULT NULL,
	birth_date DATE NULL DEFAULT NULL,
	cell_phone VARCHAR(15) NULL DEFAULT NULL,
	department_id BIGINT references training.department(department_id)
);

create sequence training.hibernate_sequences;
create sequence training.hibernate_sequence;

