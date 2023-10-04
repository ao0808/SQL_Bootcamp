COMMENT ON TABLE person_discounts IS 
'Персональная скидка';
COMMENT ON COLUMN person_discounts.id IS 
'id';
COMMENT ON COLUMN person_discounts.person_id IS 
'Столбцы person_id и pizzeria_id определяют комбинации человека и пиццерии, для которых могут применяться скидки';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 
'Столбцы person_id и pizzeria_id определяют комбинации человека и пиццерии, для которых могут применяться скидки';
COMMENT ON COLUMN person_discounts.discount IS 
'Размер скидки';