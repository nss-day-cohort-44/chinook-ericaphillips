SELECT Name, InvoiceLineId
FROM Track t
JOIN InvoiceLine i
    ON t.TrackId = i.TrackId
ORDER BY InvoiceLineId ASC