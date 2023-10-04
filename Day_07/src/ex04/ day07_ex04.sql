WITH tmp AS 
(SELECT name, COUNT(person_id) AS count_of_visits
FROM person_visits, person
WHERE person.id = person_visits.person_id
GROUP BY name)
SELECT name, count_of_visits
FROM tmp
WHERE count_of_visits > 3;