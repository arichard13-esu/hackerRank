SELECT
    CASE WHEN grade >= 8 THEN name ELSE NULL END
,   grade
,   marks
FROM
    students AS s
JOIN
    grades AS g
ON  s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY
    grade DESC
,   name
,   marks