USE cotador;

-- ESTADOS

INSERT INTO Estado (id, sigla, nome) VALUES (1, 'AC','Acre');
INSERT INTO Estado (id, sigla, nome) VALUES (2, 'AL','Alagoas');
INSERT INTO Estado (id, sigla, nome) VALUES (3, 'AM','Amazonas');
INSERT INTO Estado (id, sigla, nome) VALUES (4, 'AP','Amapá');
INSERT INTO Estado (id, sigla, nome) VALUES (5, 'BA','Bahia');
INSERT INTO Estado (id, sigla, nome) VALUES (6, 'CE','Ceará');
INSERT INTO Estado (id, sigla, nome) VALUES (7, 'DF','Distrito Federal');
INSERT INTO Estado (id, sigla, nome) VALUES (8, 'ES','Espírito Santo');
INSERT INTO Estado (id, sigla, nome) VALUES (9, 'GO','Goiás');
INSERT INTO Estado (id, sigla, nome) VALUES (10, 'MA','Maranhão');
INSERT INTO Estado (id, sigla, nome) VALUES (12, 'MG','Minas Gerais');
INSERT INTO Estado (id, sigla, nome) VALUES (13, 'MS','Mato Grosso do Sul');
INSERT INTO Estado (id, sigla, nome) VALUES (14, 'MT','Mato Grosso');
INSERT INTO Estado (id, sigla, nome) VALUES (15, 'PA','Pará');
INSERT INTO Estado (id, sigla, nome) VALUES (16, 'PB','Paraíba');
INSERT INTO Estado (id, sigla, nome) VALUES (17, 'PE','Pernambuco');
INSERT INTO Estado (id, sigla, nome) VALUES (18, 'PI','Piauí');
INSERT INTO Estado (id, sigla, nome) VALUES (19, 'PR','Paraná');
INSERT INTO Estado (id, sigla, nome) VALUES (20, 'RJ','Rio de Janeiro');
INSERT INTO Estado (id, sigla, nome) VALUES (21, 'RN','Rio Grande do Norte');
INSERT INTO Estado (id, sigla, nome) VALUES (22, 'RO','Rondônia');
INSERT INTO Estado (id, sigla, nome) VALUES (23, 'RR','Roraima');
INSERT INTO Estado (id, sigla, nome) VALUES (24, 'RS','Rio Grande do Sul');
INSERT INTO Estado (id, sigla, nome) VALUES (25, 'SC','Santa Catarina');
INSERT INTO Estado (id, sigla, nome) VALUES (26, 'SE','Sergipe');
INSERT INTO Estado (id, sigla, nome) VALUES (27, 'SP','São Paulo');
INSERT INTO Estado (id, sigla, nome) VALUES (28, 'TO','Tocantins');

-- ADMINISTRADORAS
INSERT INTO Administradora (id, nome) VALUES (1, 'ALLCARE');
INSERT INTO Administradora (id, nome) VALUES (2, 'ELO');
INSERT INTO Administradora (id, nome) VALUES (3, 'NUNES E GROSSI');
INSERT INTO Administradora (id, nome) VALUES (4, 'QUALICORP');

-- OPERADORAS
INSERT INTO Operadora (id, nome) VALUES (1, 'AMIL');
INSERT INTO Operadora (id, nome) VALUES (2, 'AMIL ONE');
INSERT INTO Operadora (id, nome) VALUES (3, 'BRADESCO');
INSERT INTO Operadora (id, nome) VALUES (4, 'SEGUROS UNIMED');
INSERT INTO Operadora (id, nome) VALUES (5, 'SULAMÉRICA');
INSERT INTO Operadora (id, nome) VALUES (6, 'UNIMED - CNU');

-- ENTIDADES
INSERT INTO Entidade (id, nome) VALUES (1, 'Entidade1');
INSERT INTO Entidade (id, nome) VALUES (2, 'Entidade2');
INSERT INTO Entidade (id, nome) VALUES (3, 'Entidade3');
INSERT INTO Entidade (id, nome) VALUES (4, 'Entidade4');

-- PROFISSOES
INSERT INTO Profissao (id, nome) VALUES (1, 'Autônomo');
INSERT INTO Profissao (id, nome) VALUES (2, 'Empresário');
INSERT INTO Profissao (id, nome) VALUES (3, 'Empresário Individual');
INSERT INTO Profissao (id, nome) VALUES (4, 'Comerciário');
INSERT INTO Profissao (id, nome) VALUES (5, 'Empregados do Conselho de Adm');
INSERT INTO Profissao (id, nome) VALUES (6, 'Servidor Público Distrital');
INSERT INTO Profissao (id, nome) VALUES (7, 'Servidor Público Federal');
INSERT INTO Profissao (id, nome) VALUES (8, 'Delegado da Polícia Federal');
INSERT INTO Profissao (id, nome) VALUES (9, 'Defensor Público');
INSERT INTO Profissao (id, nome) VALUES (10, 'Juiz Federal');
INSERT INTO Profissao (id, nome) VALUES (11, 'Servidor da Receita');
INSERT INTO Profissao (id, nome) VALUES (12, 'Servidor do Detran');
INSERT INTO Profissao (id, nome) VALUES (13, 'Servidor do Ministério Público Federal');
INSERT INTO Profissao (id, nome) VALUES (14, 'Magistrado');
INSERT INTO Profissao (id, nome) VALUES (15, 'Estudante Ed Infantil');
INSERT INTO Profissao (id, nome) VALUES (16, 'Estudante Secundarista');
INSERT INTO Profissao (id, nome) VALUES (17, 'Estudante de Faculdade');
INSERT INTO Profissao (id, nome) VALUES (18, 'Estudante de Direito');
INSERT INTO Profissao (id, nome) VALUES (19, 'Estudante de Contabilidade 7º  em diante');
INSERT INTO Profissao (id, nome) VALUES (20, 'Profissional Liberal');
INSERT INTO Profissao (id, nome) VALUES (21, 'Administrador com CRA');
INSERT INTO Profissao (id, nome) VALUES (22, 'Administrador sem CRA');
INSERT INTO Profissao (id, nome) VALUES (23, 'Advogado C/ OAB');
INSERT INTO Profissao (id, nome) VALUES (24, 'Advogado s/ OAB');
INSERT INTO Profissao (id, nome) VALUES (25, 'Estagiário Advogado');
INSERT INTO Profissao (id, nome) VALUES (26, 'Agronomo');
INSERT INTO Profissao (id, nome) VALUES (27, 'Arquiteto');
INSERT INTO Profissao (id, nome) VALUES (28, 'Biologo');
INSERT INTO Profissao (id, nome) VALUES (29, 'Contador');
INSERT INTO Profissao (id, nome) VALUES (30, 'Dentista');
INSERT INTO Profissao (id, nome) VALUES (31, 'Economista');
INSERT INTO Profissao (id, nome) VALUES (32, 'Educação Física');
INSERT INTO Profissao (id, nome) VALUES (33, 'Engenheiro');
INSERT INTO Profissao (id, nome) VALUES (34, 'Farmacêutico');
INSERT INTO Profissao (id, nome) VALUES (35, 'Fisioterapeuta');
INSERT INTO Profissao (id, nome) VALUES (36, 'Médico');
INSERT INTO Profissao (id, nome) VALUES (37, 'Marinheiro');
INSERT INTO Profissao (id, nome) VALUES (38, 'Nutricionista');
INSERT INTO Profissao (id, nome) VALUES (39, 'Piloto de Aviação');
INSERT INTO Profissao (id, nome) VALUES (40, 'Psicólogo');
INSERT INTO Profissao (id, nome) VALUES (41, 'Psicopedagogo');
INSERT INTO Profissao (id, nome) VALUES (42, 'Professor Particular');
INSERT INTO Profissao (id, nome) VALUES (43, 'Técnico em Odontologia');
INSERT INTO Profissao (id, nome) VALUES (44, 'Técnico Industrial');
INSERT INTO Profissao (id, nome) VALUES (45, 'Tradutor');
INSERT INTO Profissao (id, nome) VALUES (46, 'Veterinário');



-- HOSPITAIS
INSERT INTO Hospital (id, nome) VALUES (1, 'Hospital1');
INSERT INTO Hospital (id, nome) VALUES (2, 'Hospital2');
INSERT INTO Hospital (id, nome) VALUES (3, 'Hospital3');
INSERT INTO Hospital (id, nome) VALUES (4, 'Hospital4');
INSERT INTO Hospital (id, nome) VALUES (5, 'Hospital5');

-- LABORATORIOS
INSERT INTO Laboratorio (id, nome) VALUES (1, 'Laboratorio1');
INSERT INTO Laboratorio (id, nome) VALUES (2, 'Laboratorio2');
INSERT INTO Laboratorio (id, nome) VALUES (3, 'Laboratorio3');
INSERT INTO Laboratorio (id, nome) VALUES (4, 'Laboratorio4');
INSERT INTO Laboratorio (id, nome) VALUES (5, 'Laboratorio5');

-- PRODUTOS
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (1, 'EFETIVO', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (2, 'FLEX', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (3, 'TOP E', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (4, 'TOP A', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (5, 'TOP PLUS', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (6, 'EFETIVO', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (7, 'FLEX', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (8, 'TOP E', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (9, 'TOP A', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (10, 'TOP PLUS', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (11, '350', 'NACIONAL', 1, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (12, '400 ', 'NACIONAL', 1, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (13, 'CLÁSSICO', 'REGIONAL', 6, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (14, 'ESTILO', 'NACIONAL', 6, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (15, 'ABSOLUTO', 'NACIONAL', 6, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (16, 'SUPERIOR', 'NACIONAL', 6, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (17, 'EXCLUSIVO', 'NACIONAL', 6, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (18, 'COMPACTO', 'NACIONAL', 4, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (19, 'EFETIVO', 'NACIONAL', 4, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (20, 'COMPLETO', 'NACIONAL', 4, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (21, 'SUPERIOR', 'NACIONAL', 4, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (22, 'SÊNIOR', 'NACIONAL', 4, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (23, 'EXATO', 'NACIONAL', 5, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (24, 'ESPECIAL', 'NACIONAL', 5, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (25, 'EXECUTIVO', 'NACIONAL', 5, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (26, 'PRESTIGE', 'NACIONAL', 5, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (27, 'S80', 'GRUPO_DE_ESTADOS', 1, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (28, 'S380', 'NACIONAL', 1, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (29, 'S450', 'NACIONAL', 1, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (30, 'S750', 'NACIONAL', 1, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (31, 'S1500', 'NACIONAL', 2, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (32, 'S2500', 'NACIONAL', 2, true);
INSERT INTO Produto (id, nome, administradora_id, tipoAbrangencia, ativo) VALUES (33, 'S6500', 'NACIONAL', 2, true);



































-- H33O34SPITAIS

-- LABORATORIOS
INSERT INTO Laboratorio (id, nome) VALUES (1, 'SANTA PAULA');
INSERT INTO Laboratorio (id, nome) VALUES (2, 'SABIN');
INSERT INTO Laboratorio (id, nome) VALUES (3, 'EXAME');
INSERT INTO Laboratorio (id, nome) VALUES (4, 'DIAGNÓSTICO');
INSERT INTO Laboratorio (id, nome) VALUES (5, 'FLEURY');







--

