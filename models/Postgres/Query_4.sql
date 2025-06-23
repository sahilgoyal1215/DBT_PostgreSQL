SELECT e.employee_id, e.first_name, e.last_name, d.department_name, e.salary,
RANK() OVER (PARTITION BY e.department_id ORDER BY e.salary DESC) as Salary_Rank
FROM snowflake__myschema.employees as e
INNER JOIN
snowflake__myschema.departments as d ON e.department_id = d.department_id