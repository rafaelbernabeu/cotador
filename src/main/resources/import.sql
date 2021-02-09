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
INSERT INTO Administradora (id, nome) VALUES (5, 'X');

-- OPERADORAS
INSERT INTO Operadora (id, nome) VALUES (1, 'AMIL');
INSERT INTO Operadora (id, nome) VALUES (2, 'AMIL ONE');
INSERT INTO Operadora (id, nome) VALUES (3, 'BRADESCO');
INSERT INTO Operadora (id, nome) VALUES (4, 'SEGUROS UNIMED');
INSERT INTO Operadora (id, nome) VALUES (5, 'SULAMÉRICA');
INSERT INTO Operadora (id, nome) VALUES (6, 'UNIMED - CNU');

-- ENTIDADE
INSERT INTO Entidade (id, nome) VALUES (1, 'Entidade1');
INSERT INTO Entidade (id, nome) VALUES (2, 'Entidade2');
INSERT INTO Entidade (id, nome) VALUES (3, 'Entidade3');
INSERT INTO Entidade (id, nome) VALUES (4, 'Entidade4');

-- PROFISSAO
INSERT INTO Profissao (id, nome) VALUES (1, 'Profissao1');
INSERT INTO Profissao (id, nome) VALUES (2, 'Profissao2');
INSERT INTO Profissao (id, nome) VALUES (3, 'Profissao3');
INSERT INTO Profissao (id, nome) VALUES (4, 'Profissao4');
INSERT INTO Profissao (id, nome) VALUES (5, 'Profissao5');

-- PRODUTOS
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (4, 'EFETIVO', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (5, 'FLEX', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (6, 'TOP E', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (7, 'TOP A', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (36, 'TOP PLUS', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (17, 'EFETIVO', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (22, 'FLEX', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (23, 'TOP E', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (24, 'TOP A', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (25, 'TOP PLUS', 'NACIONAL', 3, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (35, '350', 'NACIONAL', 1, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (8, '400 ', 'NACIONAL', 1, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (9, 'CLÁSSICO', 'REGIONAL', 6, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (10, 'ESTILO', 'NACIONAL', 6, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (11, 'ABSOLUTO', 'NACIONAL', 6, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (12, 'SUPERIOR', 'NACIONAL', 6, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (38, 'EXCLUSIVO', 'NACIONAL', 6, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (18, 'COMPACTO', 'NACIONAL', 4, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (19, 'EFETIVO', 'NACIONAL', 4, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (20, 'COMPLETO', 'NACIONAL', 4, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (21, 'SUPERIOR', 'NACIONAL', 4, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (37, 'SÊNIOR', 'NACIONAL', 4, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (26, 'EXATO', 'NACIONAL', 5, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (27, 'ESPECIAL', 'NACIONAL', 5, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (28, 'EXECUTIVO', 'NACIONAL', 5, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (16, 'PRESTIGE', 'NACIONAL', 5, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (29, 'S80', 'GRUPO_DE_ESTADOS', 1, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (30, 'S380', 'NACIONAL', 1, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (31, 'S450', 'NACIONAL', 1, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (32, 'S750', 'NACIONAL', 1, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (39, 'S1500', 'NACIONAL', 2, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (33, 'S2500', 'NACIONAL', 2, true);
INSERT INTO Produto (id, nome, tipoAbrangencia, administradora_id, ativo) VALUES (34, 'S6500', 'NACIONAL', 2, true);



































-- H33O34SPITAIS

-- LABORATORIOS
INSERT INTO Laboratorio (id, nome) VALUES (1, 'SANTA PAULA');
INSERT INTO Laboratorio (id, nome) VALUES (2, 'SABIN');
INSERT INTO Laboratorio (id, nome) VALUES (3, 'EXAME');
INSERT INTO Laboratorio (id, nome) VALUES (4, 'DIAGNÓSTICO');
INSERT INTO Laboratorio (id, nome) VALUES (5, 'FLEURY');







--

