SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Customer c
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
WHERE Country = "Brazil";