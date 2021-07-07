					Concurso
---------------------------------------------------------------------------------------
 A Universidade Tecnológica de Marte está com seu concurso aberto para Pesquisadores. Porém o computador que processava os dados dos candidatos estragou. Você deve mostrar a lista dos candidatos, contendo o nome do candidato e a sua pontuação final (com duas casas decimais após a vírgula). Lembre-se de mostrar a lista ordenada pela pontuação do candidato (maior pontuação no topo da lista). 
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
	SELECT name, round(((math*2)+(specific*3)+(project_plan*5))/10, 2)::TEXT AS AVG FROM candidate 
	INNER JOIN score ON 
	(candidate.id=score.candidate_id)
	ORDER BY AVG DESC;
---------------------------------------------------------------------------------------