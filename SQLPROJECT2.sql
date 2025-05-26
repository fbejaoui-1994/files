-- 1. Employees assigned to more than one project (with total number of projects)
SELECT 
    E.Name AS Employee_Name,
    COUNT(EP.Project_Num_P) AS Total_Projects
FROM 
    Employee E
JOIN 
    Employee_Project EP ON E.Num_E = EP.Employee_Num_E
GROUP BY 
    E.Num_E, E.Name
HAVING 
    COUNT(EP.Project_Num_P) > 1;

-- 2. Projects managed by each department (with department label and manager name)
SELECT 
    P.Title AS Project_Title,
    D.Label AS Department_Label,
    D.Manager_Name
FROM 
    Project P
JOIN 
    Department D ON P.Department_Num_S = D.Num_S;

-- 3. Employees working on "Website Redesign" and their roles
SELECT 
    E.Name AS Employee_Name,
    EP.Role
FROM 
    Employee_Project EP
JOIN 
    Employee E ON EP.Employee_Num_E = E.Num_E
JOIN 
    Project P ON EP.Project_Num_P = P.Num_P
WHERE 
    P.Title = 'Website Redesign';

-- 4. Department with the highest number of employees
SELECT 
    D.Label AS Department_Label,
    D.Manager_Name,
    COUNT(E.Num_E) AS Total_Employees
FROM 
    Department D
JOIN 
    Employee E ON D.Num_S = E.Department_Num_S
GROUP BY 
    D.Num_S, D.Label, D.Manager_Name
ORDER BY 
    Total_Employees DESC
LIMIT 1;

-- 5. Employees with salary > 60,000 (with position and department name)
SELECT 
    E.Name AS Employee_Name,
    E.Position,
    E.Salary,
    D.Label AS Department_Name
FROM 
    Employee E
JOIN 
    Department D ON E.Department_Num_S = D.Num_S
WHERE 
    E.Salary > 60000;

-- 6. Number of employees assigned to each project (with project title)
SELECT 
    P.Title AS Project_Title,
    COUNT(EP.Employee_Num_E) AS Number_of_Employees
FROM 
    Project P
LEFT JOIN 
    Employee_Project EP ON P.Num_P = EP.Project_Num_P
GROUP BY 
    P.Num_P, P.Title;

-- 7. Roles employees have across different projects
SELECT 
    E.Name AS Employee_Name,
    P.Title AS Project_Title,
    EP.Role
FROM 
    Employee_Project EP
JOIN 
    Employee E ON EP.Employee_Num_E = E.Num_E
JOIN 
    Project P ON EP.Project_Num_P = P.Num_P;

-- 8. Total salary expenditure for each department
SELECT 
    D.Label AS Department_Label,
    D.Manager_Name,
    SUM(E.Salary) AS Total_Salary_Expenditure
FROM 
    Department D
JOIN 
    Employee E ON D.Num_S = E.Department_Num_S
GROUP BY 
    D.Num_S, D.Label, D.Manager_Name;


