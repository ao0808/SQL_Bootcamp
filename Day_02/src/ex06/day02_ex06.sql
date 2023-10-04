SELECT menu.pizza_name as pizza_name, pizzeria.name 
AS pizzeria_name
FROM menu, pizzeria, person, person_order 
WHERE (person.name = 'Denis' OR person.name = 'Anna') 
AND menu.pizzeria_id = pizzeria.id 
AND person.id = person_order.person_id 
AND person_order.menu_id = menu.id
ORDER BY 1, 2;