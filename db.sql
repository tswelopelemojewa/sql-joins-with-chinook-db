
SELECT count(*) FROM artists

SELECT * FROM playlists WHERE Name LIKE "a%"

SELECT * FROM albums WHERE ArtistId = 240

SELECT * FROM artists


SELECT * from artists WHERE Name = "Lost"
-- ri

-- fnd all the albms fo a gven artst
SELECT AlbumId, Name,  Title FROM artists
JOIN albums on artists.ArtistId = albums.ArtistId
WHERE artists.ArtistId = 17;
-- WHERE 

-- fnd all the albms hee the name = "Amy Wnehose"

SELECT * FROM artists WHERE Name = "Amy Winehouse"


SELECT * FROM Genres
JOIN tracks on genres.GenreId = tracks.GenreId
WHERE Genres.Name = "Pop";



-- -------------------------------------------

SELECT * FROM playlists
JOIN playlist_track on playlist_track.PlaylistId = playlists.PlaylistId

JOIN tracks 
    on playlist_track.TrackId = tracks.TrackId

WHERE playlists.Name = "Classical"

-- find all the artsts fo the gven gene

SELECT DISTINCT artists.Name FROM genres
JOIN tracks on tracks.GenreId = tracks.GenreId
JOIN albums on albums.AlbumId = tracks.AlbumId
JOIN artists on artists.ArtistId = albums.ArtistId
WHERE genres.Name = "Jazz"


-- find all the artsts fo the gven atst
SELECT * FROM artists
JOIN albums on artists.ArtistId = albums.ArtistId

JOIN tracks on albums.AlbumId = tracks.AlbumId
JOIN genres on tracks.GenreId = genres.GenreId
WHERE artists.Name = "Accept"

-- 

-- Find the Playlist with the most / least songs (will need a group by  and count )

SELECT  playlists.Name, Count(*) AS song_Count FROM playlists
JOIN playlist_track on playlist_track.PlaylistId = playlists.PlaylistId

JOIN tracks 
    on playlist_track.TrackId = tracks.TrackId

GROUP BY playlists.Name
ORDER BY song_Count DESC
LIMIT 1


SELECT  playlists.Name, Count(*) AS song_Count FROM playlists
JOIN playlist_track on playlist_track.PlaylistId = playlists.PlaylistId

JOIN tracks 
    on playlist_track.TrackId = tracks.TrackId

GROUP BY playlists.Name
ORDER BY song_Count ASC
LIMIT 1

-- Find the total for a given invoice (will need a sum)
SELECT Total FROM Invoices WHERE invoices.InvoiceId = 26


-- Find the biggest/smallest invoice amounts (needs group by)
SELECT invoices.CustomerId, max(Total) FROM invoices
SELECT invoices.CustomerId, min(Total) FROM invoices 


-- Find all the playlists containing a given genre
SELECT genres.name, playlists.Name FROM playlists
JOIN playlist_track on playlist_track.PlaylistId = playlists.PlaylistId
JOIN tracks on tracks.TrackId = playlist_track.TrackId
JOIN genres on genres.GenreId = tracks.GenreId
WHERE genres.Name = "Pop"


-- Find the biggest/smallest invoice amounts (needs group by)


-- Find the artist with the most/least songs (needs group by) 
SELECT artists.Name, Count(*) as TrackCount FROM artists
JOIN albums on albums.ArtistId = artists.ArtistId
JOIN tracks on tracks.AlbumId = albums.AlbumId
GROUP BY artists.Name
ORDER BY trackCount DESC
LIMIT 1


SELECT artists.Name, Count(*) as TrackCount FROM artists
JOIN albums on albums.ArtistId = artists.ArtistId
JOIN tracks on tracks.AlbumId = albums.AlbumId
GROUP BY artists.Name
ORDER BY trackCount
LIMIT 1