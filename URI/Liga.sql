					Liga
---------------------------------------------------------------------------------------
A Liga Internacional de Escavação Subterrânea já é um sucesso entre os esportes alternativos, porém todos que trabalham na organização do evento trabalham com escavação e não computação. Então você foi contratado para solucionar o problema da Liga.

Selecione os três primeiros colocados da lista com a frase inicial Podium: e também, os dois últimos times que serão rebaixados para série B com a frase inicial Demoted
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
SELECT CONCAT('Podium: ', team) AS name FROM league
WHERE (position >=1 AND position <= 3)
UNION ALL
SELECT CONCAT('Demoted: ', team) AS name FROM league
WHERE (position > 13 AND position <= 15);
---------------------------------------------------------------------------------------
