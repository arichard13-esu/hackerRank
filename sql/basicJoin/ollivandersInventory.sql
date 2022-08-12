SELECT
    id
,   age
,   coins_needed
,   power
FROM
    (
        SELECT
            id
        ,   age
        ,   coins_needed
        ,   power
        ,   ROW_NUMBER() OVER (PARTITION BY power, age ORDER BY coins_needed) AS row_num
        FROM
            wands AS w
        JOIN
            wands_property AS wp
        ON  w.code = wp.code
        WHERE
            is_evil = 0
    ) AS wp2
WHERE
    row_num = 1
ORDER BY
    power DESC
,   age DESC