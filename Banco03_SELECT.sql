-- CONSULTAS (queries)
SELECT * FROM aluno;
SELECT * FROM professor;
SELECT * FROM periodo_oferta;
SELECT * FROM curso;
SELECT * FROM matricula;


-- f) Altere eventuais cadastros de professores cuja titulação esteja como “Mestre” para “Mestrado” 
UPDATE professor SET titulacao = 'Mestrado' WHERE titulacao = 'Mestre'; 


-- g) Exclua os períodos letivos de anos anteriores 


-- h) Listar todas as alunas em ordem alfabética 
SELECT * FROM aluno
WHERE sexo= 'F'
ORDER BY nome_aluno;


-- i) Listar todos os professores que tenham sua titulação não preenchida;
SELECT * FROM professor
WHERE titulacao= ' '


-- j) Como exemplo de relatório, listar ra, nome e cpf e data de matrícula de todos os alunos matriculados em um curso específico, listando o nome e carga horária do mesmo;
SELECT a.raaluno, a.nome_aluno, a.cpf_aluno, m.dataMatricula, c.nome AS curso, c.cargaHoraria 
FROM matricula m 
JOIN aluno a ON m.raaluno = a.raaluno 
JOIN curso c ON m.idcurso = c.idcurso 
WHERE c.nome = 'Engenharia de Software'; 


-- k) Em outro, listar todos o nome do curso , carga_horária e valor, nome do professor, titulação do professor de todos os curso ofertados em um determinado período;
SELECT c.nome, c.cargahoraria, c.valor, p.nome_professor, p.titulacao, o.data_inicio
FROM curso c
JOIN professor p ON c.raProfResponsavel = p.raprofessor
JOIN periodo_oferta o ON c.idperiodo = o.idperiodooferta
WHERE c.idperiodo = 1; 


-- l) Como é comum em homenagens, listar todos os alunos (nome e e-mail) de todos os alunos de um professor específico; 
SELECT a.nome_aluno, a.email, p.nome_professor
FROM aluno a
JOIN matricula m ON m.raaluno = a.raaluno
JOIN curso c ON m.idcurso = c.idcurso
JOIN professor p ON c.raProfResponsavel = p.raprofessor
WHERE p.raprofessor = 'P002'; 


-- m) Gerar o boletim do aluno, com ra, nome, cpf do aluno, nome do curso, nota final e resultado final de todos os alunos aprovados;
SELECT m.raaluno, a.nome_aluno, a.cpf_aluno, c.nome, m.nf, m.resultado 
FROM matricula m
JOIN aluno a ON m.raaluno = a.raaluno 
JOIN curso c ON m.idcurso = c.idcurso 
WHERE m.resultado = 'Aprovado'


-- n) Listar a quantidade de alunos por curso em um determinado período de oferta;
SELECT COUNT (*) AS alunosPorCurso
FROM aluno a
JOIN matricula m ON m.raaluno = a.raaluno
JOIN curso c ON m.idcurso = c.idcurso
WHERE c.idperiodo = 4
GROUP BY c.nome;


-- o) Informar o valor do curso mais caro, do curso mais barato e o valor médio dos cursos;
SELECT MAX (valor) cursoMaisCaro, MIN (valor) cursoMaisBarato, AVG (valor) valorMedio
FROM curso;


-- p) Informar o ticket médio dos cursos em um determinado período de oferta
SELECT AVG (valor) ticketMedio
FROM curso
WHERE idperiodo = 1;


-- q) Para incentivo do corpo docente, listar nome e cpf de todos os professores que nunca foram alunos dos cursos ofertados;
SELECT nome_professor, cpf_professor FROM professor p
WHERE p.raprofessor NOT IN (
SELECT raaluno FROM matricula m
);
-- Profª Maria está matriculada


-- r) Listar a quantidade de alunos do sexo masculino e a quantidade de alunos do sexo feminino matriculados nos cursos cuja mensalidade está acima do valor médio de todos os curso;
WITH valorMedio AS (SELECT AVG(valor) AS valorMedio FROM curso)
SELECT a.sexo, COUNT(a.raaluno) AS quantidade FROM matricula m
JOIN aluno a ON m.raaluno = a.raaluno
JOIN curso c ON m.idcurso = c.idcurso
WHERE c.valor > (SELECT valorMedio FROM ValorMedio)
GROUP BY a.sexo;
