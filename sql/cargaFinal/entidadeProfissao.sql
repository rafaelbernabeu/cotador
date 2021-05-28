# (1, 'ABECA');
# (2, 'ABESP DF');
# (3, 'ABPL');
# (4, 'ABRABDIR');
# (5, 'ABRACEM');
# (6, 'ABRADIR');
# (7, 'ABRAPAC');
# (8, 'ABRAS');
# (9, 'ABRE');
# (10, 'ACRESP');
# (11, 'ADPF');
# (12, 'AESP/DF');
# (13, 'AFB');
# (14, 'AFECOM');
# (15, 'AJUFE');
# (16, 'AMAGIS');
# (17, 'AMAI');
# (18, 'AMB');
# (19, 'AMN');
# (20, 'ANACOM');
# (21, 'ANADEF');
# (22, 'ANAMATRA');
# (23, 'ANATO');
# (24, 'ASCOM');
# (25, 'ASMPF');
# (26, 'ASPROFILI');
# (27, 'ASSEF');
# (28, 'AVAASP');
# (29, 'CAA-DF');
# (30, 'CNPL');
# (31, 'CORECON-DF');
# (32, 'CRA-DF');
# (33, 'CRBio-4');
# (34, 'CREF7');
# (35, 'CRF-DF');
# (36, 'CRO-DF');
# (37, 'CRP-01');
# (38, 'FEB');
# (39, 'FEBEUS');
# (40, 'FEBRAD');
# (41, 'FECOMÉRCIO');
# (42, 'FECOMÉRCIO - DF');
# (43, 'FEIFAR');
# (44, 'FENAMEV');
# (45, 'FETRACOM');
# (46, 'FETRAN');
# (47, 'FETRATUH');
# (48, 'FINAFITO');
# (49, 'FNA');
# (50, 'FNN');
# (51, 'FNO');
# (52, 'GASP');
# (53, 'INAAD');
# (54, 'INAADIR');
# (55, 'INAPROF');
# (56, 'INST DE ENG');
# (57, 'MÚTUA');
# (58, 'SASPB');
# (59, 'SINARQ');
# (60, 'SINDICOM-DF');
# (61, 'SINDICONTA - DF');
# (62, 'SINDIRECEITA');
# (63, 'SINDMÉDICO');
# (64, 'SINDMÉDICO - DF');
# (65, 'SINDPSICOP - BR');
# (66, 'SINPROEP');
# (67, 'SINPROEP - DF');
# (68, 'SINTEC DF');
# (69, 'SINTRA');
# (70, 'UBE');
# (71, 'UBES');
# (72, 'UNE');


# (1, 'Autônomo'): AVAASP
insert into Entidade_Profissao (profissoes_id, entidade_id) values (1, 28);

# (2, 'Empresário'): AFECOM	ANACOM	FECOMÉRCIO	FECOMÉRCIO - DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (2, 14);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (2, 20);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (2, 41);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (2, 42);

# (3, 'Empresário Individual'): AFECOM	ANACOM	ASCOM	FECOMERCIO	FECOMÉRCIO	FECOMÉRCIO - DF	FETRATUH
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, 14);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, 20);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, 24);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, 41);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, 42);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, 47);

# (4, 'Comerciário / CLT'): AFECOM	ANACOM	ASCOM	FETRACOM	FETRATUH	SINDICOM-DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, 14);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, 20);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, 24);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, 45);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, 47);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, 60);

# (5, 'Empregados do Conselho de Adm'): ABECA	AFECOM	ANACOM	ASCOM	FETRACOM	FETRATUH	SINDICOM-DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, 1);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, 14);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, 20);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, 24);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, 45);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, 47);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, 60);

# (6, 'Servidor Público Distrital'): ABESP DF	ACRESP	AESP/DF	AMAGIS	ASMPF	GASP	SASPB
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 2);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 12);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 16);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 52);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, 58);

# (7, 'Servidor Público Distrital Aposentado'): ABESP DF	AESP/DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, 2);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, 12);

# (8, 'Servidor Público Federal'): ABRAS	ACRESP	AMAGIS	ASMPF	ASSEF	GASP	SASPB
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 16);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 27);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 52);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, 58);

# (9, 'Delegado da Polícia Federal'): ABRAS	ACRESP	ADPF	AMAGIS	ASMPF	ASSEF	GASP	SASPB
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 11);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 16);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 27);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 52);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, 58);

# (10, 'Defensor Público'): ABRAS	ACRESP	AMAGIS	ANADEF	ASMPF	ASSEF	GASP	SASPB
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 16);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 21);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 27);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 52);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, 58);

# (11, 'Juiz Federal'): ABRAS	ACRESP	AJUFE	AMAGIS	ASMPF	ASSEF	GASP	SASPB
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 15);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 16);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 27);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 52);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, 58);

# (12, 'Servidor da Receita'): ABRAS	ACRESP	AMAGIS	ASMPF	ASSEF	GASP	SASPB	SINDIRECEITA
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 16);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 27);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 52);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 58);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, 62);

# (13, 'Servidor do Detran'): ABESP DF	ACRESP	AESP/DF	AMAGIS	ASMPF	FETRAN	GASP	SASPB
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 2);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 12);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 16);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 46);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 52);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, 58);

# (14, 'Servidor do Ministério Público Federal'): ABRAS	ACRESP	AMAGIS	ASMPF	ASSEF	GASP	SASPB
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 16);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 27);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 52);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, 58);

# (15, 'Magistrado'): ABRAS	ACRESP	AMAGIS	AMB	ANAMATRA	ASMPF	ASSEF	GASP	SASPB
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, 8);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, 10);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, 16);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, 18);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, 22);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, 25);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, 27);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, 52);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, 58);

# (16, 'Estudante Ed Infantil'): FEB	FEBEUS	UBE
insert into Entidade_Profissao (profissoes_id, entidade_id) values (16, 38);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (16, 39);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (16, 70);

# (17, 'Estudante Secundarista'): FEB	FEBEUS	UBES
insert into Entidade_Profissao (profissoes_id, entidade_id) values (17, 38);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (17, 39);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (17, 71);

# (18, 'Estudante de Faculdade'): FEB	FEBEUS	UNE
insert into Entidade_Profissao (profissoes_id, entidade_id) values (18, 38);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (18, 39);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (18, 72);

# (19, 'Estudante de Direito'): FEB	FEBEUS	INAAD	UNE
insert into Entidade_Profissao (profissoes_id, entidade_id) values (19, 38);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (19, 39);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (19, 53);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (19, 72);

# (20, 'Estudante de Contabilidade 7º em diante'): FEB	FEBEUS	SINDICONTA - DF	UNE
insert into Entidade_Profissao (profissoes_id, entidade_id) values (20, 38);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (20, 39);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (20, 61);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (20, 72);

# (21, 'Profissional Liberal'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, 30);

# (22, 'Administrador com CRA'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	CRA-DF	FEBRAD
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, 32);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, 40);

# (23, 'Advogado C/ OAB'): ABPL	ABRABDIR	ABRACEM	ABRADIR	ABRE	ASPROFILI	CAA	CNPL	INAADIR
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 4);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 6);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 29);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, 54);

# (24, 'Advogado s/ OAB'): ABPL	ABRABDIR	ABRACEM	ABRADIR	ABRE	ASPROFILI	CNPL	INAADIR
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 4);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 6);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, 54);

# (25, 'Estagiário Advogado'): ABPL	ABRACEM	ABRE	ASPROFILI	CAA-DF	CNPL	INAADIR
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, 29);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, 54);

# (26, 'Agronomo'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	MÚTUA
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, 57);

# (27, 'Arquiteto'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	FNA	MÚTIA	MÚTUA	SINARQ
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 49);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 57);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 57);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, 59);

# (28, 'Biologo'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	CRBio-4
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, 33);

# (29, 'Contador'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	CORECON-DF	SINDICONTA-DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, 31);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, 61);

# (30, 'Dentista'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	CRO-DF	FNO
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, 36);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, 51);

# (31, 'Economista'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	CORECON-DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, 31);

# (32, 'Educação Física'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	CREF7
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, 34);

# (33, 'Engenheiro'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	INST DE ENG	MÚTUA
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, 56);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, 57);

# (34, 'Farmacêutico'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	CRF-DF	FEIFAR
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, 35);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, 43);

# (35, 'Fisioterapeuta'): ABPL	ABRACEM	ABRE	AFB	ASPROFILI	CNPL	FINAFITO
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, 13);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, 48);

# (36, 'Médico'): ABPL	ABRACEM	ABRE	AMAI	AMB	ASPROFILI	CNPL	SINDMÉDICO	SINDMÉDICO - DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 17);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 18);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 63);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, 64);

# (37, 'Marinheiro'): ABPL	ABRACEM	ABRE	AMN	ASPROFILI	CNPL
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, 19);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, 30);

# (38, 'Nutricionista'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	FNN
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, 50);

# (39, 'Piloto de Aviação'): ABPL	ABRACEM	ABRAPAC	ABRE	ASPROFILI	CNPL
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, 7);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, 30);

# (40, 'Psicólogo'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	CRP-01
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, 37);

# (41, 'Psicopedagogo'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	SINDPSICOP - BR
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, 65);

# (42, 'Professor Particular'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	INAPROF	SINPROEP	SINPROEP - DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 55);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 66);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, 67);

# (43, 'Técnico em Odontologia'): ABPL	ABRACEM	ABRE	ANATO	ASPROFILI	CNPL
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, 23);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, 30);

# (44, 'Técnico Industrial'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	SINTEC DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, 68);

# (45, 'Tradutor'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	SINTRA
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, 69);

# (46, 'Veterinário'): ABPL	ABRACEM	ABRE	ASPROFILI	CNPL	FENAMEV
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, 3);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, 5);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, 9);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, 26);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, 30);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, 44);
