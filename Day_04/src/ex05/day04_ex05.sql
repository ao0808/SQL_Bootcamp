CREATE VIEW v_price_with_discount 
AS 
SELECT * FROM(
SELECT (SELECT person.name) AS name, (SELECT menu.pizza_name) AS Pizza_name, (SELECT menu.price)AS price, (CAST(menu.price * 0.9 AS INT)) AS discount_price
FROM person, person_order, menu 
WHERE person_order.person_id = person.id AND person_order.menu_id = menu.id) AS tmp
ORDER BY 1, 2;

