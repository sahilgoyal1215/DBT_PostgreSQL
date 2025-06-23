WITH dept_avg AS (
    SELECT
    department_id,
    Avg(salary) as Avg_Salary
    From snowflake__myschema.employees
    GROUP BY department_id
)
SELECT 
e.employee_id, e.first_name, e.last_name, e.salary, d.department_name, da.Avg_Salary
From snowflake__myschema.employees as e
INNER JOIN
snowflake__myschema.departments as d ON e.department_id = d.department_id
INNER JOIN
dept_avg da ON e.department_id = da.department_id
WHERE e.salary>da.Avg_Salary