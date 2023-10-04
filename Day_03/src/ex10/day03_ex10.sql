INSERT INTO person_order(id, person_id, menu_id, order_date)
SELECT((SELECT Max(id) from person_order) +1), (SELECT id FROM person WHERE person.name = 'Denis'),  (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'), DATE('2022-02-24')
UNION
SELECT((SELECT Max(id) from person_order) +2), (SELECT id FROM person WHERE person.name = 'Irina'),  (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'), DATE('2022-02-24');