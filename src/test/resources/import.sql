USE cotador;

-- ADMINISTRADORAS
insert into Administradora (id, nome) values (1, 'Allcare');
insert into Administradora (id, nome) values (2, 'Qualicorp');
insert into Administradora (id, nome) values (3, 'Elo');


-- OPERADORAS
insert into Operadora (id, cor, nome) values (1, '#088f5c', 'Unimed CNU');
insert into Operadora (id, cor, nome) values (2, '#e70606', 'Bradesco');
insert into Operadora (id, cor, nome) values (3, '#0808f9', 'Amil');
insert into Operadora (id, cor, nome) values (4, '#1a23f7', 'Seguros Unimed');


-- HOSPITAIS
insert into Hospital (id, local, nome) values (1, 'Ceilândia', 'Hospital São Francisco ');
insert into Hospital (id, local, nome) values (2, 'Gama', 'Hospital Maria Auxiliadora ');
insert into Hospital (id, local, nome) values (3, 'Taguatinga Sul', 'Hospital Anna Nery');


-- LABORATORIOS
insert into Laboratorio (id, local, nome) values (1, 'DF', 'Exame');
insert into Laboratorio (id, local, nome) values (2, 'DF', 'Sabin');


-- PROFISSOES
insert into Profissao (id, nome) values (1, 'Empresário');
insert into Profissao (id, nome) values (2, 'Servidor Público');
insert into Profissao (id, nome) values (3, 'Estudante Secundarista');
insert into Profissao (id, nome) values (6, 'CLT');


-- ENTIDADES
insert into Entidade (id, nome) values (1, 'FEB');
insert into Entidade (id, nome) values (2, 'ABESP DF');
insert into Entidade (id, nome) values (3, 'AESP/DF');
insert into Entidade (id, nome) values (4, 'UBES');
insert into Entidade (id, nome) values (5, 'FECOMERCIO');
insert into Entidade (id, nome) values (6, 'SASPB');
insert into Entidade (id, nome) values (7, 'GASP');



-- COPARTICIPACOES
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (1, 30, 30, 30, null, 30, null, null, null, null, null);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (2, 30, 30, 30, null, 30, null, null, null, null, null);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (3, 30, 30, 30, null, 30, 30, 110, 25, 220, 60);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (4, 30, 30, 30, null, 30, 25, 100, 20, 180, 50);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (5, null, 30, 30, 0, null, 25, 140, 30, 0, 50);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (6, null, 30, 30, null, null, 25, 140, 30, 0, 50);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (7, 30, 30, 30, null, 30, null, null, null, null, null);
insert into Coparticipacao (id, percentualConsulta, percentualExameEspecial, percentualExameSimples, percentualInternacao, percentualProntoSocorro, valorConsulta, valorExameEspecial, valorExameSimples, valorInternacao, valorProntoSocorro) values (8, 30, 30, 30, null, 30, null, null, null, null, null);


-- PRODUTOS
insert into Produto (id, abrangencia, ativo, nome, observacao, reembolso, coparticipacao_id, operadora_id) values (1, 1, true, 'Efetivo', null, 114.95, 1, 2);
insert into Produto (id, abrangencia, ativo, nome, observacao, reembolso, coparticipacao_id, operadora_id) values (2, 1, true, 'Flex', null, 114.95, 2, 2);
insert into Produto (id, abrangencia, ativo, nome, observacao, reembolso, coparticipacao_id, operadora_id) values (3, 1, true, '400', null, 80, 3, 3);
insert into Produto (id, abrangencia, ativo, nome, observacao, reembolso, coparticipacao_id, operadora_id) values (4, 2, true, 'S80', null, 0, 4, 3);
insert into Produto (id, abrangencia, ativo, nome, observacao, reembolso, coparticipacao_id, operadora_id) values (5, 0, true, 'Clássico', null, 0, 5, 1);
insert into Produto (id, abrangencia, ativo, nome, observacao, reembolso, coparticipacao_id, operadora_id) values (6, 1, true, 'Estilo', 'Reembolso somente para consultas', 70, 6, 1);
insert into Produto (id, abrangencia, ativo, nome, observacao, reembolso, coparticipacao_id, operadora_id) values (7, 1, true, 'Compacto', null, 70, 7, 4);
insert into Produto (id, abrangencia, ativo, nome, observacao, reembolso, coparticipacao_id, operadora_id) values (8, 1, true, 'Efetivo', null, 70, 8, 4);


-- PRODUTO_LABORATORIO
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (1, 1);
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (1, 2);
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (2, 1);
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (2, 2);
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (3, 1);
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (4, 1);
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (5, 1);
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (5, 2);
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (6, 1);
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (6, 2);
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (8, 1);
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (8, 2);
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (7, 1);
insert into Produto_Laboratorio (Produto_id, laboratorios_id) values (7, 2);


-- PRODUTO_HOSPITAL
insert into Produto_Hospital (Produto_id, hospitais_id) values (1, 1);
insert into Produto_Hospital (Produto_id, hospitais_id) values (1, 2);
insert into Produto_Hospital (Produto_id, hospitais_id) values (2, 1);
insert into Produto_Hospital (Produto_id, hospitais_id) values (2, 2);
insert into Produto_Hospital (Produto_id, hospitais_id) values (2, 3);
insert into Produto_Hospital (Produto_id, hospitais_id) values (3, 1);
insert into Produto_Hospital (Produto_id, hospitais_id) values (3, 2);
insert into Produto_Hospital (Produto_id, hospitais_id) values (4, 1);
insert into Produto_Hospital (Produto_id, hospitais_id) values (4, 3);
insert into Produto_Hospital (Produto_id, hospitais_id) values (5, 1);
insert into Produto_Hospital (Produto_id, hospitais_id) values (5, 2);
insert into Produto_Hospital (Produto_id, hospitais_id) values (5, 3);
insert into Produto_Hospital (Produto_id, hospitais_id) values (6, 1);
insert into Produto_Hospital (Produto_id, hospitais_id) values (6, 2);
insert into Produto_Hospital (Produto_id, hospitais_id) values (6, 3);
insert into Produto_Hospital (Produto_id, hospitais_id) values (8, 1);
insert into Produto_Hospital (Produto_id, hospitais_id) values (8, 2);
insert into Produto_Hospital (Produto_id, hospitais_id) values (8, 3);
insert into Produto_Hospital (Produto_id, hospitais_id) values (7, 1);
insert into Produto_Hospital (Produto_id, hospitais_id) values (7, 2);
insert into Produto_Hospital (Produto_id, hospitais_id) values (7, 3);


-- TABELAS
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (1, 0, false, false, 6, 58, 5, false, 'A1', 0, 0, 8, 1, 3);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (2, 0, false, false, 6, 58, 5, false, 'Fechada', 0, 0, 7, 1, 3);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (3, 0, false, false, 6, 58, 18, false, 'Única', 0, 0, 0, 1, 2);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (4, 0, false, false, 6, 58, 2, false, 'Fechada', 0, 0, 4, 1, 1);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (5, 0, false, false, 6, 58, 2, false, 'Aberta', 0, 0, 4, 1, 1);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (6, 0, false, false, 6, 58, 18, false, 'Única', 0, 0, 10, 3, 2);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (7, 0, false, false, 6, 58, 18, false, 'Fechada', 0, 0, 5, 3, 4);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (8, 0, false, false, 6, 64, 2, false, 'Aberta', 0, 0, 6, 2, 3);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (9, 0, false, false, 6, 64, 18, false, 'Aberta', 0, 0, 11, 2, 2);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (10, 0, false, false, 6, 64, 18, false, 'Fechada', 0, 0, 11, 2, 2);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (11, 0, false, false, 6, 64, 2, false, 'Aberta', 0, 0, 5, 2, 1);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (12, 0, false, false, 6, 64, 2, false, 'Fechada', 0, 0, 5, 2, 1);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (13, 1, true, false, 6, 58, 0, false, 'Compulsória ', 1, 2, 12, null, 3);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (14, 1, false, true, 6, 58, 0, true, 'Livre Adesão', 1, 2, 12, null, 3);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (15, 1, true, true, 6, 64, 0, true, 'Única', 1, 2, 12, null, 1);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (16, 1, true, true, 6, 999, 0, false, 'Compulsória  3', 1, 3, 12, null, 2);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (17, 1, true, true, 6, 999, 0, false, 'Compulsória  4', 2, 4, 12, null, 2);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (20, 1, false, false, 6, 999, 0, true, 'Livre Adesão 3', 1, 3, 12, null, 2);
insert into Tabela (id, categoria, compulsoria, contemplaMEI, estado, idadeMaxima, idadeMinima, livreAdesao, nome, qtdMinTitulares, qtdMinVidas, reajuste, administradora_id, operadora_id) values (21, 1, false, false, 6, 999, 0, true, 'Livre Adesão 4', 2, 4, 12, null, 2);


-- TABELA-PRODUTO
insert into Tabela_Produto (Tabela_id, produtos_id) values (4, 5);
insert into Tabela_Produto (Tabela_id, produtos_id) values (4, 6);
insert into Tabela_Produto (Tabela_id, produtos_id) values (5, 5);
insert into Tabela_Produto (Tabela_id, produtos_id) values (5, 6);
insert into Tabela_Produto (Tabela_id, produtos_id) values (6, 1);
insert into Tabela_Produto (Tabela_id, produtos_id) values (8, 3);
insert into Tabela_Produto (Tabela_id, produtos_id) values (8, 4);
insert into Tabela_Produto (Tabela_id, produtos_id) values (9, 1);
insert into Tabela_Produto (Tabela_id, produtos_id) values (10, 1);
insert into Tabela_Produto (Tabela_id, produtos_id) values (11, 5);
insert into Tabela_Produto (Tabela_id, produtos_id) values (11, 6);
insert into Tabela_Produto (Tabela_id, produtos_id) values (12, 5);
insert into Tabela_Produto (Tabela_id, produtos_id) values (12, 6);
insert into Tabela_Produto (Tabela_id, produtos_id) values (13, 4);
insert into Tabela_Produto (Tabela_id, produtos_id) values (14, 4);
insert into Tabela_Produto (Tabela_id, produtos_id) values (1, 3);
insert into Tabela_Produto (Tabela_id, produtos_id) values (16, 1);
insert into Tabela_Produto (Tabela_id, produtos_id) values (17, 1);
insert into Tabela_Produto (Tabela_id, produtos_id) values (20, 1);
insert into Tabela_Produto (Tabela_id, produtos_id) values (21, 1);
insert into Tabela_Produto (Tabela_id, produtos_id) values (15, 5);
insert into Tabela_Produto (Tabela_id, produtos_id) values (15, 6);
insert into Tabela_Produto (Tabela_id, produtos_id) values (2, 3);
insert into Tabela_Produto (Tabela_id, produtos_id) values (3, 2);
insert into Tabela_Produto (Tabela_id, produtos_id) values (7, 7);
insert into Tabela_Produto (Tabela_id, produtos_id) values (7, 8);


-- TABELA-ENTIDADE
insert into Tabela_Entidade (Tabela_id, entidades_id) values (4, 2);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (5, 1);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (6, 3);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (8, 4);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (8, 5);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (9, 5);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (10, 6);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (11, 4);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (11, 5);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (12, 6);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (12, 7);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (1, 1);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (2, 1);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (2, 2);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (3, 1);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (3, 2);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (7, 2);
insert into Tabela_Entidade (Tabela_id, entidades_id) values (7, 5);


-- ENTIDADE_PROFISSAO
insert into Entidade_Profissao (Entidade_id, profissoes_id) values (3, 2);
insert into Entidade_Profissao (Entidade_id, profissoes_id) values (4, 3);
insert into Entidade_Profissao (Entidade_id, profissoes_id) values (6, 2);
insert into Entidade_Profissao (Entidade_id, profissoes_id) values (7, 2);
insert into Entidade_Profissao (Entidade_id, profissoes_id) values (2, 2);
insert into Entidade_Profissao (Entidade_id, profissoes_id) values (1, 3);
insert into Entidade_Profissao (Entidade_id, profissoes_id) values (1, 6);
insert into Entidade_Profissao (Entidade_id, profissoes_id) values (5, 1);
insert into Entidade_Profissao (Entidade_id, profissoes_id) values (5, 6);



-- OPCAO
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (2, 0, true, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 3, 1);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (3, 1, false, 11, 21, 31, 41, 51, 61, 71, 81, 91, 101, 3, 1);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (4, 0, false, 12, 22, 32, 42, 52, 62, 72, 82, 92, 102, 3, 2);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (5, 1, false, 13, 23, 33, 43, 53, 63, 73, 83, 93, 103, 2, 3);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (6, 0, false, 14, 24, 34, 44, 54, 64, 74, 84, 94, 104, 2, 3);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (7, 1, false, 15, 25, 35, 45, 55, 65, 75, 85, 95, 105, 5, 4);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (8, 1, false, 16, 26, 36, 46, 56, 66, 76, 86, 96, 106, 6, 4);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (9, 0, false, 17, 27, 37, 47, 57, 67, 77, 87, 97, 107, 6, 4);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (10, 1, true, 18, 28, 38, 48, 58, 68, 78, 88, 98, 108, 5, 4);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (11, 1, true, 19, 29, 39, 49, 59, 69, 79, 89, 99, 109, 6, 4);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (12, 1, false, 21, 31, 41, 51, 61, 71, 81, 91, 101, 111, 5, 5);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (13, 1, false, 22, 32, 42, 52, 62, 72, 82, 92, 102, 112, 6, 5);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (14, 1, true, 24, 34, 44, 54, 64, 74, 84, 94, 104, 114, 5, 5);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (15, 1, true, 25, 35, 45, 55, 65, 75, 85, 95, 105, 115, 6, 5);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (16, 0, true, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 6, 4);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (17, 0, false, 23, 33, 43, 53, 63, 73, 83, 93, 103, 113, 6, 5);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (18, 0, true, 26, 36, 46, 56, 66, 76, 86, 96, 106, 116, 6, 5);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (19, 1, true, 27, 37, 47, 57, 67, 77, 87, 97, 107, 117, 1, 6);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (20, 0, false, 28, 38, 48, 58, 68, 78, 88, 98, 108, 118, 1, 6);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (21, 1, true, 29, 39, 49, 59, 69, 79, 89, 99, 109, 119, 7, 7);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (22, 0, true, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 8, 7);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (23, 1, false, 31, 41, 51, 61, 71, 81, 91, 101, 111, 121, 7, 7);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (24, 0, false, 32, 42, 52, 62, 72, 82, 92, 102, 112, 122, 8, 7);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (25, 1, false, 33, 43, 53, 63, 73, 83, 93, 103, 113, 123, 4, 8);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (26, 0, false, 34, 44, 54, 64, 74, 84, 94, 104, 114, 124, 4, 8);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (29, 0, true, 35, 45, 55, 65, 75, 85, 95, 105, 115, 125, 3, 8);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (30, 1, false, 36, 46, 56, 66, 76, 86, 96, 106, 116, 126, 1, 9);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (31, 0, false, 37, 47, 57, 67, 77, 87, 97, 107, 117, 127, 1, 9);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (32, 1, false, 38, 48, 58, 68, 78, 88, 98, 108, 118, 128, 1, 10);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (33, 0, false, 39, 49, 59, 69, 79, 89, 99, 109, 119, 129, 1, 10);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (34, 1, true, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 1, 10);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (35, 0, true, 41, 51, 61, 71, 81, 91, 101, 111, 121, 131, 1, 10);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (36, 1, false, 15, 25, 35, 45, 55, 65, 75, 85, 95, 105, 5, 12);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (37, 1, false, 16, 26, 36, 46, 56, 66, 76, 86, 96, 106, 6, 12);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (38, 0, false, 17, 27, 37, 47, 57, 67, 77, 87, 97, 107, 6, 12);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (39, 1, true, 18, 28, 38, 48, 58, 68, 78, 88, 98, 108, 5, 12);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (40, 1, true, 19, 29, 39, 49, 59, 69, 79, 89, 99, 109, 6, 12);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (41, 0, true, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 6, 12);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (42, 1, false, 21, 31, 41, 51, 61, 71, 81, 91, 101, 111, 5, 11);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (47, 1, false, 22, 32, 42, 52, 62, 72, 82, 92, 102, 112, 6, 11);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (48, 0, false, 23, 33, 43, 53, 63, 73, 83, 93, 103, 113, 6, 11);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (49, 1, true, 24, 34, 44, 54, 64, 74, 84, 94, 104, 114, 5, 11);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (50, 1, true, 25, 35, 45, 55, 65, 75, 85, 95, 105, 115, 6, 11);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (51, 0, true, 26, 36, 46, 56, 66, 76, 86, 96, 106, 116, 6, 11);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (52, 0, true, 54, 64, 74, 84, 94, 104, 114, 124, 134, 144, 4, 13);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (53, 1, false, 55, 65, 75, 85, 95, 105, 115, 125, 135, 145, 4, 13);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (54, 0, false, 56, 66, 76, 86, 96, 106, 116, 126, 136, 146, 4, 13);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (55, 1, true, 57, 67, 77, 87, 97, 107, 117, 127, 137, 147, 4, 14);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (56, 0, true, 58, 68, 78, 88, 98, 108, 118, 128, 138, 148, 4, 14);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (57, 1, false, 59, 69, 79, 89, 99, 109, 119, 129, 139, 149, 4, 14);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (58, 0, false, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 4, 14);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (59, 1, false, 66, 76, 86, 96, 106, 116, 126, 136, 146, 156, 1, 16);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (60, 0, false, 67, 77, 87, 97, 107, 117, 127, 137, 147, 157, 1, 16);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (61, 1, false, 68, 78, 88, 98, 108, 118, 128, 138, 148, 158, 1, 17);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (62, 0, false, 69, 79, 89, 99, 109, 119, 129, 139, 149, 159, 1, 17);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (63, 1, false, 74, 84, 94, 104, 114, 124, 134, 144, 154, 164, 1, 20);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (64, 0, false, 75, 85, 95, 105, 115, 125, 135, 145, 155, 165, 1, 20);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (65, 1, false, 76, 86, 96, 106, 116, 126, 136, 146, 156, 166, 1, 21);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (66, 0, false, 77, 87, 97, 107, 117, 127, 137, 147, 157, 167, 1, 21);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (67, 1, true, 61, 71, 81, 91, 101, 111, 121, 131, 141, 151, 5, 15);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (68, 1, false, 62, 72, 82, 92, 102, 112, 122, 132, 142, 152, 5, 15);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (69, 1, true, 63, 73, 83, 93, 103, 113, 123, 133, 143, 153, 6, 15);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (70, 1, false, 64, 74, 84, 94, 104, 114, 124, 134, 144, 154, 6, 15);
insert into Opcao (id, acomodacao, coparticipacao, valor0a18anos, valor19a23anos, valor24a28anos, valor29a33anos, valor34a38anos, valor39a43anos, valor44a48anos, valor49a53anos, valor54a58anos, valor59ouMaisAnos, produto_id, tabela_id) values (71, 0, false, 65, 75, 85, 95, 105, 115, 125, 135, 145, 155, 6, 15);
