select * from pokemon;

-- Esegui le seguenti quey:

-- 1. Recuperare tutti i Pokémon con il tipo principale "Fire":
      select * from pokemon where `Type 1` = 'Fire';

-- 2. Selezionare il nome e il tipo principale dei Pokémon con una velocità superiore a 100:
      select `name`, `type 1` from pokemon where speed > 100;

-- 3. Contare quanti Pokémon sono considerati "Legendary":
      select count(`Legendary`) from pokemon where Legendary = 'true'; 

-- 4. Recuperare i Pokémon con attacco superiore a 120 e difesa superiore a 100:
	  select * from pokemon where Attack > 120 and Defense > 100;

-- 5. Ottenere tutti i Pokémon della prima generazione:
      select * from pokemon where Generation = 1;

-- 6. Mostrare i nomi e il totale di statistiche dei Pokémon ordinati per valore totale in ordine decrescente:
      select `name`, `total` from pokemon order by total desc;

-- 7. Mostrare i Pokémon che hanno entrambi i tipi "Grass" e "Poison"
      select * from pokemon where `type 1` = "grass" and `type 2` = "poison";

-- 8. Recuperare i Pokémon con punti salute (HP) inferiori a 50, ordinati per HP in ordine crescente:
      select * from pokemon where HP < 50 order by HP asc;

-- 9. Trovare i Pokémon con il valore totale pari o superiore a 500, ordinati per tipo principale e poi per nome:
      select * from pokemon where `total` >= 500 order by `type 1` and `name`;

-- 10. Ottenere tutti i Pokémon di tipo principale "Water" con una velocità superiore a 80:
       select * from pokemon where `type 1` = "water" and `speed` >80;

-- 11. Visualizzare i tre Pokémon con il valore di difesa più alto:
       select * from pokemon order by `defense` desc limit 3;  

-- 12. Recuperare il nome e il tipo principale dei Pokémon che hanno un attacco maggiore della loro difesa:
       select `name`, `type 1` from pokemon where Attack > Defense;

-- 13. Ottenere i Pokémon di tipo "Dragon" che appartengono alla terza generazione:
       select * from pokemon where `type 1` = "dragon" and `generation` = 3;

-- 14. Visualizzare i Pokémon non leggendari che hanno una velocità massima tra 80 e 100:
       select * from pokemon where `legendary` = false and `speed` between 80 and 100;

-- 15. Trovare i Pokémon con il minor valore totale tra quelli della prima generazione con entrambi i tipi definiti (Type 1 e Type 2 non NULL):
	select * from pokemon where `Generation` = 1 and `type 1` is not null and `type 2` is not null order by `total` asc limit 1;

-- 16. Trovare i 5 Pokémon con il miglior rapporto Attacco/Difesa:
       select * from pokemon order by (`Attack` / `Defense`) desc limit 5; 

-- 17. Ottenere i Pokémon con il valore totale più alto per ogni generazione:
       select generation, max(total) as total from pokemon group by generation order by total;

-- 18. Calcolare la media di attacco per ogni tipo principale:
       select `type 1`, avg(`attack`) as avg_attack from pokemon group by `type 1`; 

-- 19. Contare i Pokémon per ogni generazione:
       select generation, count(*) as pokemon from pokemon group by generation;

-- 20. Contare quanti Pokémon ci sono per ogni combinazione di tipo principale e secondario:
       select count(*) as pokemon, `type 1`, `type 2` from pokemon group by`type 1`, `type 2`;

-- 21. Calcolare il valore medio di HP, Attacco e Difesa per Pokémon leggendari e non leggendari:
       select `Legendary`, avg(`HP`) as media_HP, avg(`Attack`) as media_Attack, avg(`Defense`) as media_Defense from pokemon group by `Legendary`;

-- 22. Creare una tabella virtuale con tutti i possibili tipi distinti (combinazioni di Type 1 e Type 2) e il numero di Pokémon per ciascuna combinazione:
       select `type 1`, `type 2`, count(*) as numero_pokemon from pokemon group by `type 1`, `type 2`;

-- 23. Trovare i Pokémon leggendari con il massimo valore di ogni statistica (HP, Attack, Defense, Sp. Atk, Sp. Def, Speed):
       select `Name`, `Type 1`, `Type 2`, max(`HP`), max(`Attack`), max(`Defense`), max(`Sp. Atk`), max(`Sp. Def`), max(`Speed`) from pokemon where Legendary = "true" group by `Name`, `Type 1`, `Type 2`;

-- 24. Creare un elenco di Pokémon raggruppati per generazione, calcolando il totale complessivo delle statistiche per ciascuna generazione:
       select Generation, sum(total) as Somma_TOT from pokemon group by Generation;

-- 25. Contare il numero di Pokémon leggendari e non leggendari per ciascun tipo principale:
       select `Type 1`, count(case when `Legendary` = 'true' then 1 end) as leggendari, count(case when `Legendary` = 'false' then 1 end) as non_leggendari from pokemon group by `Type 1`;

-- 26. Creare una classifica per tipo principale (Type 1) basata sulla media di attacco dei Pokémon di quel tipo:
       select `type 1`, avg(`attack`) as media_attacco from pokemon group by `type 1` order by media_attacco desc;

-- 27. Creare un elenco con il numero di Pokémon per ciascuna combinazione di generazione e stato leggendario, ordinato per generazione e numero di Pokémon:
      select `generation`, `legendary`, count(*) as numero_pokemon from pokemon group by `generation`, `legendary` order by `generation`, numero_pokemon desc;

-- 28. Elencare tutti i Pokémon con il valore totale massimo per ogni combinazione di tipo principale (Type 1) e secondario (Type 2):
       select pokemon.* from pokemon inner join (select `type 1`, `type 2`, max(`total`) as massimo_totale from pokemon group by `type 1`, `type 2`) AS subquery on pokemon.`type 1` = subquery.`type 1` and pokemon.`type 2` = subquery.`type 2` and pokemon.`total` = subquery.massimo_totale;
       
-- 29. Mostrare i Pokémon con velocità superiore alla media della tabella:
	   select * from pokemon where `speed` > (select avg(`speed`) from pokemon);

-- 30. Elencare tutti i Pokémon con una velocità maggiore della media per il loro tipo principale (Type 1):
       select pokemon.* from pokemon inner join (select `type 1`, avg(`speed`) as media_velocita from pokemon group by `type 1`) as media_per_tipo on pokemon.`type 1` = media_per_tipo.`type 1` and pokemon.`speed` > media_per_tipo.media_velocita;

