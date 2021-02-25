SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country != "USA"

SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country = "Brazil"

SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Customer c
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
WHERE Country = "Brazil"

SELECT EmployeeId, FirstName, LastName, Title
FROM Employee
WHERE Title = "Sales Support Agent"