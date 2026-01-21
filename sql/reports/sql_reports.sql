-- Report 1: Total Payroll Cost
SELECT 
    SUM(net_salary) AS total_payroll_cost
FROM payroll;
-- Report 2: Department-wise Payroll Cost
SELECT 
    d.department_name,
    SUM(p.net_salary) AS department_payroll
FROM payroll p
JOIN employees e ON p.employee_id = e.employee_id
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY department_payroll DESC;
-- Report 3: Role-wise Average Salary
SELECT 
    r.role_name,
    AVG(c.base_salary) AS average_salary
FROM compensation c
JOIN employees e ON c.employee_id = e.employee_id
JOIN roles r ON e.role_id = r.role_id
WHERE c.effective_to IS NULL
GROUP BY r.role_name;
-- Report 4: Employee Salary History
SELECT 
    e.first_name,
    e.last_name,
    c.base_salary,
    c.bonus,
    c.effective_from,
    c.effective_to
FROM compensation c
JOIN employees e ON c.employee_id = e.employee_id
ORDER BY e.employee_id, c.effective_from;
-- Report 5: Monthly Payroll Summary
SELECT 
    payroll_month,
    SUM(net_salary) AS monthly_payroll
FROM payroll
GROUP BY payroll_month
ORDER BY payroll_month;
