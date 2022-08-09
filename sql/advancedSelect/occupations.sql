SELECT
    MAX(CASE occupation WHEN 'Doctor' THEN name END)    AS doctors
,   MAX(CASE occupation WHEN 'Professor' THEN name END) AS professors
,   MAX(CASE occupation WHEN 'Singer' THEN name END)    AS singers
,   MAX(CASE occupation WHEN 'Actor' THEN name END)     AS actors
FROM (
        SELECT
            name
        ,   occupation
        ,   ROW_NUMBER() OVER(PARTITION BY occupation
                                  ORDER BY name) AS ordered_names
        FROM occupations
     )  AS ordered_occupations
GROUP BY ordered_names