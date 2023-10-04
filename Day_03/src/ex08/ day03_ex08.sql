INSERT INTO MENU (id, pizzeria_id, pizza_name, price)
VALUES ((SELECT Max(id) from menu) +1, 
(SELECT id from pizzeria WHERE name='Dominos'),'sicilian pizza',900);
