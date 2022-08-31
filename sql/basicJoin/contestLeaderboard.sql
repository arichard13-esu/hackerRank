SELECT
    hacker_id
,   name
,   total_score
FROM
    (SELECT
        h.hacker_id
    ,   h.name
    ,   SUM(score) AS total_score
    FROM
        (SELECT
            hacker_id
        ,   score
        ,   ROW_NUMBER() OVER(
                PARTITION BY hacker_id, challenge_id
                    ORDER BY score DESC) AS row_num
            FROM
                submissions
        ) AS row_scores
    INNER JOIN
        hackers AS h
    ON  h.hacker_id = row_scores.hacker_id
    AND row_num = 1
    GROUP BY
        h.hacker_id,
        h.name
    ) AS t
WHERE
    total_score <> 0
ORDER BY
    total_score DESC
,   hacker_id