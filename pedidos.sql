create database Entregas;

use Entregas;

create table Entregas.Clientes (
	ClienteID int auto_increment primary key,
    Nome varchar(255) not null,
    Email varchar(255) not null unique,
    Telefone varchar(22) not null
);

create table Entregas.Pedidos(
	PedidoID int auto_increment primary key,
    ClienteID int not null,
    DataPedido date not null,
    ValorTotal float not null,
    foreign key (ClienteID) references Entregas.Clientes(ClienteID)   
);

insert into Entregas.Clientes(Nome, Email, Telefone)
values ('Jorge Vitor', 'jorge@amazon.com', '(71)981229902');

insert into Entregas.Pedidos(ClienteID, DataPedido, ValorTotal)
values (1, '2023-09-01', '71.22');

insert into Entregas.Clientes(Nome, Email, Telefone)
values ('Lucas', 'lucas@amazon.com', '(71)991227702');

insert into Entregas.Pedidos(ClienteID, DataPedido, ValorTotal)
values (2, '2023-09-02', '22.12');

insert into Entregas.Clientes(Nome, Email, Telefone)
values ('Marcos', 'marcos@amazon.com', '(71)921221029');

insert into Entregas.Pedidos(ClienteID, DataPedido, ValorTotal)
values (3, '2023-09-02', '13.00');

insert into Entregas.Clientes(Nome, Email, Telefone)
values ('Kaua', 'kaua@amazon.com', '(71)912123449');

insert into Entregas.Pedidos(ClienteID, DataPedido, ValorTotal)
values (4, '2023-09-02', '10.00');

insert into Entregas.Clientes(Nome, Email, Telefone)
values ('Daniel', 'daniel@amazon.com', '(71)991292919');

insert into Entregas.Pedidos(ClienteID, DataPedido, ValorTotal)
values (5, '2023-09-02', '44.10');

select * from Entregas.Clientes;
select * from Entregas.Pedidos;




