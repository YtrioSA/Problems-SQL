				Filmes de Ação
---------------------------------------------------------------------------------------
Uma Vídeo locadora contratou seus serviços para catalogar os filmes dela. Eles precisam que você selecione o código e o nome dos filmes cuja descrição do gênero seja 'Action'.
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
SELECT movies.id, name FROM Movies INNER JOIN Genres ON (Movies.id_genres=Genres.id)
WHERE genres.description='Action';
---------------------------------------------------------------------------------------
