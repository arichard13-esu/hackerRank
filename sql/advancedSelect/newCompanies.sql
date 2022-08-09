/* Solution 1: Nested Selects*/
SELECT
    c.company_code
,   founder
,   (SELECT COUNT(DISTINCT lead_manager_code) FROM employee WHERE company_code = c.company_code)
,   (SELECT COUNT(DISTINCT senior_manager_code) FROM employee WHERE company_code = c.company_code)
,   (SELECT COUNT(DISTINCT manager_code) FROM employee WHERE company_code = c.company_code)
,   (SELECT COUNT(DISTINCT employee_code) FROM employee WHERE company_code = c.company_code)
FROM
    company AS c
GROUP BY
    c.company_code
,   founder
ORDER BY
    c.company_code

/*  Solution 2: Join
SELECT
    c.company_code
,   founder
,   COUNT(DISTINCT lead_manager_code)
,   COUNT(DISTINCT senior_manager_code)
,   COUNT(DISTINCT manager_code)
,   COUNT(DISTINCT employee_code)
FROM
    company  AS c
,   employee AS e
WHERE
    c.company_code = e.company_code
GROUP BY
    c.company_code
,   founder
ORDER BY
    c.company_code
*/