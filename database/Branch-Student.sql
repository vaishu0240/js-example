select * from branch_student;

create table branch_student(
	id int primary key,
	branch_id int,
	branch_name varchar(100),
	student_id int,
	student_name varchar(100)
);

insert into branch_student
values(1,1,'CSE',1,'Jay'),(2,2,'IT',1,'Sanjay'),(3,2,'IT',1,'Jay'),(4,1,'CSE',3,'Rajesh');

create table todo_app(
	name varchar(100),
	task varchar(100),
	category varchar(100),
	status varchar(100),
	due_date DATE
);

insert into todo_app
values ('Vasanth','Need to achieve 800 orders','operations','in-progress','sep 31st 21'),
	('jay','Train 5 interns','IT','in-progress','sep 31st 21'),
	('Sathish','Get trained in devops','IT','in-progress','sep 31st 21'),
	('Sathish','Get trained in hasura','operations','in-progress','sep 31st 21'),
	('Sathish','Get trained in hardware','operations','in-progress','sep 31st 21');

select 'name:'||name||',   task:'||task||',   category:'||category||',   status:'||status||',   due-date:'|| (TO_CHAR (due_date, 'Mon dd yyyy') )as result from todo_app;

create or replace view user_task_count as select name, count(*) from todo_app group by name;

select * from user_task_count;

alter table todo_app drop column due_date;

alter table todo_app add column due_date date;

update todo_app set due_date='2021-09-30';

select * from todo_app;

-- changes from vscode
select name,due_date from todo_app;