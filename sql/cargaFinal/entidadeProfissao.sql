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



# (1, 'Autônomo');
# Autônomo	AVAASP	|
insert into Entidade_Profissao (profissoes_id, entidade_id) values (1, AVAASP);

# (2, 'Empresário');
# Empresário	AFECOM	|	ANACOM	|	FECOMÉRCIO	|	FECOMÉRCIO - DF	|
insert into Entidade_Profissao (profissoes_id, entidade_id) values (2, AFECOM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (2, ANACOM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (2, FECOMÉRCIO);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (2, FECOMÉRCIO - DF);

# (3, 'Empresário Individual');
# Empresário Individual	AFECOM	|	ANACOM	|	ASCOM	|	FECOMÉRCIO	|	FECOMÉRCIO - DF	|	FETRATUH
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, AFECOM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, ANACOM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, ASCOM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, FECOMÉRCIO);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, FECOMÉRCIO - DF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (3, FETRATUH);

# (4, 'Comerciário / CLT');
# Comerciário / CLT	 AFECOM	|	ANACOM	|	ASCOM	|	FETRACOM	|	FETRATUH	|	SINDICOM-DF	|
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, AFECOM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, ANACOM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, ASCOM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, FETRACOM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, FETRATUH);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (4, SINDICOM-DF);

# (5, 'Empregados do Conselho de Adm');
# Empregados do Conselho de Adm	ABECA	|	AFECOM	|	ANACOM	|	ASCOM	|	FETRACOM	|	FETRATUH	|	SINDICOM-DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, ABECA);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, AFECOM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, ANACOM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, ASCOM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, FETRACOM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, FETRATUH);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (5, SINDICOM-DF);

# (6, 'Servidor Público Distrital');
# Servidor Público Distrital	ABESP DF	|	ACRESP	|	AESP/DF	|	AMAGIS	|	ASMPF	|	GASP	|	SASPB	|
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, ABESP DF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, ACRESP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, AESP/DF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, AMAGIS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, ASMPF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, GASP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (6, SASPB);

# (7, 'Servidor Público Distrital Aposentado');
# Servidor Público Distrital Aposentado	ABESP DF	|	AESP/DF	|		|
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, ABESP DF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (7, AESP/DF);

# (8, 'Servidor Público Federal');
# Servidor Público Federal	ABRAS	|	ACRESP	|	AMAGIS	|	ASMPF	|	ASSEF	|	GASP	|	SASPB	|
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, ABRAS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, ACRESP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, AMAGIS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, ASMPF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, ASSEF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, GASP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (8, SASPB);

# (9, 'Delegado da Polícia Federal');
# Delegado da Polícia Federal	ABRAS	|	ACRESP	|	ADPF	|	AMAGIS	|	ASMPF	|	ASSEF	|	GASP	|	SASPB
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, ABRAS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, ACRESP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, ADPF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, AMAGIS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, ASMPF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, ASSEF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, GASP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (9, SASPB);

# (10, 'Defensor Público');
# Defensor Público	ABRAS	|	ACRESP	|	AMAGIS	|	ANADEF	|	ASMPF	|	ASSEF	|	GASP	|	SASPB
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, ABRAS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, ACRESP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, AMAGIS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, ANADEF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, ASMPF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, ASSEF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, GASP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (10, SASPB);

# (11, 'Juiz Federal');
# Juiz Federal	ABRAS	|	ACRESP	|	AJUFE	|	AMAGIS	|	ASMPF	|	ASSEF	|	GASP	|	SASPB
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, ABRAS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, ACRESP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, AJUFE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, AMAGIS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, ASMPF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, ASSEF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, GASP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (11, SASPB);

# (12, 'Servidor da Receita');
# Servidor da Receita	ABRAS	|	ACRESP	|	AMAGIS	|	ASMPF	|	ASSEF	|	GASP	|	SASPB	|	SINDIRECEITA
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, ABRAS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, ACRESP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, AMAGIS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, ASMPF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, ASSEF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, GASP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, SASPB);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (12, SINDIRECEITA);

# (13, 'Servidor do Detran');
# Servidor do Detran	ABESP DF	|	ACRESP	|	AESP/DF	|	AMAGIS	|	ASMPF	|	FETRAN	|	GASP	|	SASPB
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, ABESP DF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, ACRESP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, AESP/DF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, AMAGIS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, ASMPF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, FETRAN);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, GASP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (13, SASPB);

# (14, 'Servidor do Ministério Público Federal');
# Servidor do Ministério Público  Federal 	ABRAS	|	ACRESP	|	AMAGIS	|	ASMPF	|	ASSEF	|	GASP	|	SASPB	|
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, ABRAS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, ACRESP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, AMAGIS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, ASMPF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, ASSEF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, GASP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (14, SASPB);

# (15, 'Magistrado');
# Magistrado	ABRAS	|	ACRESP	|	AMAGIS	|	AMB	|	ANAMATRA	|	ASMPF	|	ASSEF	|	GASP	|	SASPB
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, ABRAS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, ACRESP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, AMAGIS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, AMB);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, ANAMATRA);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, ASMPF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, ASSEF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, GASP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (15, SASPB);

# (16, 'Estudante Ed Infantil');
# Estudante Ed Infantil	FEB	|	FEBEUS	|	UBE
insert into Entidade_Profissao (profissoes_id, entidade_id) values (16, FEB);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (16, FEBEUS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (16, UBE);

# (17, 'Estudante Secundarista');
# Estudante Secundarista	FEB	|	FEBEUS	|	UBES
insert into Entidade_Profissao (profissoes_id, entidade_id) values (17, FEB);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (17, FEBEUS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (17, UBES);

# (18, 'Estudante de Faculdade');
# Estudante de Faculdade	FEB	|	FEBEUS	|	UNE
insert into Entidade_Profissao (profissoes_id, entidade_id) values (18, FEB);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (18, FEBEUS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (18, UNE);

# (19, 'Estudante de Direito');
# Estudante de Direito	FEB	|	FEBEUS	|	INAAD	|	UNE
insert into Entidade_Profissao (profissoes_id, entidade_id) values (19, FEB);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (19, FEBEUS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (19, INAAD);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (19, UNE);

# (20, 'Estudante de Contabilidade 7º em diante');
# Estudante de Contabilidade 7º  em diante 	FEB	|	FEBEUS	|	SINDICONTA - DF	|	UNE
insert into Entidade_Profissao (profissoes_id, entidade_id) values (20, FEB);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (20, FEBEUS);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (20, SINDICONTA - DF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (20, UNE);

# (21, 'Profissional Liberal');
# Profissional Liberal	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (21, CNPL);

# (22, 'Administrador com CRA');
# Administrador com CRA	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	CRA-DF	|	FEBRAD
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, CRA-DF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (22, FEBRAD);

# (23, 'Advogado C/ OAB');
# Advogado C/ OAB	ABPL	|	ABRABDIR	|	ABRACEM	|	ABRADIR	|	ABRE	|	ASPROFILI	|	CAA	|	CNPL	|	INAADIR
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, ABRABDIR);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, ABRADIR);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, CAA);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (23, INAADIR);

# (24, 'Advogado s/ OAB');
# Advogado s/ OAB	ABPL	|	ABRABDIR	|	ABRACEM	|	ABRADIR	|	ABRE	|	ASPROFILI	|	CNPL	|	INAADIR
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, ABRABDIR);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, ABRADIR);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (24, INAADIR);

# (25, 'Estagiário Advogado');
# Estagiário Advogado	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CAA-DF	|	CNPL	|	INAADIR
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, CAA-DF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (25, INAADIR);

# (26, 'Agronomo');
# Agronomo	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	MÚTUA	|
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (26, MÚTUA);

# (27, 'Arquiteto');
# Arquiteto	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	FNA	|	MÚTIA	|	MÚTUA	|	SINARQ
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, FNA);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, MÚTIA);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, MÚTUA);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (27, SINARQ);

# (28, 'Biologo');
# Biologo	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	CRBio-4	|
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (28, CRBio-4);

# (29, 'Contador');
# Contador	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	CORECON-DF	|	SINDICONTA-DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, CORECON-DF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (29, SINDICONTA-DF);

# (30, 'Dentista');
# Dentista	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	CRO-DF	|	FNO
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, CRO-DF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (30, FNO);

# (31, 'Economista');
# Economista	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	CORECON-DF	|
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (31, CORECON-DF);

# (32, 'Educação Física');
# Educação Física	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	CREF7	|
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (32, CREF7);

# (33, 'Engenheiro');
# Engenheiro	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	INST DE ENG	|	MÚTUA
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, INST DE ENG);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (33, MÚTUA);

# (34, 'Farmacêutico');
# Farmacêutico	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	CRF-DF	|	FEIFAR
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, CRF-DF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (34, FEIFAR);

# (35, 'Fisioterapeuta');
# Fisioterapeuta	ABPL	|	ABRACEM	|	ABRE	|	AFB	|	ASPROFILI	|	CNPL	|	FINAFITO
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, AFB);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (35, FINAFITO);

# (36, 'Médico');
# Médico	ABPL	|	ABRACEM	|	ABRE	|	AMAI	|	AMB	|	ASPROFILI	|	CNPL	|	SINDMÉDICO	|	SINDMÉDICO - DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, AMAI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, AMB);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, SINDMÉDICO);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (36, SINDMÉDICO - DF);

# (37, 'Marinheiro');
# Marinheiro	ABPL	|	ABRACEM	|	ABRE	|	AMN	|	ASPROFILI	|	CNPL
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, AMN);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (37, CNPL);

# (38, 'Nutricionista');
# Nutricionista	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	FNN
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (38, FNN);

# (39, 'Piloto de Aviação');
# Piloto de Aviação	ABPL	|	ABRACEM	|	ABRAPAC	|	ABRE	|	ASPROFILI	|	CNPL
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, ABRAPAC);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (39, CNPL);

# (40, 'Psicólogo');
# Psicólogo	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	CRP-01
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (40, CRP-01);

# (41, 'Psicopedagogo');
# Psicopedagogo	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	SINDPSICOP - BR
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (41, SINDPSICOP - BR);

# (42, 'Professor Particular');
# Professor Particular	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	INAPROF	|	SINPROEP	|	SINPROEP - DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, INAPROF);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, SINPROEP);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (42, SINPROEP - DF);

# (43, 'Técnico em Odontologia');
# Técnico em Odontologia 	ABPL	|	ABRACEM	|	ABRE	|	ANATO	|	ASPROFILI	|	CNPL
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, ANATO);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (43, CNPL);

# (44, 'Técnico Industrial');
# Técnico Industrial	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	SINTEC DF
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (44, SINTEC DF);

# (45, 'Tradutor');
# Tradutor	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	SINTRA
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (45, SINTRA);

# (46, 'Veterinário');
# Veterinário	ABPL	|	ABRACEM	|	ABRE	|	ASPROFILI	|	CNPL	|	FENAMEV
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, ABPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, ABRACEM);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, ABRE);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, ASPROFILI);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, CNPL);
insert into Entidade_Profissao (profissoes_id, entidade_id) values (46, FENAMEV);
