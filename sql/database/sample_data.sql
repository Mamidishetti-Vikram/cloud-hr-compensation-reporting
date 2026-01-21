-- Insert departments
INSERT INTO departments (department_name) VALUES
('Engineering'),
('Human Resources'),
('Finance'),
('Sales');
-- Insert roles
INSERT INTO roles (role_name) VALUES
('Software Engineer'),
('HR Manager'),
('Accountant'),
('Sales Executive');
-- Insert employees
INSERT INTO employees (
    first_name,
    last_name,
    email,
    department_id,
    role_id,
    hire_date
) VALUES
('Amit', 'Sharma', 'amit.sharma@company.com', 1, 1, '2022-01-15'),
('Neha', 'Verma', 'neha.verma@company.com', 2, 2, '2021-06-10'),
('Rahul', 'Mehta', 'rahul.mehta@company.com', 3, 3, '2020-03-20'),
('Priya', 'Singh', 'priya.singh@company.com', 4, 4, '2023-02-01');
-- Insert compensation data
INSERT INTO compensation (
    employee_id,
    base_salary,
    bonus,
    effective_from,
    effective_to
) VALUES
(1, 80000, 5000, '2023-01-01', NULL),
(2, 60000, 3000, '2023-01-01', NULL),
(3, 70000, 4000, '2023-01-01', NULL),
(4, 50000, 2000, '2023-01-01', NULL);
-- Insert payroll records
INSERT INTO payroll (
    employee_id,
    payroll_month,
    gross_salary,
    deductions,
    net_salary
) VALUES
(1, '2023-08-01', 85000, 5000, 80000),
(2, '2023-08-01', 63000, 3000, 60000),
(3, '2023-08-01', 74000, 4000, 70000),
(4, '2023-08-01', 52000, 2000, 50000);
