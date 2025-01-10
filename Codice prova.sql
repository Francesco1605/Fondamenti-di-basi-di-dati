use fondamenti;

drop table prova;

create table prova(
id int not null primary key auto_increment, 
nome varchar(30),
cognome varchar(30)
);

-- CRUD:
-- CREATE
insert into prova (id, nome, cognome) values (1, 'francesco', 'castiglione');
insert into prova (nome, cognome) values ('mario', 'rossi');

-- READ - RETRIEVE
insert into prova (nome, cognome)
select (nome, cognome) from studenti;

create table studenti_bkp like studenti;

insert into studenti_bkp select * from studenti;