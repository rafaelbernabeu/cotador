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

-- PRODUTO_LABORATORIO
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (1, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (1, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (2, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (2, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (3, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (3, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (4, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (4, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (5, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (5, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (6, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (6, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (7, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (7, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (8, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (8, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (9, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (9, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (10, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (10, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (11, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (12, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (13, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (13, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (14, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (14, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (15, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (15, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (15, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (16, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (16, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (16, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (17, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (17, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (17, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (18, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (18, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (18, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (18, 4);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (19, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (19, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (19, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (19, 4);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (20, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (20, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (20, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (20, 4);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (21, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (21, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (21, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (21, 4);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (22, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (22, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (22, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (22, 4);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (22, 5);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (23, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (23, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (24, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (24, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (25, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (25, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (26, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (26, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (26, 5);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (27, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (28, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (29, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (30, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (30, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (30, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (30, 5);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (31, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (31, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (31, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (31, 5);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (32, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (33, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (33, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (33, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (33, 5);


-- PRODUTO_HOSPITAL
insert into Produto_Hospital (produto_id, hospitais_id) values (1, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (1, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (1, 3);
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 4); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 5); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 6); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 7); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 8); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 9); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 10); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 11); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 12); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 13); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 14); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 15); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 16); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (1, 17);
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 18); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (1, 20);
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 21); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (1, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (2, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 5);
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 6); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 7); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 8);
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 9); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 10); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 11); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 12); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 13);
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 14); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 15); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 16); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 17);
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 18); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 20);
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 21); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (2, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (3, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 11);
# insert into Produto_Hospital (produto_id, hospitais_id) values (3, 12); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 13);
# insert into Produto_Hospital (produto_id, hospitais_id) values (3, 14); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (3, 15); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (3, 16); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 22);
# insert into Produto_Hospital (produto_id, hospitais_id) values (3, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (3, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (3, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (3, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (4, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 11);
# insert into Produto_Hospital (produto_id, hospitais_id) values (4, 12); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 13);
# insert into Produto_Hospital (produto_id, hospitais_id) values (4, 14); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (4, 15); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (4, 16); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 22);
# insert into Produto_Hospital (produto_id, hospitais_id) values (4, 23); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 24);
# insert into Produto_Hospital (produto_id, hospitais_id) values (4, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (4, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (5, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 11);
# insert into Produto_Hospital (produto_id, hospitais_id) values (5, 12); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 13);
# insert into Produto_Hospital (produto_id, hospitais_id) values (5, 14); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (5, 15); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (5, 16); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 22);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 23);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 24);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 25);
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 26);

insert into Produto_Hospital (produto_id, hospitais_id) values (6, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (6, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (6, 3);
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 4); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 5); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 6); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 7); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 8); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 9); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 10); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 11); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 12); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 13); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 14); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 15); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 16); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (6, 17);
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 18); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (6, 20);
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 21); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (6, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (7, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 5);
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 6); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 7); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 8);
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 9); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 10); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 11); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 12); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 13);
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 14); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 15); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 16); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 17);
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 18); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 20);
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 21); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (7, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (8, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 11);
# insert into Produto_Hospital (produto_id, hospitais_id) values (8, 12); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 13);
# insert into Produto_Hospital (produto_id, hospitais_id) values (8, 14); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (8, 15); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (8, 16); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 22);
# insert into Produto_Hospital (produto_id, hospitais_id) values (8, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (8, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (8, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (8, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (9, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 11);
# insert into Produto_Hospital (produto_id, hospitais_id) values (9, 12); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 13);
# insert into Produto_Hospital (produto_id, hospitais_id) values (9, 14); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (9, 15); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (9, 16); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 22);
# insert into Produto_Hospital (produto_id, hospitais_id) values (9, 23); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 24);
# insert into Produto_Hospital (produto_id, hospitais_id) values (9, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (9, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (10, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 11);
# insert into Produto_Hospital (produto_id, hospitais_id) values (10, 12); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 13);
# insert into Produto_Hospital (produto_id, hospitais_id) values (10, 14); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (10, 15); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (10, 16); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 22);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 23);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 24);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 25);
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 26);

insert into Produto_Hospital (produto_id, hospitais_id) values (11, 1);
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 2); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (11, 3);
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 4); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 5); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 6); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (11, 7);
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 8); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 9); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 10); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (11, 12);
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 13); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 14); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (11, 15);
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 16); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 17); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 18); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (11, 20);
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 21); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (11, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (12, 1);
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 2); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 3);
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 4); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 5);
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 6); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 10);
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 13);
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 14); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 15);
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 16); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 17); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 18); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 20);
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 21); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (12, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (13, 1);
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 2); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (13, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (13, 4);
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 5); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 6); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 7); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 8); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 9); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 10); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 11); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 12); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (13, 13);
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 14); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (13, 15);
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 16); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 17); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 18); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 19); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 20); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (13, 21);
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (13, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (14, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 5);
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 6); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 7);
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 8); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 9); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 10); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 11); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 12); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 15);
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 16); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 17); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 18); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 19); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 20); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 21);
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (14, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (15, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 5);
# insert into Produto_Hospital (produto_id, hospitais_id) values (15, 6); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 9);
# insert into Produto_Hospital (produto_id, hospitais_id) values (15, 10); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (15, 11); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (15, 12); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 15);
# insert into Produto_Hospital (produto_id, hospitais_id) values (15, 16); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (15, 17); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 18);
# insert into Produto_Hospital (produto_id, hospitais_id) values (15, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 21);
# insert into Produto_Hospital (produto_id, hospitais_id) values (15, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (15, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (15, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (15, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (15, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (16, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 5);
# insert into Produto_Hospital (produto_id, hospitais_id) values (16, 6); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 10);
# insert into Produto_Hospital (produto_id, hospitais_id) values (16, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 18);
# insert into Produto_Hospital (produto_id, hospitais_id) values (16, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 22);
# insert into Produto_Hospital (produto_id, hospitais_id) values (16, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (16, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (16, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (16, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (17, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 5);
# insert into Produto_Hospital (produto_id, hospitais_id) values (17, 6); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 10);
# insert into Produto_Hospital (produto_id, hospitais_id) values (17, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 18);
# insert into Produto_Hospital (produto_id, hospitais_id) values (17, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 22);
# insert into Produto_Hospital (produto_id, hospitais_id) values (17, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (17, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (17, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (17, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (18, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 5);
# insert into Produto_Hospital (produto_id, hospitais_id) values (18, 6); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 11);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 12);
# insert into Produto_Hospital (produto_id, hospitais_id) values (18, 13); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (18, 14); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (18, 15); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (18, 16); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 17);
# insert into Produto_Hospital (produto_id, hospitais_id) values (18, 18); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 20);
# insert into Produto_Hospital (produto_id, hospitais_id) values (18, 21); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (18, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (18, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (18, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (18, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (18, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (19, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 5);
# insert into Produto_Hospital (produto_id, hospitais_id) values (19, 6); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 11);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 12);
# insert into Produto_Hospital (produto_id, hospitais_id) values (19, 13); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (19, 14); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (19, 15); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (19, 16); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 17);
# insert into Produto_Hospital (produto_id, hospitais_id) values (19, 18); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 20);
# insert into Produto_Hospital (produto_id, hospitais_id) values (19, 21); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (19, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (19, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (19, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (19, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (19, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (20, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 5);
# insert into Produto_Hospital (produto_id, hospitais_id) values (20, 6); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 11);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 15);
# insert into Produto_Hospital (produto_id, hospitais_id) values (20, 16); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 17);
# insert into Produto_Hospital (produto_id, hospitais_id) values (20, 18); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 20);
# insert into Produto_Hospital (produto_id, hospitais_id) values (20, 21); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (20, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (20, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (20, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (20, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (20, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (21, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 5);
# insert into Produto_Hospital (produto_id, hospitais_id) values (21, 6); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 11);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 22);
# insert into Produto_Hospital (produto_id, hospitais_id) values (21, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (21, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (21, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (21, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (22, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 11);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 22);
insert into Produto_Hospital (produto_id, hospitais_id) values (22, 23);
# insert into Produto_Hospital (produto_id, hospitais_id) values (22, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (22, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (22, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (23, 1);
# insert into Produto_Hospital (produto_id, hospitais_id) values (23, 2); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 3);
# insert into Produto_Hospital (produto_id, hospitais_id) values (23, 4); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 5);
# insert into Produto_Hospital (produto_id, hospitais_id) values (23, 6); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (23, 7); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 10);
# insert into Produto_Hospital (produto_id, hospitais_id) values (23, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 18);
# insert into Produto_Hospital (produto_id, hospitais_id) values (23, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 22);
# insert into Produto_Hospital (produto_id, hospitais_id) values (23, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (23, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (23, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (23, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (24, 1);
# insert into Produto_Hospital (produto_id, hospitais_id) values (24, 2); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 3);
# insert into Produto_Hospital (produto_id, hospitais_id) values (24, 4); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 6);
# insert into Produto_Hospital (produto_id, hospitais_id) values (24, 7); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (24, 8); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 10);
# insert into Produto_Hospital (produto_id, hospitais_id) values (24, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 22);
# insert into Produto_Hospital (produto_id, hospitais_id) values (24, 23); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 24);
# insert into Produto_Hospital (produto_id, hospitais_id) values (24, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (24, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (25, 1);
# insert into Produto_Hospital (produto_id, hospitais_id) values (25, 2); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 3);
# insert into Produto_Hospital (produto_id, hospitais_id) values (25, 4); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 6);
# insert into Produto_Hospital (produto_id, hospitais_id) values (25, 7); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (25, 8); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 10);
# insert into Produto_Hospital (produto_id, hospitais_id) values (25, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 22);
# insert into Produto_Hospital (produto_id, hospitais_id) values (25, 23); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 24);
# insert into Produto_Hospital (produto_id, hospitais_id) values (25, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (25, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (26, 1);
# insert into Produto_Hospital (produto_id, hospitais_id) values (26, 2); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 3);
# insert into Produto_Hospital (produto_id, hospitais_id) values (26, 4); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 6);
# insert into Produto_Hospital (produto_id, hospitais_id) values (26, 7); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (26, 8); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 10);
# insert into Produto_Hospital (produto_id, hospitais_id) values (26, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 22);
# insert into Produto_Hospital (produto_id, hospitais_id) values (26, 23); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 24);
# insert into Produto_Hospital (produto_id, hospitais_id) values (26, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (26, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (27, 1);
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 2); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 3); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (27, 4);
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 5); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 6); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 7); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (27, 8);
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 9); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 10); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (27, 12);
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 13); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 14); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (27, 15);
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 16); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 17); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 18); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (27, 20);
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 21); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (27, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (28, 1);
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 2); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 4);
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 5); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 6); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 7); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 9);
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 10); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 12);
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 13); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 14); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 15);
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 16); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 17); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 18); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 20);
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 21); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (28, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (29, 1);
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 2); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 5);
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 6); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 7); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 10);
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 13);
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 14); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 16);
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 17); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 18); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 20);
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 21); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 22); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (29, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (30, 1);
# insert into Produto_Hospital (produto_id, hospitais_id) values (30, 2); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 6);
# insert into Produto_Hospital (produto_id, hospitais_id) values (30, 7); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 10);
# insert into Produto_Hospital (produto_id, hospitais_id) values (30, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 16);
# insert into Produto_Hospital (produto_id, hospitais_id) values (30, 17); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (30, 18); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (30, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 22);
# insert into Produto_Hospital (produto_id, hospitais_id) values (30, 23); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (30, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (30, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (30, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (31, 1);
# insert into Produto_Hospital (produto_id, hospitais_id) values (31, 2); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 6);
# insert into Produto_Hospital (produto_id, hospitais_id) values (31, 7); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 10);
# insert into Produto_Hospital (produto_id, hospitais_id) values (31, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 16);
# insert into Produto_Hospital (produto_id, hospitais_id) values (31, 17); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (31, 18); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (31, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 22);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 23);
# insert into Produto_Hospital (produto_id, hospitais_id) values (31, 24); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (31, 25); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (31, 26); FALSE

insert into Produto_Hospital (produto_id, hospitais_id) values (32, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 10);
# insert into Produto_Hospital (produto_id, hospitais_id) values (32, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 16);
# insert into Produto_Hospital (produto_id, hospitais_id) values (32, 17); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (32, 18); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (32, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 22);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 23);
# insert into Produto_Hospital (produto_id, hospitais_id) values (32, 24); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 25);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 26);

insert into Produto_Hospital (produto_id, hospitais_id) values (33, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 10);
# insert into Produto_Hospital (produto_id, hospitais_id) values (33, 11); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 16);
# insert into Produto_Hospital (produto_id, hospitais_id) values (33, 17); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (33, 18); FALSE
# insert into Produto_Hospital (produto_id, hospitais_id) values (33, 19); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 22);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 23);
# insert into Produto_Hospital (produto_id, hospitais_id) values (33, 24); FALSE
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 25);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 26);



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
