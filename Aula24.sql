create database Maternidade;

create table Mae(
	id int primary key identity,
	nome varchar(45) not null,
);

create table Bebe(
	id int primary key identity,
	nome varchar(45) not null,
	data_de_nascimento date not null,
	hora_de_nascimento time not null,
	id_mae int not null,

	CONSTRAINT FK_Mae_Bebe FOREIGN KEY (id_mae) REFERENCES Mae(id)
);

insert into Mae(nome)
values('Helena'),
('Alice'),
('Laura'),
('Manuela'),
('Valentina'),
('Sophia'),
('Isabella'),
('Helo�sa'),
('Luiza'),
('J�lia'),
('Lorena'),
('L�via'),
('Maria Luiza'),
('Cec�lia'),
('Elo�'),
('Giovanna'),
('Maria Clara'),
('Maria Eduarda'),
('Mariana'),
('Lara'),
('Beatriz'),
('Antonella'),
('Maria J�lia'),
('Emanuelly'),
('Isadora'),
('Ana Clara'),
('Melissa'),
('Ana Luiza');

insert into Bebe(nome, data_de_nascimento, hora_de_nascimento, id_mae)
values('Miguel','2022-03-01','14:00','1'),('Arthur','2022-03-27','01:00','2'),('Th�o','2022-03-29','05:47','3'),('Heitor','2022-04-05','02:00','4'),('Gael','2022-04-05','02:00','5'),('Davi','2022-04-05','02:00','6'),('Bernardo','2022-05-06','08:00','7'),('Gabriel','2022-05-15','09:00','8'),('Ravi','2022-07-12','12:00','9'),('Noah','2022-07-24','16:00','10'),('Samuel','2022-07-25','16:00','11'),('Pedro','2022-07-26','10:00','12'),('Ben�cio','2022-07-29','17:42','13'),('Benjamin','2022-07-29','18:11','14'),('Matheus','2022-08-01','11:11','15'),('Isaac','2022-08-01','11:11','15'),('Anthony','2022-08-05','11:12','16'),('Joaquim','2022-08-12','05:22','17'),('Lucas','2022-08-12','08:29','18'),('Lorenzo','2022-08-27','08:31','19'),('Rafael','2022-08-27','13:14','20'),('Nicolas','2022-09-28','13:16','21'),('Henrique','2022-08-30','19:01','22'),('Murilo','2022-08-30','23:59','23'),('Jo�o Miguel','2022-08-31','23:40','24'),('Lucca','2022-08-31','23:12','25'),('Guilherme','2022-08-31','10:12','26'),
('Henry','2022-08-31','13:19','27'),('Bryan','2022-08-31','12:57','28');

select * from Mae;
select * from Bebe;

select m.nome, b.nome, b.data_de_nascimento from Mae m, Bebe b
where b.data_de_nascimento <= '2022-05-30' and b.data_de_nascimento >= '2022-05-01';