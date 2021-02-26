SELECT COUNT(TrackId), t.PlaylistId, Name
FROM PlaylistTrack t
JOIN Playlist p
    ON p.PlaylistId = t.PlaylistId
GROUP BY t.PlaylistId