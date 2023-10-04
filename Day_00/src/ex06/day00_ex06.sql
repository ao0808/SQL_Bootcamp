SELECT(SELECT name FROM person WHERE id = person_id) AS name ,
(SELECT name FROM person WHERE id = person_id) = 'Denis' AS check_name 
FROM person_order 
WHERE person_order.order_date = '2022-01-07' AND (person_order.menu_id = 13 or person_order.menu_id = 14 or person_order.menu_id = 18);