# Test Cases

Detailed test cases to verify salary calculations, aggregations,
and report accuracy.

| Test ID | Scenario | SQL Used | Expected Result |
|-------|---------|---------|----------------|
| TC01 | Total payroll cost | SUM(net_salary) | Correct total salary for all employees |
| TC02 | Department-wise payroll | GROUP BY department | Accurate payroll per department |
| TC03 | Role-wise avg salary | AVG(base_salary) | Correct average per role |
| TC04 | Employee salary history | ORDER BY effective_from | Correct salary timeline |
| TC05 | Monthly payroll | GROUP BY payroll_month | Accurate monthly totals |
