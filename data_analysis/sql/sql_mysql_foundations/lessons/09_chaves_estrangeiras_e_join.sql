DESCRIBE gafanhotos;
ALTER TABLE gafanhotos
ADD COLUMN curso_preferido int;

-- Adicionando a Foreign Key
ALTER TABLE gafanhotos
ADD FOREIGN KEY (curso_preferido)
REFERENCES cursos(idcurso);

SELECT * FROM gafanhotos;
SELECT * FROM cursos;

UPDATE gafanhotos
SET curso_preferido = '7'
WHERE id = '1';

/* Integridade Referencial
DELETE FROM cursos
WHERE idcurso = '7';   -- Erro de Foreign Key*/ 