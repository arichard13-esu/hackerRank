SELECT
    s.hacker_id
,   name
FROM
    submissions AS s
JOIN
    hackers AS h
ON  s.hacker_id = h.hacker_id
JOIN
    challenges AS c
ON  s.challenge_id = c.challenge_id
JOIN
    difficulty AS d
ON  c.difficulty_level = d.difficulty_level
WHERE
    s.score = d.score
GROUP BY
    s.hacker_id
,   name
HAVING
    COUNT(s.hacker_id) > 1
ORDER BY
    COUNT(s.hacker_id) DESC
,   s.hacker_id