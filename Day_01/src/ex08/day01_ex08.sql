SELECT order_date, name || CONCAT(' (age:', age, ')') 
AS person_information
FROM person_order
NATURAL JOIN 
(SELECT id AS person_id, name, age, address 
FROM person) AS tnp
ORDER BY 1,2;
