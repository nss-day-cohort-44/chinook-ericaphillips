SELECT i.InvoiceId, COUNT(l.InvoiceLineId) AS Num_Line_Items
FROM Invoice i
JOIN InvoiceLine l
    ON i.InvoiceId = l.InvoiceId
GROUP BY i.InvoiceId