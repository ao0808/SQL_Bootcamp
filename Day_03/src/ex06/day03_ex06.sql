WITH list_one AS
(SELECT menu.pizza_name, menu.price, pizzeria.name, pizzeria.id 
FROM menu, pizzeria
WHERE menu.pizzeria_id = pizzeria.id),

list_two AS
(SELECT menu.pizza_name, menu.price, pizzeria.name, pizzeria.id 
FROM menu, pizzeria
WHERE menu.pizzeria_id = pizzeria.id)

SELECT  list_one.pizza_name AS Pizza_name, list_one.name AS pizzeria_name_1,
list_two.name AS pizzeria_name_1, list_two.price 
FROM list_one, list_two
WHERE list_one.pizza_name = list_two.pizza_name 
AND list_two.price = list_one.price 
AND list_one.name <> list_two.name AND list_one.id > list_two.id
ORDER BY 1;