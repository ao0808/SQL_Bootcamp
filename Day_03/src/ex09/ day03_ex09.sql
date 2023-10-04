INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
SELECT((SELECT Max(id) from person_visits) +1), (SELECT id FROM person WHERE person.name = 'Denis'),  (SELECT id FROM pizzeria WHERE pizzeria.name = 'Dominos'), DATE('2022-02-24')
UNION
SELECT((SELECT Max(id) from person_visits) +2), (SELECT id FROM person WHERE person.name = 'Irina'),  (SELECT id FROM pizzeria WHERE pizzeria.name = 'Dominos'), DATE('2022-02-24');