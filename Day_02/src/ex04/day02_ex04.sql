SELECT menu.pizza_name as pizza_name,
pizzeria.name as pizzeria_name,
menu.price as price FROM menu, pizzeria 
WHERE menu.pizzeria_id = pizzeria.id 
AND (menu.pizza_name = 'mushroom pizza' 
OR menu.pizza_name = 'pepperoni pizza')
 ORDER BY pizza_name, pizzeria_name;