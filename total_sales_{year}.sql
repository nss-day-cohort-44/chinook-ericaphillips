SELECT SUM(total)
FROM Invoice i
WHERE InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%'
GROUP BY InvoiceDate  LIKE "2009%"

SELECT SUM(total),
    strftime("%Y", InvoiceDate) as year
FROM Invoice
WHERE year == "2009" OR year == "2011"
GROUP BY year;