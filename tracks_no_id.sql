SELECT a.Title AS Album_Name, t.Name AS Track_Name, m.Name AS MediaType, g.Name AS Genre  
FROM Track t
JOIN Album a 
    ON t.AlbumId = a.AlbumId
JOIN Genre g
    ON g.GenreId = t.GenreId
JOIN MediaType m
    ON m.MediaTypeId = t.MediaTypeId
ORDER BY a.Title ASC