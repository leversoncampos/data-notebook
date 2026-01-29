-- DESCRIBE pessoas; -- 

-- Adiciona coluna -- 
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);

-- Remove coluna --
ALTER TABLE pessoas
DROP COLUMN profissao;

-- Adiciona coluna após a coluna 'nome' --
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

-- Adiciona coluna no INÍCIO --
ALTER TABLE pessoas
ADD COLUMN codigo INT FIRST;

-- Altera estrutura da definição --
ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20) NOT NULL DEFAULT '';

-- Renomeia coluna e  constraints --
ALTER TABLE pessoas
CHANGE COLUMN profissao prof VARCHAR(20);

-- Reonomeia TABELA -- 
ALTER TABLE pessoas
RENAME TO gafanhotos;

DESCRIBE gafanhotos;

-- Nova tabela --
CREATE TABLE IF NOT EXISTS cursos (
	nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    carga INT UNSIGNED,
    totaulas INT UNSIGNED,
    ano YEAR DEFAULT '2026'
) DEFAULT CHARSET=utf8;

DESCRIBE cursos;

ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

