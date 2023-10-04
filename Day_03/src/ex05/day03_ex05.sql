SELECT pizzeria.name AS pizzeria_name FROM pizzeria, person, person_visits 
WHERE person.id = person_visits.person_id 
AND person_visits.pizzeria_id = pizzeria.id 
AND person.name = 'Andrey'
EXCEPT
SELECT pizzeria.name 
FROM pizzeria, person, person_order, menu 
WHERE person.id = person_order.person_id 
AND person_order.menu_id = menu.id 
AND menu.pizzeria_id = pizzeria.id
AND person.name = 'Andrey'
ORDER BY 1;