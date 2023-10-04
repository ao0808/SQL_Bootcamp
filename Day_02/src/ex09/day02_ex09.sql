WITH tmp AS (SELECT name
FROM person_order AS po
JOIN person p
ON p.id = po.person_id
JOIN menu m
ON po.menu_id = m.id
WHERE gender = 'female'
AND pizza_name = 'pepperoni pizza'),
cte_cheese_females AS (SELECT name
FROM person_order AS po
JOIN person p
ON p.id = po.person_id
JOIN menu m
ON po.menu_id = m.id
WHERE gender = 'female'
AND pizza_name = 'cheese pizza')
SELECT name
FROM tmp
INTERSECT
SELECT name
FROM cte_cheese_females
ORDER BY name;