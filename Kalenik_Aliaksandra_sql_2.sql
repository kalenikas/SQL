<<<<<<< HEAD
--Создать таблицу employees
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
select * from employees;
--Наполнить таблицу employee 70 строками
insert into employees(employee_name)
values  ('Kalenik Alexandra'),
		('Ivanov Ivan'),
		('Petrov Petr'),
		('Sidorov Dmitrii'),
		('Kuznecova Olga'),
		('Sirnikova Ekaterina'),
		('Korzun Arsenii'),
		('Kopach Vyacheslav'),
		('Kuzmin _Maria'),
		('Savin Pavel'),
		('Horoneko Alisa'),
		('Bernatskii Timofei'),
		('Petrov Valeriy'),
		('Barkun Tatsiana'),
		('Kotok Alexandra'),
		('Nosevich Andrei'),
		('Mukasei Elena'),
		('Lisaya Natalia'),
		('Budenniy Vladislav'),
		('Novikova Alesya'),
		('Shumskii Anton'),
		('Goroshina Ekaterina'),
		('Korovina Elena'),
		('Gapeeva Olga'),
		('Pashukevich_Alexsandr'),
		('Dubinina_Marina'),
		('Patap Mihail'),
		('Misechko Pavel'),
		('Bazueva Tatsiana'),
		('Dubovskaya Anastasia'),
		('Shukan Alisa'),
		('Podrez Pavel'),
		('Moroz Egor'),
		('Odnovol Daria'),
		('Zhuk Nikita'),
		('Avdeenko Kirill'),
		('Teplyakova Viktoriya'),
		('Osipenko Ura'),
		('Minko Maksim'),
		('Logina Vera'),
		('Suvorov Yaroslav'),
		('Voronov Eduard'),
		('Ovchinnikov Zahar'),
		('Butko Matvei'),
		('Voroncov Alexandr'),
		('Nikolaeva Inga'),
		('Borisova Snezhana'),
		('Dudko Alexei'),
		('Bobrov Pavel'),
		('Ignatovich Matvei'),
		('Mazurov Mihail'),
		('Melanich Natalia'),
		('Kononik Svetlana'),
		('Kurilovich Stepan'),
		('Popov Roman'),
		('Petrenko Nikolai'),
		('Rozum Gleb'),
		('Malishko Maria'),
		('Zhukov Stanislav'),
		('Lukashevich Ilya'),
		('Nikiforov Nikita'),
		('Yaremenko Olga'),
		('Koroza Elizaveta'),
		('Basalai Alexandr'),
		('Chumak Pavel'),
		('Savchenko Oksana'),
		('Anikeev Viktor'),
		('Lobanov Semen'),
		('Borisov Boris'),
		('Varlamov Ivan');

--Создать таблицу salary
create table salary(
	id serial primary key,
	monthly_salary int not null
);
select * from salary;
--Наполнить таблицу salary 15 строками:
insert into salary(monthly_salary)
values 	(1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2500);

--Создать таблицу employee_salary
create table employee_salary(
	id serial primary key,
	employee_id int unique not null ,
	salary_id int not null
	--foreign key(employee_id)
		--references employees(id),
	--foreign key(salary_id)
		--references salary(id)
);
select * from employee_salary;
insert into employee_salary(employee_id,salary_id)
values 	(3,7),
		(1,4),
		(5,9),
		(40,13),
		(23,4),
		(11,2),
		(52,10),
		(15,13),
		(26,4),
		(16,1),
		(33,7),
		(2,3),
		(9,15),
		(18,5),
		(48,14),
		(63,6),
		(25,12),
		(10,8),
		(27,11),
		(44,1),
		(17,7),
		(21,4),
		(35,9),
		(49,13),
		(29,4),
		(8,2),
		(58,10),
		(12,13),
		(62,4),
		(70,1),
		(71,7),
		(72,3),
		(73,15),
		(74,5),
		(75,14),
		(76,6),
		(77,12),
		(78,8),
		(79,11),
		(80,1);

--Создать таблицу roles
create table roles(
	id serial primary key,
	role_name int not null unique
);
select * from roles;
--Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30) using role_name::int;
--Наполнить таблицу roles 20 строками
insert into roles(role_name)
values 	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

--Создать таблицу roles_employee
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
	references employees(id),
	foreign key(role_id)
		references roles(id)
);
select * from roles_employee;
--Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id,role_id)
values 	(3,7),
		(1,4),
		(5,9),
		(40,13),
		(23,4),
		(11,2),
		(52,10),
		(15,13),
		(26,4),
		(16,1),
		(33,7),
		(2,3),
		(9,15),
		(18,5),
		(48,14),
		(63,6),
		(25,12),
		(10,8),
		(27,11),
		(44,20),
		(17,7),
		(22,16),
		(35,9),
		(49,19),
		(29,4),
		(8,17),
		(58,10),
		(12,18),
		(62,4),
		(60,1),
		(21,7),
		(32,3),
		(43,15),
		(54,5),
		(65,14),
		(20,6),
		(37,12),
		(47,8),
		(59,11),
		(69,1);
	









=======
--Создать таблицу employees
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
select * from employees;
--Наполнить таблицу employee 70 строками
insert into employees(employee_name)
values  ('Kalenik Alexandra'),
		('Ivanov Ivan'),
		('Petrov Petr'),
		('Sidorov Dmitrii'),
		('Kuznecova Olga'),
		('Sirnikova Ekaterina'),
		('Korzun Arsenii'),
		('Kopach Vyacheslav'),
		('Kuzmin _Maria'),
		('Savin Pavel'),
		('Horoneko Alisa'),
		('Bernatskii Timofei'),
		('Petrov Valeriy'),
		('Barkun Tatsiana'),
		('Kotok Alexandra'),
		('Nosevich Andrei'),
		('Mukasei Elena'),
		('Lisaya Natalia'),
		('Budenniy Vladislav'),
		('Novikova Alesya'),
		('Shumskii Anton'),
		('Goroshina Ekaterina'),
		('Korovina Elena'),
		('Gapeeva Olga'),
		('Pashukevich_Alexsandr'),
		('Dubinina_Marina'),
		('Patap Mihail'),
		('Misechko Pavel'),
		('Bazueva Tatsiana'),
		('Dubovskaya Anastasia'),
		('Shukan Alisa'),
		('Podrez Pavel'),
		('Moroz Egor'),
		('Odnovol Daria'),
		('Zhuk Nikita'),
		('Avdeenko Kirill'),
		('Teplyakova Viktoriya'),
		('Osipenko Ura'),
		('Minko Maksim'),
		('Logina Vera'),
		('Suvorov Yaroslav'),
		('Voronov Eduard'),
		('Ovchinnikov Zahar'),
		('Butko Matvei'),
		('Voroncov Alexandr'),
		('Nikolaeva Inga'),
		('Borisova Snezhana'),
		('Dudko Alexei'),
		('Bobrov Pavel'),
		('Ignatovich Matvei'),
		('Mazurov Mihail'),
		('Melanich Natalia'),
		('Kononik Svetlana'),
		('Kurilovich Stepan'),
		('Popov Roman'),
		('Petrenko Nikolai'),
		('Rozum Gleb'),
		('Malishko Maria'),
		('Zhukov Stanislav'),
		('Lukashevich Ilya'),
		('Nikiforov Nikita'),
		('Yaremenko Olga'),
		('Koroza Elizaveta'),
		('Basalai Alexandr'),
		('Chumak Pavel'),
		('Savchenko Oksana'),
		('Anikeev Viktor'),
		('Lobanov Semen'),
		('Borisov Boris'),
		('Varlamov Ivan');

--Создать таблицу salary
create table salary(
	id serial primary key,
	monthly_salary int not null
);
select * from salary;
--Наполнить таблицу salary 15 строками:
insert into salary(monthly_salary)
values 	(1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2500);

--Создать таблицу employee_salary
create table employee_salary(
	id serial primary key,
	employee_id int unique not null ,
	salary_id int not null
	--foreign key(employee_id)
		--references employees(id),
	--foreign key(salary_id)
		--references salary(id)
);
select * from employee_salary;
insert into employee_salary(employee_id,salary_id)
values 	(3,7),
		(1,4),
		(5,9),
		(40,13),
		(23,4),
		(11,2),
		(52,10),
		(15,13),
		(26,4),
		(16,1),
		(33,7),
		(2,3),
		(9,15),
		(18,5),
		(48,14),
		(63,6),
		(25,12),
		(10,8),
		(27,11),
		(44,1),
		(17,7),
		(21,4),
		(35,9),
		(49,13),
		(29,4),
		(8,2),
		(58,10),
		(12,13),
		(62,4),
		(70,1),
		(71,7),
		(72,3),
		(73,15),
		(74,5),
		(75,14),
		(76,6),
		(77,12),
		(78,8),
		(79,11),
		(80,1);

--Создать таблицу roles
create table roles(
	id serial primary key,
	role_name int not null unique
);
select * from roles;
--Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30) using role_name::int;
--Наполнить таблицу roles 20 строками
insert into roles(role_name)
values 	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

--Создать таблицу roles_employee
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
	references employees(id),
	foreign key(role_id)
		references roles(id)
);
select * from roles_employee;
--Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id,role_id)
values 	(3,7),
		(1,4),
		(5,9),
		(40,13),
		(23,4),
		(11,2),
		(52,10),
		(15,13),
		(26,4),
		(16,1),
		(33,7),
		(2,3),
		(9,15),
		(18,5),
		(48,14),
		(63,6),
		(25,12),
		(10,8),
		(27,11),
		(44,20),
		(17,7),
		(22,16),
		(35,9),
		(49,19),
		(29,4),
		(8,17),
		(58,10),
		(12,18),
		(62,4),
		(60,1),
		(21,7),
		(32,3),
		(43,15),
		(54,5),
		(65,14),
		(20,6),
		(37,12),
		(47,8),
		(59,11),
		(69,1);
	









>>>>>>> 0805a567c28ecc684c3108e1092816d15d290618
