SELECT p.name AS name, pizza_name,
price, price * ((100 - discount) / 100)
AS discount_price, pz.name 
AS pizzeria_name
  FROM person_order
           JOIN person p
           ON person.id = person_order.person_id
           JOIN menu m
           ON menu.id = person_order.menu_id
           JOIN pizzeria pz
           ON pz.id = m.pizzeria_id
           JOIN person_discounts
           ON p.id = person_discounts.person_id AND pz.id = person_discounts.pizzeria_id
 ORDER BY name, pizza_name;