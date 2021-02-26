SELECT SUM(Total), e.FirstName || ' ' || e.LastName AS Employee_FullName
FROM Invoice
JOIN Customer
    ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee e
    ON e.EmployeeId = Customer.SupportRepId
GROUP BY e.EmployeeId