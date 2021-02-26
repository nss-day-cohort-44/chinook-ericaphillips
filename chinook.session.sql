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

SELECT SUM(total)
FROM Invoice i
WHERE InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%'
GROUP BY InvoiceDate  LIKE "2009%"

SELECT SUM(total),
    strftime("%Y", InvoiceDate) as year
FROM Invoice
WHERE year == "2009" OR year == "2011"
GROUP BY year;

SELECT COUNT(InvoiceId)
FROM InvoiceLine
WHERE InvoiceId = 37

SELECT COUNT(InvoiceId), InvoiceId
FROM InvoiceLine
GROUP BY InvoiceId

SELECT Name, InvoiceLineId
FROM Track t
JOIN InvoiceLine i
    ON t.TrackId = i.TrackId
ORDER BY InvoiceLineId ASC

SELECT t.Name AS Track_Name, InvoiceLineId, a.Name AS Artist_Name
FROM Track t
JOIN InvoiceLine i
    ON t.TrackId = i.TrackId
JOIN Album 
    ON Album.AlbumId = t.AlbumId
JOIN Artist a
    ON a.ArtistId = Album.ArtistId
ORDER BY InvoiceLineId ASC

SELECT COUNT(BillingCountry), BillingCountry
FROM Invoice
GROUP BY BillingCountry

SELECT COUNT(TrackId), t.PlaylistId, Name
FROM PlaylistTrack t
JOIN Playlist p
    ON p.PlaylistId = t.PlaylistId
GROUP BY t.PlaylistId

SELECT a.Title AS Album_Name, t.Name AS Track_Name, m.Name AS MediaType, g.Name AS Genre  
FROM Track t
JOIN Album a 
    ON t.AlbumId = a.AlbumId
JOIN Genre g
    ON g.GenreId = t.GenreId
JOIN MediaType m
    ON m.MediaTypeId = t.MediaTypeId
ORDER BY a.Title ASC

SELECT i.InvoiceId, COUNT(l.InvoiceLineId) AS Num_Line_Items
FROM Invoice i
JOIN InvoiceLine l
    ON i.InvoiceId = l.InvoiceId
GROUP BY i.InvoiceId

SELECT SUM(Total), e.FirstName || ' ' || e.LastName AS Employee_FullName
FROM Invoice
JOIN Customer
    ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee e
    ON e.EmployeeId = Customer.SupportRepId
GROUP BY e.EmployeeId