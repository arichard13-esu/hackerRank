SELECT name
FROM students AS s
JOIN friends AS f ON s.id = f.id
JOIN packages AS sp ON f.id = sp.id
JOIN packages AS fp ON f.friend_id = fp.id
WHERE sp.salary < fp.salary
ORDER BY fp.salary