SELECT pizzeria.name FROM menu, pizzeria, person_visits, person 
WHERE person.name = 'Dmitriy' 
AND person_visits.visit_date = '2022-01-08' 
AND person_visits.pizzeria_id = pizzeria.id 
AND menu.price < 800 
AND menu.pizzeria_id = pizzeria.id;