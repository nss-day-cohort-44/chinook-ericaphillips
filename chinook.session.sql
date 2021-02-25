SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country != "USA";

SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country = "Brazil";

SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Customer c
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
WHERE Country = "Brazil";

SELECT EmployeeId, FirstName, LastName, Title
FROM Employee
WHERE Title = "Sales Support Agent";

SELECT DISTINCT BillingCountry
FROM Invoice
ORDER BY BillingCountry ASC

SELECT e.FirstName, e.LastName, InvoiceId 
FROM Employee e
JOIN Customer c 
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice i 
    ON c.CustomerId = i.CustomerId
ORDER BY i.invoiceId ASC

SELECT i.Total, c.FirstName || ' ' || c.LastName as Customer_FullName, e.FirstName || ' ' || e.LastName AS Employee_FullName 
FROM Invoice i
JOIN Customer c 
    ON c.CustomerId = i.CustomerId
JOIN Employee e  
    ON e.EmployeeId = c.SupportRepId
ORDER BY c.FirstName ASC

SELECT COUNT (InvoiceDate)
FROM Invoice i
WHERE InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%' 