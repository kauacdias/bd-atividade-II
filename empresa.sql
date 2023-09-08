create database empresa;

use empresa;

create table empresa.Departamentos(
	DepartamentoID int auto_increment primary key,
    NomeDepartamento varchar(255) not null unique
);

create table empresa.Funcionarios(
	FuncionarioID int auto_increment primary key,
    Nome varchar(255) not null,
    Cargo varchar(255) not null,
    Salario float not null,
    DepartamentoID int not null,
    foreign key (DepartamentoID) references empresa.Departamentos(DepartamentoID)
);

insert into empresa.Departamentos(NomeDepartamento)
values ('Tecnologia');

insert into empresa.Departamentos(NomeDepartamento)
values ('Financeiro');

insert into empresa.Funcionarios(Nome, Cargo, Salario, DepartamentoID)
values ('Lucas', 'Dev Junior', '1200.99', 1);

insert into empresa.Funcionarios(Nome, Cargo, Salario, DepartamentoID)
values ('Pedro', 'Dev Pleno', '2400.99', 1);

insert into empresa.Funcionarios(Nome, Cargo, Salario, DepartamentoID)
values ('Ana', 'Dev Senior', '3600.99', 1);

insert into empresa.Funcionarios(Nome, Cargo, Salario, DepartamentoID)
values ('Vanessa', 'Diretor', '4800.99', 1);

insert into empresa.Funcionarios(Nome, Cargo, Salario, DepartamentoID)
values ('Kaique', 'Analista financeiro', '1200.29', 2);

insert into empresa.Funcionarios(Nome, Cargo, Salario, DepartamentoID)
values ('Kaio', 'Contador', '2200.19', 2);

select * from empresa.Departamentos;
select * from empresa.Funcionarios;