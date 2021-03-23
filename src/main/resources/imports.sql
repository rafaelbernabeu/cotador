USE cotador;

-- ADMINISTRADORAS
insert into Administradora (id, nome) values (1, 'ALLCARE');
insert into Administradora (id, nome) values (2, 'ELO');
insert into Administradora (id, nome) values (3, 'NUNES E GROSSI');
insert into Administradora (id, nome) values (4, 'QUALICORP');


-- OPERADORAS
insert into Operadora (id, nome, cor) values (1, 'AMIL', '#461bff');
insert into Operadora (id, nome, cor) values (2, 'AMIL ONE', '#461bff');
insert into Operadora (id, nome, cor) values (3, 'BRADESCO', '#bb082b');
insert into Operadora (id, nome, cor) values (4, 'SEGUROS UNIMED', '#192c50');
insert into Operadora (id, nome, cor) values (5, 'SULAMÉRICA', '#b64901');
insert into Operadora (id, nome, cor) values (6, 'UNIMED - CNU', '#0a5f55');


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
insert into Entidade (id, nome) values (3, 'ABPL');
insert into Entidade (id, nome) values (4, 'ABRABDIR');
insert into Entidade (id, nome) values (5, 'ABRACEM');
insert into Entidade (id, nome) values (6, 'ABRADIR');
insert into Entidade (id, nome) values (7, 'ABRAPAC');
insert into Entidade (id, nome) values (8, 'ABRAS');
insert into Entidade (id, nome) values (9, 'ABRE');
insert into Entidade (id, nome) values (10, 'ACRESP');
insert into Entidade (id, nome) values (11, 'ADPF');
insert into Entidade (id, nome) values (12, 'AESP/DF');
insert into Entidade (id, nome) values (13, 'AFB');
insert into Entidade (id, nome) values (14, 'AJUFE');
insert into Entidade (id, nome) values (15, 'AMAGIS');
insert into Entidade (id, nome) values (16, 'AMAI');
insert into Entidade (id, nome) values (17, 'AMB');
insert into Entidade (id, nome) values (18, 'AMBr');
insert into Entidade (id, nome) values (19, 'AMN');
insert into Entidade (id, nome) values (20, 'ANADEF');
insert into Entidade (id, nome) values (21, 'ANAMATRA');
insert into Entidade (id, nome) values (22, 'ANATO');
insert into Entidade (id, nome) values (23, 'ASCOM');
insert into Entidade (id, nome) values (24, 'ASMPF');
insert into Entidade (id, nome) values (25, 'ASSEF');
insert into Entidade (id, nome) values (26, 'AVAASP');
insert into Entidade (id, nome) values (27, 'CAA-DF');
insert into Entidade (id, nome) values (28, 'CNPL');
insert into Entidade (id, nome) values (29, 'CORECON-DF');
insert into Entidade (id, nome) values (30, 'CRA-DF');
insert into Entidade (id, nome) values (31, 'CRBio-4');
insert into Entidade (id, nome) values (32, 'CREF7');
insert into Entidade (id, nome) values (33, 'CRF-DF');
insert into Entidade (id, nome) values (34, 'CRO-DF');
insert into Entidade (id, nome) values (35, 'CRP-01');
insert into Entidade (id, nome) values (36, 'FEB');
insert into Entidade (id, nome) values (37, 'FEBEUS');
insert into Entidade (id, nome) values (38, 'FEBRAD');
insert into Entidade (id, nome) values (39, 'FECOMÉRCIO - DF');
insert into Entidade (id, nome) values (40, 'FECOMÉRCIO');
insert into Entidade (id, nome) values (41, 'FEIFAR');
insert into Entidade (id, nome) values (42, 'FENAMEV');
insert into Entidade (id, nome) values (43, 'FETRACOM');
insert into Entidade (id, nome) values (44, 'FETRAN');
insert into Entidade (id, nome) values (45, 'FETRATUH');
insert into Entidade (id, nome) values (46, 'FINAFITO');
insert into Entidade (id, nome) values (47, 'FNA');
insert into Entidade (id, nome) values (48, 'FNN');
insert into Entidade (id, nome) values (49, 'FNO');
insert into Entidade (id, nome) values (50, 'GASP');
insert into Entidade (id, nome) values (51, 'INAAD');
insert into Entidade (id, nome) values (52, 'INAPROF');
insert into Entidade (id, nome) values (53, 'MÚTUA');
insert into Entidade (id, nome) values (54, 'SASPB');
insert into Entidade (id, nome) values (55, 'SINARQ');
insert into Entidade (id, nome) values (56, 'SINDICOM-DF');
insert into Entidade (id, nome) values (57, 'SINDICONTA - DF');
insert into Entidade (id, nome) values (58, 'SINDIRECEITA');
insert into Entidade (id, nome) values (59, 'SINDMÉDICO - DF');
insert into Entidade (id, nome) values (60, 'SINDPSICOP - BR');
insert into Entidade (id, nome) values (61, 'SINPROEP - DF');
insert into Entidade (id, nome) values (62, 'SINPROEP');
insert into Entidade (id, nome) values (63, 'SINTEC DF');
insert into Entidade (id, nome) values (64, 'SINTRA');
insert into Entidade (id, nome) values (65, 'UBE');
insert into Entidade (id, nome) values (66, 'UBES');
insert into Entidade (id, nome) values (67, 'UNE');


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
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (32, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (32, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (32, 5);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (33, 1);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (33, 2);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (33, 3);
insert into Produto_Laboratorio (produto_id, laboratorios_id) values (33, 5);


-- PRODUTO_HOSPITAL
insert into Produto_Hospital (produto_id, hospitais_id) values (1, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (1, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (1, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (1, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (1, 20);

insert into Produto_Hospital (produto_id, hospitais_id) values (2, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (2, 20);

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
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (3, 22);

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
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 22);
insert into Produto_Hospital (produto_id, hospitais_id) values (4, 24);

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
insert into Produto_Hospital (produto_id, hospitais_id) values (5, 13);
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
insert into Produto_Hospital (produto_id, hospitais_id) values (6, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (6, 20);

insert into Produto_Hospital (produto_id, hospitais_id) values (7, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (7, 20);

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
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (8, 22);

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
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 22);
insert into Produto_Hospital (produto_id, hospitais_id) values (9, 24);

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
insert into Produto_Hospital (produto_id, hospitais_id) values (10, 13);
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
insert into Produto_Hospital (produto_id, hospitais_id) values (11, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (11, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (11, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (11, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (11, 20);

insert into Produto_Hospital (produto_id, hospitais_id) values (12, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (12, 20);

insert into Produto_Hospital (produto_id, hospitais_id) values (13, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (13, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (13, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (13, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (13, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (13, 21);

insert into Produto_Hospital (produto_id, hospitais_id) values (14, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (14, 21);

insert into Produto_Hospital (produto_id, hospitais_id) values (15, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (15, 21);

insert into Produto_Hospital (produto_id, hospitais_id) values (16, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (16, 22);

insert into Produto_Hospital (produto_id, hospitais_id) values (17, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (17, 22);

insert into Produto_Hospital (produto_id, hospitais_id) values (18, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 11);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (18, 20);

insert into Produto_Hospital (produto_id, hospitais_id) values (19, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 11);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (19, 20);

insert into Produto_Hospital (produto_id, hospitais_id) values (20, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 7);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 11);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 19);
insert into Produto_Hospital (produto_id, hospitais_id) values (20, 20);

insert into Produto_Hospital (produto_id, hospitais_id) values (21, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 2);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (21, 5);
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

insert into Produto_Hospital (produto_id, hospitais_id) values (23, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 17);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 18);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (23, 22);

insert into Produto_Hospital (produto_id, hospitais_id) values (24, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 10);
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
insert into Produto_Hospital (produto_id, hospitais_id) values (24, 24);

insert into Produto_Hospital (produto_id, hospitais_id) values (25, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 10);
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
insert into Produto_Hospital (produto_id, hospitais_id) values (25, 24);

insert into Produto_Hospital (produto_id, hospitais_id) values (26, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 10);
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
insert into Produto_Hospital (produto_id, hospitais_id) values (26, 24);

insert into Produto_Hospital (produto_id, hospitais_id) values (27, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (27, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (27, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (27, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (27, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (27, 20);

insert into Produto_Hospital (produto_id, hospitais_id) values (28, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (28, 20);

insert into Produto_Hospital (produto_id, hospitais_id) values (29, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (29, 20);

insert into Produto_Hospital (produto_id, hospitais_id) values (30, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (30, 22);

insert into Produto_Hospital (produto_id, hospitais_id) values (31, 1);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 3);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 4);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 5);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 6);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 8);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 9);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 10);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 22);
insert into Produto_Hospital (produto_id, hospitais_id) values (31, 23);

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
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 22);
insert into Produto_Hospital (produto_id, hospitais_id) values (32, 23);
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
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 12);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 13);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 14);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 15);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 16);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 20);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 21);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 22);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 23);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 25);
insert into Produto_Hospital (produto_id, hospitais_id) values (33, 26);

-- TABELAS
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (1, 6, 0, 'A1', false, false, 5, 58, 0, 0, 1, 1, 7, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (2, 6, 0, 'ABERTA', false, false, 2, 58, 0, 0, 1, 6, 4, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (3, 6, 0, 'ABERTA', false, false, 2, 64, 0, 0, 4, 1, 6, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (4, 6, 0, 'ABERTA', false, false, 2, 64, 0, 0, 4, 6, 5, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (5, 6, 0, 'ABERTA', false, false, 5, 58, 0, 0, 1, 1, 5, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (6, 6, 0, 'ABERTA', false, false, 6, 64, 1, 0, 4, 5, 7, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (7, 6, 0, 'ABERTA', false, false, 6, 64, 2, 0, 4, 5, 7, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (8, 6, 0, 'ABERTA', false, false, 18, 58, 0, 0, 2, 4, 9, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (9, 6, 0, 'ABERTA', false, false, 18, 64, 0, 0, 4, 3, 11, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (10, 6, 0, 'FECHADA', false, false, 2, 58, 0, 0, 1, 6, 4, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (11, 6, 0, 'FECHADA', false, false, 2, 64, 0, 0, 4, 1, 6, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (12, 6, 0, 'FECHADA', false, false, 2, 64, 0, 0, 4, 6, 5, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (13, 6, 0, 'FECHADA', false, false, 5, 58, 0, 0, 1, 1, 5, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (14, 6, 0, 'FECHADA', false, false, 6, 64, 1, 0, 4, 5, 7, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (15, 6, 0, 'FECHADA', false, false, 6, 64, 2, 0, 4, 5, 7, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (16, 6, 0, 'FECHADA', false, false, 18, 58, 0, 0, 2, 4, 9, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (17, 6, 0, 'FECHADA', false, false, 18, 64, 0, 0, 4, 3, 11, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (18, 6, 0, 'ÚNICA', false, false, 18, 58, 0, 0, 1, 3, 0, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (19, 6, 0, 'ÚNICA', false, false, 18, 58, 0, 0, 2, 3, 10, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (20, 6, 0, 'ÚNICA', false, false, 18, 58, 0, 0, 3, 3, 4, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (21, 6, 1, '1 COMPULSÓRIA (exclui MEI)', true, false, 0, 58, 2, 1, null, 1, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (22, 6, 1, '1 COMPULSÓRIA (exclui MEI)', true, false, 0, 58, 2, 1, null, 2, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (23, 6, 1, '1 COMPULSÓRIA (exclui MEI)', true, false, 0, 58, 30, 2, null, 1, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (24, 6, 1, '1 COMPULSÓRIA (exclui MEI)', true, false, 0, 58, 30, 2, null, 2, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (25, 6, 1, '1 COMPULSÓRIA (inclui MEI)', true, true, 0, 0, 3, 1, null, 3, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (26, 6, 1, '1 COMPULSÓRIA (inclui MEI)', true, true, 0, 0, 3, 1, null, 5, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (27, 6, 1, '1 COMPULSÓRIA (inclui MEI)', true, true, 0, 0, 4, 2, null, 3, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (28, 6, 1, '1 COMPULSÓRIA (inclui MEI)', true, true, 0, 0, 30, 2, null, 3, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (29, 6, 1, '1 COMPULSÓRIA (inclui MEI)', true, true, 0, 0, 30, 2, null, 5, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (30, 6, 1, '1 COMPULSÓRIA (inclui MEI)', true, true, 0, 64, 2, 1, null, 6, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (31, 6, 1, '1 COMPULSÓRIA (inclui MEI)', true, true, 0, 64, 30, 2, null, 6, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (32, 6, 1, '2 LIVRE ADESÃO (exclui MEI)', false, false, 0, 0, 3, 1, null, 3, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (33, 6, 1, '2 LIVRE ADESÃO (exclui MEI)', false, false, 0, 0, 3, 1, null, 5, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (34, 6, 1, '2 LIVRE ADESÃO (exclui MEI)', false, false, 0, 0, 4, 2, null, 3, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (35, 6, 1, '2 LIVRE ADESÃO (exclui MEI)', false, false, 0, 0, 30, 2, null, 3, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (36, 6, 1, '2 LIVRE ADESÃO (exclui MEI)', false, false, 0, 0, 30, 2, null, 5, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (37, 6, 1, '2 LIVRE ADESÃO (exclui MEI)', false, false, 0, 64, 2, 1, null, 6, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (38, 6, 1, '2 LIVRE ADESÃO (exclui MEI)', false, false, 0, 64, 30, 2, null, 6, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (39, 6, 1, '2 LIVRE ADESÃO (inclui MEI)', false, true, 0, 58, 2, 1, null, 1, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (40, 6, 1, '2 LIVRE ADESÃO (inclui MEI)', false, true, 0, 58, 2, 1, null, 2, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (41, 6, 1, '2 LIVRE ADESÃO (inclui MEI)', false, true, 0, 58, 30, 2, null, 1, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (42, 6, 1, '2 LIVRE ADESÃO (inclui MEI)', false, true, 0, 58, 30, 2, null, 2, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (43, 8, 0, 'ABERTA', false, false, 2, 64, 0, 0, 4, 1, 6, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (44, 8, 0, 'ABERTA', false, false, 6, 64, 1, 0, 4, 5, 7, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (45, 8, 0, 'ABERTA', false, false, 6, 64, 2, 0, 4, 5, 7, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (46, 8, 0, 'FECHADA', false, false, 2, 64, 0, 0, 4, 1, 6, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (47, 8, 0, 'FECHADA', false, false, 6, 64, 1, 0, 4, 5, 7, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (48, 8, 0, 'FECHADA', false, false, 6, 64, 2, 0, 4, 5, 7, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (49, 8, 0, 'FECHADA', false, false, 18, 64, 0, 0, 4, 3, 11, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (50, 8, 1, '1 COMPULSÓRIA (exclui MEI)', true, false, 0, 58, 2, 1, null, 1, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (51, 8, 1, '1 COMPULSÓRIA (exclui MEI)', true, false, 0, 58, 2, 1, null, 2, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (52, 8, 1, '1 COMPULSÓRIA (exclui MEI)', true, false, 0, 58, 30, 2, null, 1, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (53, 8, 1, '1 COMPULSÓRIA (exclui MEI)', true, false, 0, 58, 30, 2, null, 2, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (54, 8, 1, '1 COMPULSÓRIA (inclui MEI)', true, true, 0, 0, 3, 1, null, 3, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (55, 8, 1, '1 COMPULSÓRIA (inclui MEI)', true, true, 0, 0, 4, 2, null, 3, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (56, 8, 1, '1 COMPULSÓRIA (inclui MEI)', true, true, 0, 0, 30, 2, null, 3, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (57, 8, 1, '2 LIVRE ADESÃO (exclui MEI)', false, false, 0, 0, 3, 1, null, 3, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (58, 8, 1, '2 LIVRE ADESÃO (exclui MEI)', false, false, 0, 0, 4, 2, null, 3, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (59, 8, 1, '2 LIVRE ADESÃO (exclui MEI)', false, false, 0, 0, 30, 2, null, 3, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (60, 8, 1, '2 LIVRE ADESÃO (inclui MEI)', false, true, 0, 58, 2, 1, null, 1, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (61, 8, 1, '2 LIVRE ADESÃO (inclui MEI)', false, true, 0, 58, 2, 1, null, 2, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (62, 8, 1, '2 LIVRE ADESÃO (inclui MEI)', false, true, 0, 58, 30, 2, null, 1, 12, false);
insert into Tabela (id, estado, categoria, nome, compulsoria, contemplaMEI, idadeMinima, idadeMaxima, qtdMinVidas, qtdMinTitulares, administradora_id, operadora_id, reajuste, preferencial) values (63, 8, 1, '2 LIVRE ADESÃO (inclui MEI)', false, true, 0, 58, 30, 2, null, 2, 12, false);



-- TABELA-PRODUTO
insert into Tabela_Produto (Tabela_id, produtos_id) values (1, 1);
insert into Tabela_Produto (Tabela_id, produtos_id) values (2, 3);
insert into Tabela_Produto (Tabela_id, produtos_id) values (3, 4);


-- ENTIDADE_PROFISSAO
# Autônomo: AVAASP 26
insert into Entidade_Profissao (profissoes_id, entidade_id) values (1, 26);

# Empresário: FECOMÉRCIO 40 - DF 39, FECOMÉRCIO 40
insert into Entidade_Profissao (profissoes_id, entidade_id) values (2, 39);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (2, 40);

# Empresário Individual ASCOM 23, FETRATUH 45, FECOMÉRCIO 40 - DF 39, FECOMÉRCIO 40
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, 23);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, 39);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, 40);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, 45);

# Comerciário ASCOM 23,  FETRACOM 43, FETRATUH 45,  SINDICOM-DF 56
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, 23);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, 43);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, 45);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, 56);

# Empregados do Conselho de Adm ASCOM 23, FETRACOM 43, FETRATUH 45, ABECA 1, SINDICOM-DF 56
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, 1);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, 23);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, 43);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, 45);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, 56);

# Servidor Público Distrital ABESP DF 2, AESP/DF 12, ASMPF 24, SASPB 54, GASP 50, ACRESP 10, AMAGIS 15
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 2);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 12);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 15);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 24);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 50);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 54);


# Servidor Público Federal ABRAS 8, ASSEF 25, ASMPF 24, SASPB 54, GASP 50, ACRESP 10, AMAGIS 15, SASPB 54, ACRESP 10, SASPB 54
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, 24);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, 54);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, 50);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, 15);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, 54);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, 54);

# Delegado da Polícia Federal ABRAS 8, ASSEF 25, ASMPF 24, SASPB 54, GASP 50, ACRESP 10, AMAGIS 15, SASPB 54, ADPF 11, ACRESP 10, ADPF 11, SASPB 54
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 24);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 54);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 50);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 15);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 54);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 11);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 11);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 54);

# Defensor Público ABRAS 8, ASSEF 25, ASMPF 24, SASPB 54, GASP 50, ACRESP 10, AMAGIS 15, SASPB 54, ANADEF 20
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 24);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 54);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 50);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 15);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 54);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 20);


# Juiz Federal ABRAS 8, ASSEF 25, AJUFE 14, ASMPF 24, AJUFE 14, SASPB 54, GASP 50, ACRESP 10, AMAGIS 15
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 14);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 24);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 14);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 54);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 50);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 15);


# Servidor da Receita ABRAS 8, ASSEF 25, SINDIRECEITA 58, ASMPF 24, SASPB 54, GASP 50, ACRESP 10, AMAGIS 15, SASPB 54
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 58);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 24);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 54);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 50);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 15);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 54);


# Servidor do Detran FETRAN 44, ABESP DF 2, AESP/DF 12, ASMPF 24, SASPB 54, GASP 50, ACRESP 10, AMAGIS 15
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 44);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 2);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 12);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 24);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 54);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 50);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 15);


# Servidor do Ministério Público Federal ABRAS 8, ASSEF 25, ASMPF 24, SASPB 54, GASP 50, ACRESP 10, AMAGIS 15
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 24);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 54);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 50);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 15);


# Magistrado ABRAS 8, ASSEF 25, ANAMATRA 21, ASMPF 24, AMB 17, ANAMATRA 21, SASPB 54, GASP 50, ACRESP 10, AMAGIS 15
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 21);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 24);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 17);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 21);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 54);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 50);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 15);


# Estudante Ed Infantil FEBEUS 37, FEB 36, UBE 65
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, 37);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, 36);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, 65);


# Estudante Secundarista FEBEUS 37, FEB 36, UBES 66
insert into Entidade_Profissao (profissoes_id, entidade_id) values (16, 37);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (16, 36);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (16, 66);


# Estudante de Faculdade FEBEUS 37, FEB 36, UNE 67
insert into Entidade_Profissao (profissoes_id, entidade_id) values (17, 37);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (17, 36);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (17, 67);


# Estudante de Direito FEBEUS 37, FEB 36, INAAD 51, UNE 67
insert into Entidade_Profissao (profissoes_id, entidade_id) values (18, 37);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (18, 36);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (18, 51);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (18, 67);


# Estudante de Contabilidade 7º em diante FEBEUS 37, FEB 36, SINDICONTA - DF 57, UNE 67
insert into Entidade_Profissao (profissoes_id, entidade_id) values (19, 37);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (19, 36);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (19, 57);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (19, 67);


# Profissional Liberal ABPL 3, CNPL 28, ABRE 9, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (20, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (20, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (20, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (20, 5);


# Administrador com CRA ABPL 3, CNPL 28, ABRE 9, FEBRAD 38, CRA-DF 30, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, 38);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, 5);


# Administrador sem CRA ABPL 3, CNPL 28, ABRE 9, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, 5);


# Advogado C/ OAB ABPL 3, CNPL 28, ABRE 9, INAAD 51, ABRACEM 5, ABRADIR 6, ABRABDIR 4, CAA-DF 27
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 51);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 6);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 4);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 27);


# Advogado s/ OAB ABPL 3, CNPL 28, ABRE 9, INAAD 51, ABRACEM 5, ABRADIR 6, ABRABDIR 4
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 51);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 6);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 4);


# Estagiário Advogado ABPL 3, CNPL 28, ABRE 9, ABRACEM 5, CAA-DF 27
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, 27);

# Agronomo ABPL 3, CNPL 28, ABRE 9, MÚTUA 53, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, 53);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, 5);


# Arquiteto ABPL 3, CNPL 28, ABRE 9, SINARQ 55, FNA 47, MÚTUA 53, ABRACEM 5, FNA 47,
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 55);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 47);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 53);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 47);


# Biologo ABPL 3, CNPL 28, ABRE 9, ABRACEM 5, CRBio-4 31
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, 31);


# Contador ABPL 3, CNPL 28, ABRE 9, ABRACEM 5, CORECON-DF 29, SINDICONTA - DF 57
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, 29);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, 57);


# Dentista ABPL 3, CNPL 28, ABRE 9, FNO 49, CRO-DF 34, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, 49);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, 34);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, 5);


# Economista ABPL 3, CNPL 28, ABRE 9, CORECON-DF 29, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, 29);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, 5);


# Educação Física ABPL 3, CNPL 28, ABRE 9, CREF7 32, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, 32);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, 5);

# Engenheiro ABPL 3, CNPL 28, ABRE 9, MÚTUA 53, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, 53);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, 5);

# Farmacêutico ABPL 3, CNPL 28, ABRE 9, FEIFAR 41, CRF-DF 33, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, 41);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, 33);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, 5);

# Fisioterapeuta ABPL 3, CNPL 28, ABRE 9, FINAFITO 46, ABRACEM 5, AFB 13
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, 46);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, 13);

# Médico ABPL 3, CNPL 28, ABRE 9, AMBr 18, ABRACEM 5, AMAI 16, AMB 17, SINDMÉDICO - DF 59
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 18);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 16);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 17);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 59);

# Marinheiro ABPL 3, CNPL 28, ABRE 9, ABRACEM 5, AMN 19
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, 19);

# Nutricionista ABPL 3, CNPL 28, ABRE 9, FNN 48, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, 48);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, 5);

# Piloto de Aviação ABPL 3, CNPL 28, ABRE 9, ABRAPAC 7, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, 7);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, 5);

# Psicólogo ABPL 3, CNPL 28, ABRE 9, CRP-01 35, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, 35);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, 5);

# Psicopedagogo ABPL 3, CNPL 28, ABRE 9, SINDPSICOP - BR 60, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, 60);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, 5);

# Professor Particular ABPL 3, CNPL 28, ABRE 9, INAPROF 52, SINPROEP 62, ABRACEM 5, SINPROEP - DF 61
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 52);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 62);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 61);

# Técnico em Odontologia ABPL 3, CNPL 28, ABRE 9, ANATO 22, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, 22);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, 5);

# Técnico Industrial ABPL 3, CNPL 28, ABRE 9, SINTEC DF 63, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, 63);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, 5);

# Tradutor ABPL 3, CNPL 28, ABRE 9, SINTRA 64, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, 64);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, 5);

# Veterinário ABPL 3 , CNPL 28, ABRE 9, FENAMEV 42, ABRACEM 5
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, 28);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, 42);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, 5);


-- OPCAO
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (1, 0, true, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 1);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (2, 1, true, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 3, 2);
