SELECT
    h.hacker_id
,   h.name
,   COUNT(c.challenge_id) AS total_challenges
FROM
    challenges c
,   hackers h
WHERE
    h.hacker_id = c.hacker_id
GROUP BY
    h.hacker_id
,   h.name
HAVING total_challenges = (
        SELECT COUNT(challenge_id)
        FROM challenges
        GROUP BY hacker_id
        ORDER BY COUNT(challenge_id) DESC
        LIMIT 1
        )
OR total_challenges IN (
        SELECT total_challenges
        FROM(
            SELECT COUNT(challenge_id) AS total_challenges
            FROM challenges
            GROUP BY hacker_id
            )AS counts
        GROUP BY total_challenges
        HAVING COUNT(total_challenges) = 1
        )
ORDER BY
    total_challenges DESC
,   h.hacker_id