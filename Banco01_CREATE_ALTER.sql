/*
    Alunos:
    - Laís Brum Menezes
    - Leonardo Santos de Pontes
    - Rhaísa Gomes Maciel Justo
*/

-- Criando o banco de dados:
CREATE DATABASE "CentroUni"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE "CentroUni"
    IS 'Banco de dados do Centro Universitário';

ALTER DATABASE "CentroUni" SET datestyle TO "ISO, DMY";


-- a) Criação de todas as tabelas, considerando todas as constraints;
CREATE TABLE aluno (
    raaluno SERIAL ou VARCHAR PRIMARY KEY,
    nome_aluno VARCHAR (60) NOT NULL,
    cpf_aluno VARCHAR (11) UNIQUE NOT NULL,
    data_nascimento_aluno DATE NOT NULL,
    sexo CHAR (1) CHECK (sexo IN ('F', 'M')),
    escolaridade VARCHAR (60) NOT NULL
);
 
CREATE TABLE professor (
    raprofessor SERIAL ou VARCHAR PRIMARY KEY,
    nome_professor VARCHAR (60) NOT NULL,
    cpf_professor VARCHAR (11)  UNIQUE NOT NULL,
    data_nascimento_professor DATE NOT NULL,
    sexo VARCHAR (1) CHECK (sexo IN ('F', 'M')),
    titulacao VARCHAR (60) NOT NULL
);

CREATE TABLE periodo_oferta (
    idperiodooferta SERIAL PRIMARY KEY,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL
);
  
CREATE TABLE curso (
	idcurso SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	valor NUMERIC(10, 2) NOT NULL,
	cargaHoraria INT NOT NULL,
	situacao VARCHAR(10) CHECK (situacao IN ('Ativo', 'Inativo')), 
	raProfResponsavel VARCHAR(60) NOT NULL,
	idperiodo SERIAL NOT NULL,
	-- Chaves estrangeiras
	FOREIGN KEY (raProfResponsavel) REFERENCES professor(raprofessor),
	FOREIGN KEY (idperiodo) REFERENCES periodo_oferta(idperiodooferta)
);

CREATE TABLE matricula (
	raaluno VARCHAR(60) NOT NULL,
	idcurso SERIAL NOT NULL,
    dataMatricula DATE NOT NULL,
	n2 NUMERIC(3, 2),
	n1 NUMERIC(3, 2),
	nf NUMERIC(3, 2),
	resultado VARCHAR(10) CHECK (resultado IN ('Aprovado', 'Reprovado')),
	PRIMARY KEY (raaluno, dataMatricula),
    -- Chaves estrangeiras
	FOREIGN KEY (raaluno) REFERENCES aluno(raaluno),
	FOREIGN KEY (idcurso) REFERENCES curso(idcurso)
);


-- b) Criação de um campo e-mail para professor  de preenchimento obrigatório;
ALTER TABLE professor
ADD email VARCHAR(60) NOT NULL;


-- c) Insira um campo e-mail para aluno, também de preenchimento obrigatório;
ALTER TABLE aluno
ADD email VARCHAR(60) NOT NULL;


-- d) Criação de índices para os professores e alunos pelos seus CPFs;
CREATE INDEX ind_cpf_aluno ON aluno(cpf_aluno);
CREATE INDEX ind_cpf_professor ON professor(cpf_professor);


