-- Uma lista com o nome de todas as mulheres da tabela gafanhotos
SELECT nome FROM gafanhotos
WHERE sexo = 'F'
ORDER BY nome;

SELECT COUNT(*) FROM gafanhotos
WHERE sexo = 'F';

-- Uma lista com os dados de todos aqueles que nasceram entre 1/jan/2000 e 31/dez/2015
SELECT * FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31';

-- Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J
SELECT * FROM gafanhotos
WHERE sexo = 'F' 
	AND nacionalidade = 'Brasil' 
	AND nome LIKE 'J%';

-- Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, nasceram no Brasil e pensam menos de 100 kg
SELECT nome, nacionalidade FROM gafanhotos
WHERE sexo ='M' 
	AND nome LIKE '%Silva%' 
	AND nacionalidade = 'Brasil'
	AND peso < 100;

-- Qual é a média de peso dos 'gafanhotos' cadastrados?
SELECT AVG(peso) AS media_peso 
FROM gafanhotos;

-- Qual o menor peso entre as 'gafanhotos' mulheres que nasceram fora do Brasil e entre 01/jam/1990 e 31/dez/2000?
SELECT MIN(peso) AS menor_peso
FROM gafanhotos
WHERE sexo = 'F'
  AND nacionalidade <> 'Brasil'
  AND nascimento BETWEEN '1990-01-01' AND '2000-12-31';


-- Quantas 'gafanhotos' mulheres têm mais de 1.90m de altura?
SELECT COUNT(*)
FROM gafanhotos
WHERE sexo = 'F' AND altura > 1.90;
