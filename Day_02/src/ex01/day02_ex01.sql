SELECT date(days) 
  FROM GENERATE_SERIES('2022-01-01', '2022-01-10', INTERVAL '1 day') AS days
           FULL JOIN (SELECT *
                        FROM person_visits
                       WHERE (person_id = 1 OR person_id = 2) AND visit_date BETWEEN '2022-01-01' AND '2022-01-10') AS d
           ON days = d.visit_date
 WHERE d.visit_date IS NULL
 ORDER BY days;