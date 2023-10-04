SELECT person_order.order_date,
person.name || CONCAT(' (age:', person.age, ')') as person_information
FROM person
JOIN person_order
ON person.id = person_order.person_id
ORDER BY person_order.order_date, person.name;