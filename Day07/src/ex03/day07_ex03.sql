WITH visit_tmp AS (SELECT name,
COUNT(person_id) AS count,
'visit' AS action_type 
FROM person_visits
JOIN pizzeria
ON person_visits.pizzeria_id = pizzeria.id
GROUP BY name
ORDER BY count DESC),

order_tmp AS (SELECT name,
COUNT(person_id) AS count,
'order' AS action_type
FROM person_order
JOIN menu
ON person_order.menu_id = menu.id
JOIN pizzeria
ON pizzeria.id = menu.pizzeria_id
GROUP BY name
ORDER BY count DESC)

SELECT pizzeria.name, 
COALESCE(visit_tmp.count, 0) + COALESCE(order_tmp.count, 0) 
AS total_count
FROM pizzeria
FULL JOIN order_tmp
ON order_tmp.name = pizzeria.name
FULL JOIN visit_tmp
ON visit_tmp.name = pizzeria.name
ORDER BY 2 DESC, 1;
