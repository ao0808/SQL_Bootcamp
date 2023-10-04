SELECT person.name FROM person, person_order, menu
WHERE (person.address = 'Moscow' 
OR person.address = 'Samara') 
AND person.gender = 'male' 
AND ((menu.pizza_name = 'mushroom pizza' 
OR menu.pizza_name = 'pepperoni pizza') 
OR (menu.pizza_name = 'mushroom pizza' 
AND menu.pizza_name = 'pepperoni pizza')) 
AND person_order.person_id = person.id 
AND person_order.menu_id = menu.id
ORDER BY name DESC;