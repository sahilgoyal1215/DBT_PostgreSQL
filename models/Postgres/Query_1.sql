SELECT d.department_id, d.department_name, Avg(e.salary) as Avg_Salary FROM snowflake__myschema.departments as d
INNER JOIN
snowflake__myschema.employees as e ON d.department_id = e.department_id
Group by d.department_id