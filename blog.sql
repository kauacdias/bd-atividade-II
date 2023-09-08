create database Blog;

use Blog;

create table Blog.Artigos(
	ArtigoID int auto_increment primary key,
    Titulo varchar(255) not null, 
    Conteudo varchar(255) not null, 
    DataPublicacao date not null
);

create table Blog.Comentarios(
	ComentarioID int auto_increment primary key,
    ArtigoID int not null,
    Autor varchar(255) not null,
    Texto varchar(255) not null,
    DataComentario date not null,
	foreign key (ArtigoID) references Blog.Artigos(ArtigoID)
);

insert into Blog.Artigos(Titulo, Conteudo, DataPublicacao) 
values ('MySQL', 'Uso do MySQL para construção de Banco de dados', '2023-09-07');

insert into Blog.Comentarios(ArtigoID, Autor, Texto, DataComentario)
values (1, 'Kaua', 'XXXXXXXXXXXXXXXXX', '2023-09-08');

insert into Blog.Artigos(Titulo, Conteudo, DataPublicacao) 
values ('Java', 'Uso da linguagem JAVA no ensino de POO', '2023-09-01');

insert into Blog.Comentarios(ArtigoID, Autor, Texto, DataComentario)
values (2, 'Lucas', 'XXXXXXXXXXXXXXXXX', '2023-09-03');

insert into Blog.Artigos(Titulo, Conteudo, DataPublicacao) 
values ('Programação', 'Importância da programação no século XXI', '2023-10-01');

insert into Blog.Comentarios(ArtigoID, Autor, Texto, DataComentario)
values (3, 'Nicolas', 'XXXXXXXXXXXXXXXXX', '2023-10-03');

insert into Blog.Artigos(Titulo, Conteudo, DataPublicacao) 
values ('MariaDB', 'Uso do MariaDB', '2023-11-01');

insert into Blog.Comentarios(ArtigoID, Autor, Texto, DataComentario)
values (4, 'Naiara', 'XXXXXXXXXXXXXXXXX', '2023-11-08');

insert into Blog.Artigos(Titulo, Conteudo, DataPublicacao) 
values ('Curso técnico do SENAI', 'Avaliação sobre o curso técnico em desenvolvimento de sistemas', '2023-12-01');

insert into Blog.Comentarios(ArtigoID, Autor, Texto, DataComentario)
values (5, 'Kaua', 'XXXXXXXXXXXXXXXXX', '2023-12-02');

insert into Blog.Comentarios(ArtigoID, Autor, Texto, DataComentario)
values (5, 'Bruno', 'XXXXXXXXXXXXXXXXX', '2023-12-02');

select * from Blog.Artigos;
select * from Blog.Comentarios;

