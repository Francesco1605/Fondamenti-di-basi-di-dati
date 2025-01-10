/*
-- creazione della tabella 'automobili':
CREATE TABLE automobili (
id INT auto_increment primary key,
marca varchar(50),
modello varchar(50),
cilindrata int,
posti int,
prezzo decimal(10, 2)
);
*/
/*
-- Inserimento di 20 righe di dati fake:
insert into automobili (marca, modello, cilindrata, posti, prezzo) values
('Fiat', 'Panda', 1200, 5, 13000.00),
('Ford', 'Focus', 1500, 5, 20000.00),
('Volkswagen', 'Golf', 1600, 5, 25000.00),
('Toyota', 'Yaris', 1000, 5, 15000.00),
('BMW', 'Serie 3', 2000, 5, 35000.00),
('Mercedes', 'Classe A', 1800, 5, 33000.00),
('Audi', 'A4', 2000, 5, 36000.00),
('Renault', 'Clio', 1200, 5, 14000.00),
('Peugeot', '208', 1300, 5, 16000.00),
('Kia', 'Sportage', 1700, 5, 27000.00),
('Hyundai', 'Tucson', 1800, 5, 28000.00),
('Jeep', 'Renegade', 1400, 5, 22000.00),
('Honda', 'Civic', 1500, 5, 24000.00),
('Nissan', 'Qashqai', 1600, 5, 26000.00),
('Mazda', 'CX-5', 2000, 5, 32000.00),
('Volvo', 'XC40', 2000, 5, 40000.00),
('Tesla', 'Model 3', 0, 5, 45000.00),
('Chevrolet', 'Spark', 1200, 4, 11000.00),
('Suzuki', 'Swift', 1300, 5, 14000.00),
('Subaru', 'Outback', 2500, 5, 35000.00);
*/
/*
-- Inserimento di altre 20 righe di dati fake con marche ripetute e modelli diversi:
insert into automobili (marca, modello, cilindrata, posti, prezzo) values
('Fiat', 'Tipo', 1400, 5, 18000.00),
('Ford', 'Kuga', 2000, 5, 30000.00),
('Volkswagen', 'Passat', 2000, 5, 35000.00),
('Toyota', 'Corolla', 1500, 5, 20000.00),
('BMW', 'Serie 1', 1500, 5, 28000.00),
('Mercedes', 'GLA', 2000, 5, 38000.00),
('Audi', 'Q3', 1600, 5, 34000.00),
('Renault', 'Captur', 1300, 5, 21000.00),
('Peugeot', '3008', 1600, 5, 29000.00),
('Kia', 'Ceed', 1500, 5, 20000.00),
('Hyundai', 'i20', 1200, 5, 15000.00),
('Jeep', 'Compass', 1600, 5, 30000.00),
('Honda', 'HR-V', 1800, 5, 26000.00),
('Nissan', 'X-Trail', 2000, 5, 33000.00),
('Mazda', 'Mazda3', 1500, 5, 23000.00),
('Volvo', 'XC60', 2400, 5, 50000.00),
('Tesla', 'Model Y', 0, 5, 55000.00),
('Chevrolet', 'Trax', 1400, 5, 17000.00),
('Suzuki', 'Vitara', 1600, 5, 20000.00),
('Subaru', 'Forester', 2000, 5, 34000.00);
*/

-- selezionare tutte le auto nella tabella:
select * from automobili;

-- visualizzare solo marca, modello e prezzo di tutte le auto:
select marca, modello, prezzo from automobili;

-- trovare tutte le auto con prezzo inferiore a 20.000 euro:
select prezzo from automobili where prezzo < 20000.00;

-- selezionare le auto con solo 5 posti disponibili:
select * from automobili where posti = 5;

-- ordinare le auto in base al prezzo in ordine decrescente:
select * from automobili order by prezzo desc;

-- calcolare la media del prezzo delle auto:
select avg(prezzo) as media_prezzo from automobili;

-- calcolare quante auto hanno una cilindrata superiore a 1600cc:
select count(*) as auto_grandi_cilindrata from automobili where cilindrata > 1600;

-- elencare tutte le marche presenti nella tabella senza duplicati:
select distinct marca from automobili;

-- trovare la marca e il modello dell'auto più costosa:
select marca, modello, prezzo from automobili order by prezzo desc limit 1;

-- trovare tutte le auto con un prezzo tra 20.000 e 30.000 euro:
select * from automobili where prezzo between 20000 and 30000;

