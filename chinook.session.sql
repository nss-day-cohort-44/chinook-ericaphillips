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


