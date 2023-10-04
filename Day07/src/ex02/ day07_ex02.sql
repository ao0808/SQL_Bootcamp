WITH visit_tmp AS (SELECT name,
COUNT(person_id) AS count,
'visit' AS action_type 
FROM person_visits
JOIN pizzeria
ON person_visits.pizzeria_id = pizzeria.id
GROUP BY name
ORDER BY count DESC
LIMIT 3),

order_tmp AS (SELECT name,
COUNT(person_id) AS count,
'order' AS action_type
FROM person_order
JOIN menu
ON person_order.menu_id = menu.id
JOIN pizzeria
ON pizzeria.id = menu.pizzeria_id
GROUP BY name
ORDER BY count DESC
LIMIT 3)


SELECT * FROM visit_tmp
UNION
SELECT * FROM order_tmp
ORDER BY action_type, count DESC;