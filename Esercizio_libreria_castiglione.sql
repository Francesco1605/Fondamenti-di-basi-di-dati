SELECT * FROM libro;

select * from editore;

select * 
from libro
inner join editore on libro.editore_id = editore.id
order by libro.id;

truncate table libro;

INSERT INTO `libro` VALUES (1,'Alchimista (L\')',12.00,10,1),(2,'Cinquanta sfumature di grigio',10.20,560,1),(3,'Dieci piccoli indiani',10.20,208,1),(4,'Don Chisciotte della Mancha',20.40,NULL,3),(5,'Harry Potter e la Pietra Filosofale',8.50,302,4),(6,'Il Codice da Vinci',11.00,512,1),(7,'Il giovane Holden',10.20,251,3),(8,'Il leone, la strega e l\'armadio',7.65,182,1),(9,'Il libretto rosso',7.22,160,5),(10,'Il Piccolo Principe',4.25,95,1),(11,'Il Signore degli Anelli: La compagnia dell\'anello. Le due torri. Il ritorno del re',25.00,1255,10),(12,'Il sogno della camera rossa. Romanzo cinese del XVIII secolo',15.30,721,3),(13,'La colonna di fuoco',27.00,912,1),(14,'La donna della domenica',12.00,434,1),(15,'Lo Hobbit',9.35,417,10),(16,'Macerie prime',14.45,192,6),(17,'Origin',21.25,564,1),(18,'Quel che resta del giorno',12.00,276,3),(19,'Un mese con Montalbano',12.75,512,7),(20,'Una storia tra due citt├á',9.77,600,10),(21,'Marcovaldo',10.00,120,7),(22,'IT',25.00,550,9),(23,'gomorra',12.59,345,1);
alter table libro
add constraint fk_libro_editore 
foreign key libro(editore_id) 
references editore(id) 
on delete cascade;

alter table libro 
drop constraint fk_libro_editore;

-- Tabella virtuale (VIEW):
create view titoli_editori as
select l.titolo as "Titolo del libro", e.nome as "Editore collegato"
from libro as l
join editore as e on l.editore_id = e.id
;

select * from titoli_editori
where `Editore collegato` like 's%'
order by `Titolo del libro`
;

alter table autore_libro
add constraint fk_libro
foreign key autore_libro(autore_id)
references autore(id);

alter table autore_libro
add constraint fk_autore
foreign key autore_libro(autore_id)
references autore(id);

select * from autore_libro;