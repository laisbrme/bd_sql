-- e) Inserção de vários registros em todas as tabelas;
-- Tabela aluno
INSERT INTO aluno (nome_aluno, email, cpf_aluno , sexo, data_nascimento_aluno, raaluno, escolaridade) 
VALUES ('Maria da Graça Penna Burgos Costa', 'graca.burgos@tudook.com', '86838400006', 'F', '1997-Nov-20', 'E001', 'Médio');

INSERT INTO aluno (nome_aluno, email, cpf_aluno , sexo, data_nascimento_aluno, raaluno, escolaridade) 
VALUES ('Rita Lee Jones de Carvalho', 'rita.carvalho84@eai.com.br', '08347177007', 'F', '1995-Dec-09', 'E002', 'Superior');

INSERT INTO aluno (nome_aluno, email, cpf_aluno , sexo, data_nascimento_aluno, raaluno, escolaridade) 
VALUES ('Miranda Araújo  Neto', 'miranda.dentista@tudook.com', '10986428051', 'F', '1995-Nov-04', 'E003', 'Médio');

INSERT INTO aluno (nome_aluno, email, cpf_aluno , sexo, data_nascimento_aluno, raaluno, escolaridade) 
VALUES ('Sebastião Rodrigues Maia', 'tiao_maia@brwave.inf.net', '18622526020', 'M', '2001-Jan-08', 'E004', 'Médio');

INSERT INTO aluno (nome_aluno, email, cpf_aluno , sexo, data_nascimento_aluno, raaluno, escolaridade) 
VALUES ('Michelangelo Cardoso', 'michelangelo_cardoso@praja.com.br', '86219546153', 'M', '2000-Apr-29', 'E005', 'Médio');

INSERT INTO aluno (nome_aluno, email, cpf_aluno , sexo, data_nascimento_aluno, raaluno, escolaridade) 
VALUES ('Vitória Regina Silveira', 'vitoriars@ig.com.br', '36829090165', 'F', '1991-Oct-15', 'E006', 'Superior');

INSERT INTO aluno (nome_aluno, email, cpf_aluno , sexo, data_nascimento_aluno, raaluno, escolaridade) 
VALUES ('Silvia Mara Azevedo', 'silviamara@ig.com.br', '65712398744', 'F', '1998-Oct-20', 'E007', 'Superior');

INSERT INTO aluno (nome_aluno, email, cpf_aluno , sexo, data_nascimento_aluno, raaluno, escolaridade) 
VALUES ('Augusto Vale', 'augustovale@ig.com.br', '41295367522', 'M', '1998-Feb-18', 'E008', 'Superior');

INSERT INTO aluno (raaluno, nome_aluno, cpf_aluno , data_nascimento_aluno,  sexo, escolaridade, email) 
VALUES ('P001', 'Maria Aparecida Viera', '13476423744', '1986-Jun-05', 'F', 'Superior', 'mariaaparecida@tudook.com');


-- Tabela professor
INSERT INTO professor(raprofessor, nome_professor, cpf_professor, data_nascimento_professor, sexo, titulacao, email) 
VALUES ('P001', 'Maria Aparecida Viera', '13476423744', '1986-Jun-05', 'F', 'Mestre', 'mariaaparecida@tudook.com');

INSERT INTO professor(raprofessor, nome_professor, cpf_professor, data_nascimento_professor, sexo, titulacao, email) 
VALUES ('P002', 'Carlos Alberto Moura', '55674223869', '1969-Dec-07', 'M', 'Doutorado', 'carlosalberto@tudook.com');

INSERT INTO professor(raprofessor, nome_professor, cpf_professor, data_nascimento_professor, sexo, titulacao, email) 
VALUES ('P003', 'Martha Vasconcelos', '45632178900', '1990-Jan-12', 'F', 'Doutorado', 'marthavasconcelos@tudook.com')

INSERT INTO professor(raprofessor, nome_professor, cpf_professor, data_nascimento_professor, sexo, titulacao, email) 
VALUES ('P004', 'Diogo Nogueira da Silva', '85236974122', '1989-May-01', 'M', 'Mestre', 'diogonogueira@tudook.com')

INSERT INTO professor(raprofessor, nome_professor, cpf_professor, data_nascimento_professor, sexo, titulacao, email) 
VALUES ('P005', 'Vanessa Oliveira', '75395145684', '1999-Aug-22', 'F', 'Mestre', 'vanessaoliveira@tudook.com');

INSERT INTO professor(raprofessor, nome_professor, cpf_professor, data_nascimento_professor, sexo, titulacao, email) 
VALUES ('P006', 'Jose Antonio Filho', '65174295399', '1944-Dec-25', 'M', 'Mestre', 'joseantonio@tudook.com');


-- Tabela periodo_oferta
INSERT INTO periodo_oferta(data_inicio, data_fim) 
VALUES ('2023-Aug-07', '2023-Sep-29');

INSERT INTO periodo_oferta(data_inicio, data_fim) 
VALUES ('2022-Aug-08', '2022-Sep-30');

INSERT INTO periodo_oferta(data_inicio, data_fim) 
VALUES ('2024-Aug-05', '2024-Oct-05');

INSERT INTO periodo_oferta(data_inicio, data_fim) 
VALUES ('2024-Feb-05', '2024-Apr-08');

INSERT INTO periodo_oferta(data_inicio, data_fim) 
VALUES ('2024-May-02', '2024-Jul-06');

INSERT INTO periodo_oferta(data_inicio, data_fim) 
VALUES ('2020-May-02', '2020-Jul-06');


-- Tabela curso
INSERT INTO curso(nome, valor, cargaHoraria, situacao, raProfResponsavel, idPeriodo) 
VALUES ('Análise e Desenvolvimento de Sistemas', 1600.00, 400, 'Ativo', 'P001', 5);

INSERT INTO curso(nome, valor, cargaHoraria, situacao, raProfResponsavel, idPeriodo) 
VALUES ('Engenharia de Software', 2100.00, 420, 'Ativo', 'P002', 4);

INSERT INTO curso(nome, valor, cargaHoraria, situacao, raProfResponsavel, idPeriodo) 
VALUES ('Defesa Cibernética', 1300.00, 400, 'Inativo', 'P003', 1);

INSERT INTO curso(nome, valor, cargaHoraria, situacao, raProfResponsavel, idPeriodo) 
VALUES ('Segurança da Informação', 1700.00, 400, 'Ativo', 'P004', 2);

INSERT INTO curso(nome, valor, cargaHoraria, situacao, raProfResponsavel, idPeriodo) 
VALUES ('Agrotech', 1450.00, 380, 'Inativo', 'P005', 3);


-- Tabela matricula 
INSERT INTO matricula(raaluno, dataMatricula, n1, n2, nf, resultado, idcurso) 
VALUES ('E001', '2024-Jan-05', 8.5, 8.5, 8.5, 'Aprovado', 3);

INSERT INTO matricula(raaluno, dataMatricula, n1, n2, nf, resultado, idcurso) 
VALUES ('E002', '2023-Jul-05', 8, 7, 7.5, 'Aprovado', 1);

INSERT INTO matricula(raaluno, dataMatricula, n1, n2, nf, resultado, idcurso) 
VALUES ('E003', '2024-Jan-05', 9.5, 8, 8.75, 'Aprovado', 1);

INSERT INTO matricula(raaluno, dataMatricula, n1, n2, nf, resultado, idcurso) 
VALUES ('E004', '2023-Jan-05', 6, 6, 6, 'Reprovado', 3);

INSERT INTO matricula(raaluno, dataMatricula, n1, n2, nf, resultado, idcurso) 
VALUES ('E005', '2024-Jul-05', 6.5, 6, 6.25, 'Reprovado', 4);

INSERT INTO matricula(raaluno, dataMatricula, n1, n2, nf, resultado, idcurso) 
VALUES ('E006', '2024-Jul-05', 6.5, 6, 6.25, 'Reprovado', 2);

INSERT INTO matricula(raaluno, dataMatricula, n1, n2, nf, resultado, idcurso) 
VALUES ('E007', '2024-Jul-05', 6.5, 6, 6.25, 'Reprovado', 2);

INSERT INTO matricula(raaluno, dataMatricula, n1, n2, nf, resultado, idcurso) 
VALUES ('E008', '2024-Jul-05', 6.5, 6, 6.25, 'Reprovado', 2);

INSERT INTO matricula(raaluno, dataMatricula, n1, n2, nf, resultado, idcurso) 
VALUES ('P001', '2024-Aug-05', 9, 9, 9, 'Aprovado', 4);
