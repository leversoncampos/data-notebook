-- Agrupamento de Registros
SELECT totaulas, COUNT(*) AS quantidade FROM cursos
GROUP BY totaulas
ORDER BY totaulas;

-- Agrupando & Agregando
SELECT ano, COUNT(*) FROM cursos
GROUP BY ano
HAVING COUNT(ano) >= 3
ORDER BY COUNT(*) DESC;

SELECT ano, COUNT(*) FROM cursos
WHERE totaulas > 20
HAVING ano > 2010
ORDER BY COUNT(*) DESC;

SELECT AVG(carga) FROM cursos;

SELECT carga, COUNT(*) FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos); 