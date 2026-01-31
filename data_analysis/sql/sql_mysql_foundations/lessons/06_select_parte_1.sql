-- Ordenação Ordem Crescente
SELECT * FROM cursos
ORDER BY nome;

SELECT ano, nome, carga FROM cursos
ORDER BY nome;

SELECT ano, nome, carga FROM cursos
ORDER BY ano, nome;

-- Ordenação Ordem Decrescente
SELECT * FROM cursos
ORDER BY nome DESC;

-- Selecionando Linhas
SELECT * FROM cursos
WHERE ano = 2016
ORDER BY nome;

-- Selecionando Linhas e Colunas
SELECT nome, descricao, carga FROM cursos
WHERE ano = 2016
ORDER BY nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano <= 2015
ORDER BY ano, nome;

-- Selecionando Intervalos
SELECT nome, ano FROM cursos
WHERE ano BETWEEN 2014 AND 2016
ORDER BY ano DESC, nome ASC;

SELECT nome, descricao, ano FROM cursos
WHERE ano in (2014, 2016, 2020)
ORDER BY ano;

-- Combinando Testes
SELECT nome, carga, totaulas FROM cursos
WHERE carga > 35 AND totaulas < 30;
