USE cotador;

-- ADMINISTRADORAS
insert into Administradora (id, nome) values (1, 'ALLCARE');
insert into Administradora (id, nome) values (2, 'ELO');
insert into Administradora (id, nome) values (3, 'NUNES E GROSSI');
insert into Administradora (id, nome) values (4, 'QUALICORP');


-- OPERADORAS
insert into Operadora (id, nome, cor) values (1, 'AMIL', '#000000');
insert into Operadora (id, nome, cor) values (2, 'AMIL ONE', '#000000');
insert into Operadora (id, nome, cor) values (3, 'BRADESCO', '#000000');
insert into Operadora (id, nome, cor) values (4, 'SEGUROS UNIMED', '#000000');
insert into Operadora (id, nome, cor) values (5, 'SULAMÉRICA', '#000000');
insert into Operadora (id, nome, cor) values (6, 'UNIMED - CNU', '#000000');


-- HOSPITAIS
insert into Hospital (id, local, nome) values (1, 'CEILÂNDIA', 'HOSPITAL SÃO FRANCISCO');
insert into Hospital (id, local, nome) values (2, 'CEILÂNDIA', 'PRONTO SOCORRO DE FRATURAS');
insert into Hospital (id, local, nome) values (3, 'GAMA', 'HOSPITAL MARIA AUXILIADORA');
insert into Hospital (id, local, nome) values (4, 'TAGUATINGA', 'HOSPITAL ANNA NERY');
insert into Hospital (id, local, nome) values (5, 'TAGUATINGA', 'HOSPITAL SANTA MARTA');
insert into Hospital (id, local, nome) values (6, 'TAGUATINGA', 'HOSPITAL ANCHIETA');
insert into Hospital (id, local, nome) values (7, 'CRUZEIRO', 'HOSPITAL SÃO MATEUS');
insert into Hospital (id, local, nome) values (8, 'SUDOESTE', 'MATERNIDADE BRASÍLIA');
insert into Hospital (id, local, nome) values (9, 'LAGO SUL', 'HOSPITAL DAHER');
insert into Hospital (id, local, nome) values (10, 'LAGO SUL', 'HOSPITAL BRASÍLIA');
insert into Hospital (id, local, nome) values (11, 'ASA NORTE', 'HOSPITAL ALBERT SABIN');
insert into Hospital (id, local, nome) values (12, 'ASA NORTE', 'HOSPITAL PRONTONORTE');
insert into Hospital (id, local, nome) values (13, 'ASA NORTE', 'HOSPITAL SANTA HELENA');
insert into Hospital (id, local, nome) values (14, 'ASA SUL', 'HOSPITAL PACINI DE OFTALMOLOGIA');
insert into Hospital (id, local, nome) values (15, 'ASA SUL', 'HOB BRASÍLIA');
insert into Hospital (id, local, nome) values (16, 'ASA SUL', 'CENTRO BRASILEIRO DE VISÃO (CBV)');
insert into Hospital (id, local, nome) values (17, 'ASA SUL', 'HOSPITAL UROLÓGICO DE BRASÍLIA');
insert into Hospital (id, local, nome) values (18, 'ASA SUL', 'HOSPITAL DO CORAÇÃO DO BRASIL');
insert into Hospital (id, local, nome) values (19, 'ASA SUL', 'HOSPITAL HOME');
insert into Hospital (id, local, nome) values (20, 'ASA SUL', 'HOSPITAL ALVORADA BRASÍLIA');
insert into Hospital (id, local, nome) values (21, 'ASA SUL', 'HOSPITAL SANTA LUZIA');
insert into Hospital (id, local, nome) values (22, 'ASA SUL', 'HOSPITAL SANTA LÚCIA');
insert into Hospital (id, local, nome) values (23, 'ASA SUL', 'HOSPITAL SÍRIO LIBANES');
insert into Hospital (id, local, nome) values (24, 'ASA SUL', 'HOSPITAL DF STAR');
insert into Hospital (id, local, nome) values (25, 'SP', 'HOSPITAL SÍRIO LIBANES SP');
insert into Hospital (id, local, nome) values (26, 'SP', 'HOSPITAL ALBERT EINSTEIN SP');


-- LABORATORIOS
insert into Laboratorio (id, nome, local) values (1, 'SANTA PAULA', 'DF');
insert into Laboratorio (id, nome, local) values (2, 'SABIN', 'DF');
insert into Laboratorio (id, nome, local) values (3, 'EXAME', 'DF');
insert into Laboratorio (id, nome, local) values (4, 'DIAGNÓSTICO', 'DF');
insert into Laboratorio (id, nome, local) values (5, 'FLEURY', 'DF');


-- PROFISSOES
insert into Profissao (id, nome) values (1, 'Autônomo');
insert into Profissao (id, nome) values (2, 'Empresário');
insert into Profissao (id, nome) values (3, 'Empresário Individual');
insert into Profissao (id, nome) values (4, 'Comerciário');
insert into Profissao (id, nome) values (5, 'Empregados do Conselho de Adm');
insert into Profissao (id, nome) values (6, 'Servidor Público Distrital');
insert into Profissao (id, nome) values (7, 'Servidor Público Federal');
insert into Profissao (id, nome) values (8, 'Delegado da Polícia Federal');
insert into Profissao (id, nome) values (9, 'Defensor Público');
insert into Profissao (id, nome) values (10, 'Juiz Federal');
insert into Profissao (id, nome) values (11, 'Servidor da Receita');
insert into Profissao (id, nome) values (12, 'Servidor do Detran');
insert into Profissao (id, nome) values (13, 'Servidor do Ministério Público Federal');
insert into Profissao (id, nome) values (14, 'Magistrado');
insert into Profissao (id, nome) values (15, 'Estudante Ed Infantil');
insert into Profissao (id, nome) values (16, 'Estudante Secundarista');
insert into Profissao (id, nome) values (17, 'Estudante de Faculdade');
insert into Profissao (id, nome) values (18, 'Estudante de Direito');
insert into Profissao (id, nome) values (19, 'Estudante de Contabilidade 7º  em diante');
insert into Profissao (id, nome) values (20, 'Profissional Liberal');
insert into Profissao (id, nome) values (21, 'Administrador com CRA');
insert into Profissao (id, nome) values (22, 'Administrador sem CRA');
insert into Profissao (id, nome) values (23, 'Advogado C/ OAB');
insert into Profissao (id, nome) values (24, 'Advogado s/ OAB');
insert into Profissao (id, nome) values (25, 'Estagiário Advogado');
insert into Profissao (id, nome) values (26, 'Agronomo');
insert into Profissao (id, nome) values (27, 'Arquiteto');
insert into Profissao (id, nome) values (28, 'Biologo');
insert into Profissao (id, nome) values (29, 'Contador');
insert into Profissao (id, nome) values (30, 'Dentista');
insert into Profissao (id, nome) values (31, 'Economista');
insert into Profissao (id, nome) values (32, 'Educação Física');
insert into Profissao (id, nome) values (33, 'Engenheiro');
insert into Profissao (id, nome) values (34, 'Farmacêutico');
insert into Profissao (id, nome) values (35, 'Fisioterapeuta');
insert into Profissao (id, nome) values (36, 'Médico');
insert into Profissao (id, nome) values (37, 'Marinheiro');
insert into Profissao (id, nome) values (38, 'Nutricionista');
insert into Profissao (id, nome) values (39, 'Piloto de Aviação');
insert into Profissao (id, nome) values (40, 'Psicólogo');
insert into Profissao (id, nome) values (41, 'Psicopedagogo');
insert into Profissao (id, nome) values (42, 'Professor Particular');
insert into Profissao (id, nome) values (43, 'Técnico em Odontologia');
insert into Profissao (id, nome) values (44, 'Técnico Industrial');
insert into Profissao (id, nome) values (45, 'Tradutor');
insert into Profissao (id, nome) values (46, 'Veterinário');


-- ENTIDADES
insert into Entidade (id, nome) values (1, 'ABECA');
insert into Entidade (id, nome) values (2, 'ABESP DF');
insert into Entidade (id, nome) values (3, 'ABRABDIR');
insert into Entidade (id, nome) values (4, 'ABRACEM');
insert into Entidade (id, nome) values (5, 'ACRESP');
insert into Entidade (id, nome) values (6, 'ADPF');
insert into Entidade (id, nome) values (7, 'AESP/DF');
insert into Entidade (id, nome) values (8, 'AFB');
insert into Entidade (id, nome) values (9, 'AJUFE');
insert into Entidade (id, nome) values (10, 'AMAGIS');
insert into Entidade (id, nome) values (11, 'AMAI');
insert into Entidade (id, nome) values (12, 'AMB');
insert into Entidade (id, nome) values (13, 'AMBr');
insert into Entidade (id, nome) values (14, 'AMN');
insert into Entidade (id, nome) values (15, 'ANADEF');
insert into Entidade (id, nome) values (16, 'ANAMATRA');
insert into Entidade (id, nome) values (17, 'ANATO');
insert into Entidade (id, nome) values (18, 'ASCOM');
insert into Entidade (id, nome) values (19, 'ASMPF');
insert into Entidade (id, nome) values (20, 'CAA-DF');
insert into Entidade (id, nome) values (21, 'CNPL');
insert into Entidade (id, nome) values (22, 'CORECON-DF');
insert into Entidade (id, nome) values (23, 'CRA-DF');
insert into Entidade (id, nome) values (24, 'CRBio-4');
insert into Entidade (id, nome) values (25, 'CREF7');
insert into Entidade (id, nome) values (26, 'CRF-DF');
insert into Entidade (id, nome) values (27, 'CRO-DF');
insert into Entidade (id, nome) values (28, 'CRP-01');
insert into Entidade (id, nome) values (29, 'FEBRAD');
insert into Entidade (id, nome) values (30, 'FECOMÉRCIO');
insert into Entidade (id, nome) values (31, 'FECOMÉRCIO - DF');
insert into Entidade (id, nome) values (32, 'FEIFAR');
insert into Entidade (id, nome) values (33, 'FENAMEV');
insert into Entidade (id, nome) values (34, 'FETRACOM');
insert into Entidade (id, nome) values (35, 'FETRATUH');
insert into Entidade (id, nome) values (36, 'FINAFITO');
insert into Entidade (id, nome) values (37, 'FNN');
insert into Entidade (id, nome) values (38, 'FNO');
insert into Entidade (id, nome) values (39, 'MÚTUA');
insert into Entidade (id, nome) values (40, 'SASPB');
insert into Entidade (id, nome) values (41, 'SINDICOM-DF');
insert into Entidade (id, nome) values (42, 'SINDICONTA-DF');
insert into Entidade (id, nome) values (43, 'SINDMÉDICO - DF');
insert into Entidade (id, nome) values (44, 'SINDPSICOP - BR');
insert into Entidade (id, nome) values (45, 'SINPROEP - DF');
insert into Entidade (id, nome) values (46, 'SINPROEP');
insert into Entidade (id, nome) values (47, 'UBES');
insert into Entidade (id, nome) values (48, 'UNE');


-- COPARTICIPACOES
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (1, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (2, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (3, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (4, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (5, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (6, 30, 30, 30, 0, 30, 30.00, 30.00, 5.00, 0, 60.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (7, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (8, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (9, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (10,30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (11,30, 30, 30, 0, 30, 30.00, 110.00, 25.00, 200.00, 60.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (12,30, 30, 30, 0, 30, 30.00, 110.00, 25.00, 220.00, 60.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (13, 0, 30, 30, 0, 0, 25.00, 140.00, 30.00, 0, 50.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (14, 0, 30, 30, 0, 0, 25.00, 140.00, 30.00, 0, 50.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (15, 0, 30, 30, 0, 0, 25.00, 140.00, 30.00, 0, 50.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (16, 0, 30, 30, 0, 0, 25.00, 140.00, 30.00, 0, 50.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (17, 0, 30, 30, 0, 0, 25.00, 140.00, 30.00, 0, 50.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (18, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (19, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (20, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (21, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (22, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (23, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (24, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (25, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (26, 30, 30, 30, 0, 30, 0, 0, 0, 0, 0);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (27, 30, 30, 30, 0, 30, 25.00, 100.00, 20.00, 180.00, 50.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (28, 30, 30, 30, 0, 30, 30.00, 110.00, 25.00, 200.00, 60.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (29, 30, 30, 30, 0, 30, 30.00, 110.00, 25.00, 220.00, 60.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (30, 30, 30, 30, 0, 30, 35.00, 130.00, 35.00, 370.00, 70.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (31, 30, 30, 30, 0, 30, 35.00, 130.00, 35.00, 370.00, 70.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (32, 30, 30, 30, 0, 30, 70.00, 150.00, 45.00, 450.00, 140.00);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (33, 30, 30, 30, 0, 30, 70.00, 150.00, 45.00, 450.00, 140.00);


-- PRODUTOS
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (1, 1, true, 'EFETIVO', 114.95, 1, 3);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (2, 1, true, 'FLEX', 114.95, 2, 3);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (3, 1, true, 'TOP E', 114.95, 3, 3);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (4, 1, true, 'TOP A', 114.95, 4, 3);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (5, 1, true, 'TOP PLUS', 459.81, 5, 3);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (6, 1, true, 'EFETIVO', 114.95, 6, 3);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (7, 1, true, 'FLEX', 114.95, 7, 3);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (8, 1, true, 'TOP E', 114.95, 8, 3);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (9, 1, true, 'TOP A', 114.95, 9, 3);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (10, 1, true, 'TOP PLUS', 459.81, 10, 3);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (11, 1, true, '350', 80, 11, 1);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (12, 1, true, '400 ', 80, 12, 1);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (13, 0, true, 'CLÁSSICO', 0, 13, 6);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (14, 1, true, 'ESTILO', 70, 14, 6);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (15, 1, true, 'ABSOLUTO', 140.00, 15, 6);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (16, 1, true, 'SUPERIOR', 210.00, 16, 6);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (17, 1, true, 'EXCLUSIVO', 560.00, 17, 6);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (18, 1, true, 'COMPACTO', 70.00, 18, 4);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (19, 1, true, 'EFETIVO', 70.00, 19, 4);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (20, 1, true, 'COMPLETO', 105.00, 20, 4);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (21, 1, true, 'SUPERIOR', 210.00, 21, 4);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (22, 1, true, 'SÊNIOR', 560.00, 22, 4);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (23, 1, true, 'EXATO', 81.00, 23, 5);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (24, 1, true, 'ESPECIAL', 153.00, 24, 5);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (25, 1, true, 'EXECUTIVO', 337.50, 25, 5);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (26, 1, true, 'PRESTIGE', 810.00, 26, 5);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (27, 2, true, 'S80', 0, 27, 1);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (28, 1, true, 'S380', 80.00, 28, 1);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (29, 1, true, 'S450', 80.00, 29, 1);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (30, 1, true, 'S750', 160.00, 30, 1);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (31, 1, true, 'S1500', 160.00, 31, 2);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (32, 1, true, 'S2500', 360.00, 32, 2);
insert into Produto (id, abrangencia, ativo, nome, reembolso, coparticipacao_id, operadora_id) values (33, 1, true, 'S6500', 440.00, 33, 2);

-- PRODUTO_HOSPITAL
insert into Produto_Hospital (produto_id, hospitais_id) values (1, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (1, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (6, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (6, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (11, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (13, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (13, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (27, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 5);


-- TABELA
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, nome, preferencial, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (1, 0, true, true, 6, 2, 1, 'Tabela 1', false, 4, 3, 0, 1, 1);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, nome, preferencial, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (2, 1, null, true, 8, 8, 9, 'Tabela 2', false, 6, 7, 1, 4, 3);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, nome, preferencial, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (3, 0, false, false, 6, 2, 1, 'Tabela 3', true, 8, 5, 0, 2, 4);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, nome, preferencial, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (4, 0, null, true, 8, 5, 8, 'Tabela 4', true, 4, 9, 11, 1, 1);


-- TABELA-PRODUTO
insert into Tabela_Produto (Tabela_id, produtos_id) values (1, 1);
insert into Tabela_Produto (Tabela_id, produtos_id) values (2, 3);
insert into Tabela_Produto (Tabela_id, produtos_id) values (3, 4);


-- ENTIDADE-PROFISSAO
insert into Entidade_Profissao (entidade_id, profissoes_id) values (18, 3);
insert into Entidade_Profissao (entidade_id, profissoes_id) values (35, 3);
insert into Entidade_Profissao (entidade_id, profissoes_id) values (31, 3);


-- OPCAO
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (1, 0, true, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 1);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (2, 1, true, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 3, 2);
