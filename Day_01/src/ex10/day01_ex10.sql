SELECT person.name 
AS person_name, menu.pizza_name 
AS pizza_name, pizzeria.name 
AS pizzeria_name FROM
person, menu, pizzeria, person_order 
WHERE person.id = person_order.person_id AND 
person_order.menu_id = menu.id AND 
menu.pizzeria_id = pizzeria.id
ORDER BY person_name, pizza_name, pizzeria_name;