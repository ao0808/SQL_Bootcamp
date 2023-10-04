SET ENABLE_SEQSCAN TO off;

EXPLAIN ANALYZE
SELECT menu.pizza_name, pizzeria.name FROM menu, pizzeria
WHERE menu.pizzeria_id = pizzeria.id;