SELECT i.Total, c.FirstName || ' ' || c.LastName as Customer_FullName, e.FirstName || ' ' || e.LastName AS Employee_FullName 
FROM Invoice i
JOIN Customer c 
    ON c.CustomerId = i.CustomerId
JOIN Employee e  
    ON e.EmployeeId = c.SupportRepId
ORDER BY c.FirstName ASC