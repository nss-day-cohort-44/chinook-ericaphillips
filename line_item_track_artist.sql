SELECT t.Name AS Track_Name, InvoiceLineId, a.Name AS Artist_Name
FROM Track t
JOIN InvoiceLine i
    ON t.TrackId = i.TrackId
JOIN Album 
    ON Album.AlbumId = t.AlbumId
JOIN Artist a
    ON a.ArtistId = Album.ArtistId
ORDER BY InvoiceLineId ASC