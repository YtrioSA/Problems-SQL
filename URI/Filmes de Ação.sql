SELECT movies.id, name FROM Movies INNER JOIN Genres ON (Movies.id_genres=Genres.id)
WHERE genres.description='Action';

