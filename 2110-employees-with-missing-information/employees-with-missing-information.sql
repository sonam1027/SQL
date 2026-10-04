SELECT e.employee_id
FROM Employees AS e
LEFT JOIN Salaries AS s
USING(employee_id)
WHERE s.employee_id IS NULL

UNION

SELECT s.employee_id
FROM Salaries AS s
LEFT JOIN Employees AS e
USING(employee_id)
WHERE e.employee_id IS NULL

ORDER BY employee_id ASC;
