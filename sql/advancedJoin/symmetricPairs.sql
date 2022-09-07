 SELECT DISTINCT f1.x, f1.y
   FROM functions AS f1
   JOIN functions AS f2
     ON f1.x = f2.y
    AND f1.y = f2.x
  WHERE f1.x < f1.y
     OR (f1.x = f1.y
    AND((SELECT COUNT(*)
           FROM functions
          WHERE x = f1.x AND y = f1.x) > 1))
ORDER BY f1.x