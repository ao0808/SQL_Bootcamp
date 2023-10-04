SELECT person_id, COUNT(person_id) AS count_of_visits FROM person_visits
GROUP BY person_id
ORDER BY  1 DESC, 2;





-- INSERT INTO menu (id, pizzeria_id, pizza_name, price)
-- VALUES (19, 2, 'greek pizza', 800);


-- INSERT INTO menu (id, pizzeria_id, pizza_name, price)
-- VALUES (((SELECT MAX(id) + 1 from menu)),  -- SELECT id +1 FROM menu WHERE name = 'greek pizza'
--         (SELECT id FROM pizzeria WHERE name = 'Dominos'),
--         'sicilian pizza',
--         900);



-- INSERT INTO person_visits
-- VALUES
--     ((SELECT MAX(id) + 1 from person_visits),
--      (SELECT id FROM person WHERE name = 'Denis'),
--      (SELECT id FROM pizzeria WHERE name = 'Dominos'),
--      '2022-02-24'),
--     ( (SELECT MAX(id) + 2 from person_visits),
--       (SELECT id FROM person WHERE name = 'Irina'),
--       (SELECT id FROM pizzeria WHERE name = 'Dominos'),
--       '2022-02-24');



-- INSERT INTO person_order
-- VALUES
--     ((SELECT MAX(id) + 1 from person_order),
--      (SELECT id FROM person WHERE name = 'Denis'),
--      (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
--      '2022-02-24'),
--     ( (SELECT MAX(id) + 2 from person_order),
--       (SELECT id FROM person WHERE name = 'Irina'),
--       (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
--       '2022-02-24');

-- UPDATE menu
-- SET price= (price*(100-10)/100)
-- WHERE menu.pizza_name = 'greek pizza';



-- INSERT INTO person_order (id, person_id,  menu_id, order_date )
-- SELECT (generate_series (((SELECT MAX(id) +1 from person_order)) ,
--                          ((SELECT MAX(id)  from person_order)  + (SELECT MAX(id)  from person) ))) ,
--        (generate_series (  (SELECT MIN(id)  from person) ,(SELECT MAX(id)  from person))) ,
--        (SELECT menu.id FROM menu WHERE pizza_name = 'greek pizza'),
--        '2022-02-25';

-- DELETE FROM person_order
-- WHERE order_date = '2022-02-25';
-- DELETE from menu
-- WHERE pizza_name = 'greek pizza';