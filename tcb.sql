create database veterinaria;
use veterinaria;

create table CLIENTE(
id_cliente int not null auto_increment primary key,
Nome varchar(100) not null,
CPF varchar(11) not null,
Telefone varchar(13) not null,
Email varchar(100) not null,
Endereco varchar(200)
);

create table PET(
id_Pet int not null auto_increment primary key,
Nome varchar(50) not null,
Especie varchar(50) not null,
Raca varchar(50),
data_nascimento DATE,
Idade_estimada int not null,
unidade_idade varchar(10) not null,
Sexo varchar(10) not null,
Peso_estimado double



