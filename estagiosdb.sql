create database if not exists estagiosdb;
use estagiosdb;

SET FOREIGN_KEY_CHECKS=1;
drop table if exists turmas;
drop table if exists alunos;
drop table if exists entidades;
drop table if exists estagios;

create table turmas
(
	id Int Primary Key Auto_increment,
	descricao varchar(100) not null
);

create table alunos
(
	id Int Primary Key Auto_increment,
	turmaId int not null,
	Foreign Key (turmaId) REFERENCES turmas(id),
	nr varchar(7) not null,
	nome varchar(100) not null,
	nome_abreviado varchar(100) not null,
	morada varchar(500) not null,
	cod_postal varchar(40) not null,
	cartao_cidadao varchar(20) not null,
	validade_cc date not null,
	nif varchar(20) not null
);

create table entidades
(
	id Int Primary Key Auto_increment,
	nome varchar(200) not null,
	morada varchar(500) not null,
	cod_postal varchar(40) not null,
	nif varchar(20) not null,
	pessoa_responsavel varchar(200) not null,
	cargo_pessoa_responsavel varchar(200) not null
);

create table estagios
(
	id Int Primary Key Auto_increment,
	alunoId int not null,
	Foreign Key (alunoId) REFERENCES alunos(id),
	entidadeId int not null,
	Foreign Key (entidadeId) REFERENCES entidades(id),
	data_inicio date not null,
	data_fim date not null,
	morada varchar(500) not null,
	cod_postal varchar(40) not null,	
	tutor varchar(200) not null,
	email_tutor varchar(100) not null,
	orientador varchar(100) not null
);

SET FOREIGN_KEY_CHECKS=0;  

