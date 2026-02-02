-- Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos
SELECT prof, COUNT(*) AS total FROM gafanhotos
GROUP BY prof
ORDER BY prof;

-- Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005?
SELECT sexo, COUNT(*) AS total 
FROM gafanhotos
WHERE nascimento > '2005-01-01'
GROUP BY sexo;

-- Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá.
	-- Só nos interessa se os países que tiveram mais de 3 gafanhotos com essa nacionalidade
SELECT nacionalidade, COUNT(*) AS total  FROM gafanhotos
WHERE nacionalidade <> 'Brasil'
GROUP BY nacionalidade
HAVING COUNT(*) > 3
ORDER BY total DESC;
    
-- Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100kg e que estão acima da média de altura de todos os cadastrados
SELECT altura, COUNT(*) AS total
FROM gafanhotos
WHERE peso > 100
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos)
ORDER BY altura;
