-- lists all tv_genres and the number of shows linked to each,
--   sorted by number of shows
SELECT tv_genres.name AS genre, COUNT(tv_show_genres.show_id)
AS number_of_shows FROM tv_genres
JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
JOIN tv_shows ON tv_show_genres.show_id = tv_shows.id
GROUP BY tv_genres.name
HAVING number_of_shows > 0
ORDER BY number_of_shows DESC;
