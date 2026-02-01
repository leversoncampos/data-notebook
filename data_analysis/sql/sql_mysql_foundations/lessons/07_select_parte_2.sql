-- Usando o Operador LIKE
SELECT * FROM cursos
WHERE nome LIKE 'P%';

SELECT * FROM cursos
WHERE nome LIKE '%A';

SELECT * FROM cursos
WHERE nome NOT LIKE '%A%';

SELECT * FROM cursos
WHERE nome LIKE '%PH%P';

SELECT * FROM gafanhotos
WHERE nome LIKE '%silva%';

-- Distinguindo 
SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade;

SELECT DISTINCT carga FROM cursos;

-- Funções de Agregação
SELECT COUNT(*) FROM cursos;

SELECT COUNT(*) FROM cursos 
WHERE carga > 30;

SELECT MAX(carga) FROM cursos;

SELECT MAX(totaulas) FROM cursos
WHERE ano = '2016';

SELECT MIN(totaulas) FROM cursos;

SELECT SUM(totaulas) FROM cursos
WHERE ano = '2016';

SELECT AVG(totaulas) FROM cursos;

SELECT AVG(totaulas) FROM cursos
WHERE ano = '2016';