# Esercitazione DML

NB: Fai prima l'[esercitazione DDL](00_DDL.md)

---

**1. Inserimento record nelle tabelle "americhe", "africa" ed "europa":**  
- Per la tabella `americhe`, inserire i seguenti dati:  
  1. Stati Uniti, New York  
  2. Canada, Ottawa  
  3. Brasile, Brasilia  

- Per la tabella `africa`, inserire i seguenti dati:  
  1. Egitto, Il Cairo  
  2. Sudafrica, Port Elizabeth  
  3. Marocco, Rabat  

- Per la tabella `europa`, inserire i seguenti dati:  
  1. Italia, Roma  
  2. Francia, Lione  
  3. Germania, Berlino  

-- Scrivere un'istruzione `INSERT` unica per ciascuna tabella (tre query totali).  

insert into americhe(stato, capitale) values ('Stati Uniti','New York');
insert into americhe(stato, capitale) values ('Canada','Ottawa');
insert into americhe(stato, capitale) values ('Brasile','Brasilia');


insert into africa(stato, capitale) values ('Egitto', 'Il Cairo');
insert into africa(stato, capitale) values ('Sudafrica','Port Elizabeth');
insert into africa(stato, capitale) values ('Marocco', 'Rabat');


insert into europa(stato, capitale) values ('Italia', 'Roma');
insert into europa(stato, capitale) values ('Francia', 'Lione');
insert into europa(stato, capitale) values ('Germania', 'Berlino');


**2. Aggiornamento della capitale degli Stati Uniti:**  
Aggiorna il record relativo alla capitale degli Stati Uniti nella tabella `americhe` con il valore corretto: "Washington D.C.".

-- Scrivere l'istruzione SQL.

update americhe set capitale = 'Washington D.C.' where capitale = 'New York';


**3. Aggiornamento della capitale del Sudafrica:**  
Aggiorna il record relativo alla capitale del Sudafrica nella tabella `africa` con il valore corretto: "Città del Capo".

-- Scrivere l'istruzione SQL.

update africa set capitale = 'Sudafrica' where capitale = 'Città del capo';


**4. Aggiornamento della capitale della Francia:**  
Aggiorna il record relativo alla capitale della Francia nella tabella `europa` con il valore corretto: "Parigi".

-- Scrivere l'istruzione SQL.

update europa set capitale = 'Lione' where capitale = 'Parigi';


**5. Inserimento record nella tabella "libro":**  
Inserire i seguenti record nella tabella `libro` utilizzando un'unica istruzione `INSERT`:  
1.  

- Titolo: Marcovaldo  
- Prezzo: 13.00  
- Pagine: 204  
- Editore ID: 1  

2.  
   - Titolo: La coscienza di Zeno  
   - Prezzo: 14.00  
   - Pagine: 664  
   - Editore ID: 2  
3.  
   - Titolo: Furore  
   - Prezzo: 12.50  
   - Pagine: 478  
   - Editore ID: 1  
4.  
   - Titolo: Il Piccolo Principe  
   - Prezzo: 10.50  
   - Pagine: 124  
   - Editore ID: 1  

-- Scrivere l'istruzione SQL.

insert into libro (titolo, prezzo, pagine, id_editore) values ('Marcovaldo', '13.00', '204', '1');
insert into libro (titolo, prezzo, pagine, id_editore) values ('La coscienza di Zeno', '14.00', '664', '2');
insert into libro (titolo, prezzo, pagine, id_editore) values ('Furore', '12.50', '478', '1');
insert into libro (titolo, prezzo, pagine, id_editore) values ('Il Piccolo Principe', '10.50', '124', '1');


**6. Inserimento record nella tabella "clienti":**  
Inserire i seguenti record nella tabella `clienti` utilizzando un'unica istruzione `INSERT`:  

1.  

- Nome: Pippo  
- Cognome: Costanzo  
- Telefono: 3212345678  
- Email: <pippo.costanzo@gmail.com>  
- Provincia: TO  

2.  
   - Nome: Maria  
   - Cognome: Filippi  
   - Telefono: 3332345687  
   - Email: <maria.filippi@gmail.com>  
   - Provincia: MI  
3.  
   - Nome: Mario  
   - Cognome: Liberato  
   - Telefono: 3357000678  
   - Email: <mario.liberato@gicloud.com>  
   - Provincia: CN  
4.  
   - Nome: Grazia  
   - Cognome: Alcanto  
   - Telefono: 3212345678  
   - Email: <graziaalcanto@gmail.com>  
   - Provincia: MI  
5.  
   - Nome: Francesco  
   - Cognome: Franco  
   - Telefono: 3481112345  
   - Email: <franco.francesco@icloud.com>  
   - Provincia: MI  

-- Scrivere l'istruzione SQL.

insert into clienti (nome, cognome, telefono, email, provincia) values ('Pippo', 'Costanzo', '3212345678', 'pippo.costanzo@gmail.com', 'TO');
insert into clienti (nome, cognome, telefono, email, provincia) values ('Maria', 'Filippi', '3332345687', 'maria.filippi@gmail.com', 'MI');
insert into clienti (nome, cognome, telefono, email, provincia) values ('Mario', 'Liberato', '3357000678', 'mario.liberato@gicloud.com', 'CN');
insert into clienti (nome, cognome, telefono, email, provincia) values ('Grazia', 'Alcanto', '3212345678', 'graziaalcanto@gmail.com', 'MI');
insert into clienti (nome, cognome, telefono, email, provincia) values ('Francesco', 'Franco', '3481112345', 'franco.francesco@icloud.com', 'MI');


**7. Aggiornamento della provincia nella tabella "clienti":**  
Aggiorna il campo `provincia` con il valore "AL" per tutti i clienti nella tabella `clienti` la cui provincia attuale è "MI".  

-- Scrivere l'istruzione SQL.

update clienti set provincia = 'AL' where provincia = 'MI';


**8. Eliminazione record nella tabella "clienti":**  
Cancella dalla tabella `clienti` tutti i record in cui il campo `provincia` ha il valore "AL".  

-- Scrivere l'istruzione SQL.

delete from clienti where provincia = 'AL';