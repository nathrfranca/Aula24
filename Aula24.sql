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
values('Miguel','2022-03-01','14:00','1'),
('Henry','2022-08-31','13:19','27'),

select * from Mae;
select * from Bebe;

select m.nome, b.nome, b.data_de_nascimento from Mae m, Bebe b
where b.data_de_nascimento <= '2022-05-30' and b.data_de_nascimento >= '2022-05-01';