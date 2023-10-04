WITH cte_men(pizzeria_name) AS (SELECT pizzeria.name
    FROM person_visits
    JOIN pizzeria
    ON person_visits.pizzeria_id = pizzeria.id
    JOIN person
    ON person_visits.person_id = person.id
    WHERE person.gender = 'male'),
    cte_women(pizzeria_name) AS (SELECT pizzeria.name
    FROM person_visits person_visits
    JOIN pizzeria
    ON person_visits.pizzeria_id = pizzeria.id
    JOIN person
    ON person_visits.person_id = person.id
    WHERE person.gender = 'female')
SELECT pizzeria_name
  FROM cte_men
EXCEPT ALL
SELECT pizzeria_name FROM cte_women
 UNION ALL
  (SELECT pizzeria_name FROM cte_women EXCEPT ALL SELECT pizzeria_name FROM cte_men)
 ORDER BY pizzeria_name;
