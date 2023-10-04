SELECT menu.pizza_name, menu.price AS price, pizzeria.name AS pizzeria_name,
person_visits.visit_date AS visit_date FROM person_visits, menu, pizzeria, person 
WHERE (menu.price >= 800 AND menu.price <= 1000) AND person.name = 'Kate' 
AND menu.pizzeria_id = pizzeria.id 
AND person_visits.pizzeria_id = pizzeria.id 
AND person_visits.person_id = person.id
ORDER BY 1, 2, 3;