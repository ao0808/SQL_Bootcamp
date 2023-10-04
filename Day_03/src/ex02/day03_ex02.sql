SELECT menu.pizza_name, menu.price, pizzeria.name AS pizzeria_name
FROM menu, pizzeria, 
(SELECT id FROM menu
EXCEPT
SELECT person_order.menu_id 
FROM person_order) AS tmp
WHERE menu.id = tmp.id AND menu.pizzeria_id = pizzeria.id
ORDER BY 1, 2;
