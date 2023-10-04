SELECT name FROM pizzeria
WHERE id IN (SELECT id 
FROM pizzeria 
EXCEPT SELECT pizzeria_id 
FROM person_visits);

SELECT name FROM pizzeria
WHERE EXISTS(SELECT id 
FROM (SELECT id 
FROM pizzeria
EXCEPT  SELECT pizzeria_id 
FROM person_visits) AS tmp
WHERE tmp.id = pizzeria.id);