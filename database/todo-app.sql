create table todo_application(
 id int primary key,
 user_id int references user_table(id),
 cat_id int references category_table(id) ,
 status_id int references  status_table(id),
 due_date DATE,
 task varchar(255)
);

alter table todo_application drop column id;
alter table todo_application add column id int primary key;

insert into todo_application values(1,1,1,1,'2021-09-30','task1');
insert into todo_application values(2,2,2,2,'2021-09-30','task2');
insert into todo_application values(3,3,2,2,'2021-09-30','task3');
insert into todo_application values(4,3,2,2,'2021-09-30','task4');
insert into todo_application values(5,3,2,2,'2021-09-30','task4');

update todo_application set task = 'Need to achieve 800 orders'  where id=1;
update todo_application set task = 'Train 5 interns'  where id=2;
update todo_application set task = 'Get trained in devops'  where id=3;
update todo_application set task = 'Get trained in hasura'  where id=4;
update todo_application set task = 'Get trained in Hardware'  where id=5;

create view todo_list as
select 'Name: '|| ut.name || ',  Task: ' || task || ',  Category: '|| ct.name || ',  Status: '|| st.name||',  Due-Date: '||(to_char(due_date,'Mon DD YYYY'))
from todo_application todo 
join user_table ut on todo.user_id = ut.id
join category_table ct on todo.cat_id = ct.id
join status_table st on todo.status_id = st.id;

select * from todo_list;

create view user_task_count as
select ut.name ,count(*) from todo_application todo join user_table ut on todo.user_id = ut.id  group by ut.name;

select * from user_task_count;

create table user_table(
  id int primary key,
  name varchar(200)
);
insert into user_table values(1,'Vasanth'),(2,'Jay'),(3,'Sathish');
select * from user_table;

create table category_table(
 id int primary key,
 name varchar(200)
);
insert into category_table values(1,'Operation'),(2,'IT');
select * from category_table;

create table status_table(
  id int primary key,
  name varchar(200)
);
insert into status_table values(1,'Completed'),(2,'In-progress'),(3,'Pending');
select * from status_table;

