USE cadastro;
SHOW TABLES;
DESCRIBE cursos;
DESCRIBE gafanhotos;

SELECT * FROM cursos;
SELECT * FROM gafanhotos;

-- Aula: Gerenciando Cópias de Segurança MySQL
-- Fonte: Curso em Vídeo - Gustavo Guanabara
-- Arquivo: 05_gerenciando_copias_seguranca.sql
-- Objetivo: Documentar como fazer backup e restore de um banco de dados MySQL

-- RESUMO DA AULA:
-- 1) Exportar um banco de dados MySQL:
--    - A operação de exportar gera um arquivo "dump" contendo toda a estrutura
--      e os dados do banco.
--    - No MySQL Workbench, isto geralmente é feito pela opção "Data Export".
--    - O arquivo de dump pode ser local no computador para posterior restauração.

-- 2) Importar um dump (restaurar o banco):
--    - Utilizando a opção "Data Import/Restore" no Workbench ou ferramental equivalente.
--    - Escolher o dump SQL e o banco de destino onde os dados serão restaurados.

-- 3) Conceito:
--    - Backup é essencial para proteção dos dados no caso de falhas, perda ou corrupção.
--    - A importação permite voltar o banco a um estado previamente salvo.
