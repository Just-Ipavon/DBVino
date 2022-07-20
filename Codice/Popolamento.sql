#--------------------------------------------TUPLA 1 CHIANTI--------------------------------------------#

INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto)  VALUES('Sangiovese',10,'Rosso',1000);
INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto)  VALUES('Canaiolo',9,'Rosso',700);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF)   VALUES('chianti',4,'rosso',12,22,1,2);

INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente)  VALUES('Certifichiamo','entecertif@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto)  VALUES('chianti','Certifichiamo',321,TO_DATE('12/12/2018', 'DD/MM/YYYY'),1,'DOC');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale)  VALUES('chianti','Canaiolo',20);
INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale)  VALUES('chianti','Sangiovese',80);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione)  VALUES('Belvino','Montespertoli',100);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento)  VALUES(654321,'Potatura',150);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento)  VALUES('Belvino','Montespertoli',654321,TO_DATE('12/10/2015', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento)  VALUES(123456,'Pesticida','Pesticida1',250);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento)  VALUES('Belvino','Montespertoli',123456,TO_DATE('12/10/2014', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta)  VALUES('Canaiolo',TO_DATE('12/12/2015', 'DD/MM/YYYY'),'Belvino','Montespertoli',200,400);
INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta)  VALUES('Sangiovese',TO_DATE('12/12/2015', 'DD/MM/YYYY'),'Belvino','Montespertoli',100,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede)  VALUES('Via nazionale 235','50025','Montespertoli','Vinificatoriamo');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm)  VALUES(1234,'Vinificatoriamo',300,TO_DATE('17/12/2015', 'DD/MM/YYYY'),TO_DATE('17/12/2016', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura)  VALUES(1234,'Canaiolo',TO_DATE('12/12/2015', 'DD/MM/YYYY'),60,290);
INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura)  VALUES(1234,'Sangiovese',TO_DATE('12/12/2015', 'DD/MM/YYYY'),10,290);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott)  VALUES('Imbottigliamo','via nazionale','50025','Montespertoli');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione)  VALUES(4321,70,1234,'chianti',TO_DATE('23/12/2016', 'DD/MM/YYYY'),'Imbottigliamo',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina)  VALUES('Cantinasi','via nazionale','50025','Montespertoli');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina)  VALUES(111,'Acero','Cantinasi');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv)  VALUES(111,4321,TO_DATE('24/12/2016', 'DD/MM/YYYY'),TO_DATE('24/12/2020', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl)  VALUES('Evergreen di Mario Rossi s.n.c.','Mario Rossi','via giuseppe verdi','37100','Verona');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale)  VALUES(666666,TO_DATE('24/12/2018', 'DD/MM/YYYY'),'Evergreen di Mario Rossi s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto)  VALUES(0000,'chianti',4321,3,40.00,666666);

#--------------------------------------------TUPLA 2 Falanghina--------------------------------------------#

INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto)  VALUES('Falanghina',5,'Bianco',400);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF)  VALUES('falanghina',4,'bianco',5,22,1,2);

INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente)  VALUES('Certificazioni IT','certifit@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto)  VALUES('falanghina','Certificazioni IT',210,TO_DATE('12/12/2021', 'DD/MM/YYYY'),1,'DOC');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale)  VALUES('falanghina','Falanghina',100);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione)  VALUES('Buonvino','Benevento',100);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento)  VALUES(548762,'Potatura',150);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento)  VALUES('Buonvino','Benevento',548762,TO_DATE('12/10/2018', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento)  VALUES(765434,'Pesticida','Pesticida1',250);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento)  VALUES('Buonvino','Benevento',765434,TO_DATE('12/11/2018', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta)  VALUES('Falanghina',TO_DATE('12/12/2019', 'DD/MM/YYYY'),'Buonvino','Benevento',200,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede)  VALUES('Via nazionale 235','81023','Cervino','Vivailvino');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm)  VALUES(2135,'Vivailvino',300,TO_DATE('17/12/2015', 'DD/MM/YYYY'),TO_DATE('17/12/2016', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura)  VALUES(2135,'Falanghina',TO_DATE('12/12/2015', 'DD/MM/YYYY'),10,290);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott)  VALUES('Marcianise Imbott','via nazionale','81025','marcianise');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione)  VALUES(6251,70,2135,'falanghina',TO_DATE('23/12/2016', 'DD/MM/YYYY'),'Marcianise Imbott',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina)  VALUES('Cantinai','via nazionale','81025','marcianise');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina)  VALUES(251,'Acero','Cantinai');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv)  VALUES(251,6251,TO_DATE('24/12/2016', 'DD/MM/YYYY'),TO_DATE('24/12/2020', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl)  VALUES('Evergreen di Mario Vista s.n.c.','Mario Vista','via giuseppe gramsci','37100','Verona');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale)  VALUES(981235,TO_DATE('24/12/2018', 'DD/MM/YYYY'),'Evergreen di Mario Vista s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto)  VALUES(5421,'falanghina',6251,3,30.00,981235);

#--------------------------------------------TUPLA 3 Aglianico--------------------------------------------#
INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto)  VALUES('Aglianico',5,'Nero',400);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF)  VALUES('aglianico',4,'Nero',15,25,4,2);

INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente)  VALUES('Certificati Vini','entecertif@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto)  VALUES('aglianico','Certificati Vini',421,TO_DATE('12/12/2021', 'DD/MM/YYYY'),1,'DOC');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale)  VALUES('aglianico','Aglianico',100);

--INSERT INTO Vigneto(NomeV,ComuneV,Estensione)  VALUES('Buonvino','Benevento',100); gia presente

--INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento)  VALUES(548762,'Potatura',150);

--INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento)  VALUES('Buonvino','Benevento',548762,TO_DATE('12/10/2018', 'DD/MM/YYYY'));

--INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento)  VALUES(123456,'Pesticida','Pesticida1',250);

--INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento)  VALUES('Buonvino','Benevento',123456,TO_DATE('12/11/2018', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta)  VALUES('Aglianico',TO_DATE('05/05/2013', 'DD/MM/YYYY'),'Buonvino','Benevento',200,400);

--INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede)  VALUES('Via nazionale 235','81023','Cervino','Vivailvino');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm)  VALUES(5463,'Vivailvino',300,TO_DATE('14/05/2013', 'DD/MM/YYYY'),TO_DATE('17/12/2013', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura)  VALUES(5463,'Aglianico',TO_DATE('07/05/2013', 'DD/MM/YYYY'),10,290);

--INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott)  VALUES('Imbottigliamo','via nazionale','81025','marcianise');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione)  VALUES(9785,70,5463,'aglianico',TO_DATE('23/12/2016', 'DD/MM/YYYY'),'Imbottigliamo',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina)  VALUES('Cantina del nonno','via nazionale','81025','marcianise');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina)  VALUES(221,'Acero','Cantina del nonno');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv)  VALUES(221,9785,TO_DATE('20/12/2013', 'DD/MM/YYYY'),TO_DATE('13/07/2021', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl)  VALUES('Evergreen di Giuseppe Verdi s.n.c.','Giuseppe Verdi','via Napoli','37100','Verona');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale)  VALUES(01245,TO_DATE('14/08/2019', 'DD/MM/YYYY'),'Evergreen di Giuseppe Verdi s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto)  VALUES(6458,'aglianico',9785,3,35.00,01245);

#--------------------------------------------TUPLA 4 Lacryma Christi--------------------------------------------#

INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto)  VALUES('Piedirosso',10,'Rosso',1000);
--INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto)  VALUES('Aglianico',9,'Rosso',700);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF)  VALUES('Lacryma Christi',4,'rosso',12,12,1,2);

INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente)  VALUES('OsteCerti','OsteCerti@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto)  VALUES('Lacryma Christi','OsteCerti',932,TO_DATE('12/12/2018', 'DD/MM/YYYY'),1,'DOC');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale)  VALUES('Lacryma Christi','Aglianico',20);
INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale)  VALUES('Lacryma Christi','Piedirosso',80);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione)  VALUES('Lacricma Del Vesuvio','Napoli',100);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento)  VALUES(648157,'Potatura',150);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento)  VALUES('Lacricma Del Vesuvio','Napoli',648157,TO_DATE('03/06/2018', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento)  VALUES(648572,'Pesticida','Pesticida1',250);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento)  VALUES('Lacricma Del Vesuvio','Napoli',648572,TO_DATE('12/10/2018', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta)  VALUES('Piedirosso',TO_DATE('12/12/2019', 'DD/MM/YYYY'),'Lacricma Del Vesuvio','Napoli',800,400);
INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta)  VALUES('Aglianico',TO_DATE('12/12/2019', 'DD/MM/YYYY'),'Lacricma Del Vesuvio','Napoli',200,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede)  VALUES('Via nazionale 256','80100','Napoli','Cristo Vinificatore');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm)  VALUES(8461,'Cristo Vinificatore',300,TO_DATE('17/12/2019', 'DD/MM/YYYY'),TO_DATE('17/12/2020', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura)  VALUES(8461,'Piedirosso',TO_DATE('04/01/2020', 'DD/MM/YYYY'),800,290);
INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura)  VALUES(8461,'Aglianico',TO_DATE('04/01/2020', 'DD/MM/YYYY'),200,290);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott)  VALUES('Imbottiglia vino','via nazionale','80100','Napoli');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione)  VALUES(8751,1000,1234,'chianti',TO_DATE('09/01/2020', 'DD/MM/YYYY'),'Imbottiglia vino',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina)  VALUES('Sepolcro','viale degli ulivi','80100','Napoli');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina)  VALUES(033,'Abete','Sepolcro');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv)  VALUES(033,8751,TO_DATE('13/01/2020', 'DD/MM/YYYY'),TO_DATE('24/10/2020', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl)  VALUES('Evergreen di Antonio Ciuffini s.n.c.','Antonio Ciuffini','via cantina di zi michele','80145','Chiaiano');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale)  VALUES(021974,TO_DATE('24/12/2018', 'DD/MM/YYYY'),'Evergreen di Antonio Ciuffini s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto)  VALUES(0321,'chianti',8751,9,90.00,021974);

# --------------------------------------------TUPLA 5 GEWURZTRAMINER--------------------------- #
INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('Traminer',50,'Bianco',200);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF) VALUES('Gewurztraminer',6.5,'bianco',50,10.2,5,20);

INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente)  VALUES('Eccerto','enteeccerto@postadellostato.it','via Roma','00042','Napoli');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto)  VALUES('Gewurztraminer','Eccerto',34,TO_DATE('16/11/2020', 'DD/MM/YYYY'),1,'DOP');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('Gewurztraminer','Traminer',95);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione) VALUES('Trentino','SudTirol',5);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento) VALUES(888888,'Concimatura',100);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento)  VALUES('Trentino','SudTirol',888888,TO_DATE('11/10/2020', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento)  VALUES(235418,'Pesticida','Appestato',100);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento)  VALUES('Trentino','SudTirol',235418,TO_DATE('20/11/2020', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta)  VALUES('Traminer',TO_DATE('29/11/2020', 'DD/MM/YYYY'),'Trentino','SudTirol',220,300);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede) VALUES('Via Cosenza 5','81025','Livorno','Sede Vino');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm)  VALUES(2100,'Sede Vino',180,TO_DATE('31/01/2021', 'DD/MM/YYYY'),TO_DATE('02/03/2021', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura)  VALUES(2100,'Traminer',TO_DATE('29/11/2020', 'DD/MM/YYYY'),90,200);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott) VALUES('Bottiamoci','via Tutti 1','81021','Napoli');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione) VALUES(3100,80,2100,'Gewurztraminer',TO_DATE('18/04/2021', 'DD/MM/YYYY'),'Bottiamoci',120);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina) VALUES('Accantoniamoci','via Strada 12','80127','Napoli');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina) VALUES(1,'Quercia','Accantoniamoci');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv)  VALUES(1,3100,TO_DATE('19/04/2021', 'DD/MM/YYYY'),TO_DATE('29/05/2021', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl) VALUES('Il Cormen s.r.c.','Camastra','Centro Direzionale di Napoli Isola C4','80133','Napoli');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale) VALUES(982456,TO_DATE('15/06/2022', 'DD/MM/YYYY'),'Il Cormen s.r.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto)  VALUES(1,'Gewurztraminer',3100,6,100.00,982456);

#--------------------------------------------TUPLA 6 BAROLO--------------------------------------------#

INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto)  VALUES('Nebbiolo',5,'Rosso',400);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF)  VALUES('Barolo',4,'bianco',12.5,22,1,2);

--INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente)  VALUES('Certifichiamo','entecertif@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto)  VALUES('Barolo','Certifichiamo',242,TO_DATE('12/12/2021', 'DD/MM/YYYY'),1,'DOC');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale)  VALUES('Barolo','Nebbiolo',100);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione)  VALUES('Base del Vino','Caramagna di Piemonte',100);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento)  VALUES(239009,'Potatura',150);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento)  VALUES('Base del Vino','Caramagna di Piemonte',239009,TO_DATE('12/10/2018', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento)  VALUES(942645,'Pesticida','Pesticida1',250);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento)  VALUES('Base del Vino','Caramagna di Piemonte',942645,TO_DATE('12/11/2018', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta)  VALUES('Nebbiolo',TO_DATE('12/12/2019', 'DD/MM/YYYY'),'Base del Vino','Caramagna di Piemonte',200,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede)  VALUES('Via nazionale 235','10060','Candiolo','Vini del monte');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm)  VALUES(5275,'Vini del monte',300,TO_DATE('17/12/2015', 'DD/MM/YYYY'),TO_DATE('17/12/2016', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura)  VALUES(5275,'Nebbiolo',TO_DATE('12/12/2015', 'DD/MM/YYYY'),10,290);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott)  VALUES('Imbottiglia Sul Monte','via nazionale','10060','Candiolo');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione)  VALUES(8239,70,5275,'Barolo',TO_DATE('23/12/2016', 'DD/MM/YYYY'),'Imbottiglia Sul Monte',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina)  VALUES('Cantina del monte','via nazionale','10060','Candiolo');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina)  VALUES(211,'Acero','Cantina del monte');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv)  VALUES(211,8239,TO_DATE('24/12/2016', 'DD/MM/YYYY'),TO_DATE('24/12/2020', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl)  VALUES('Azienda Ristoro di Camastra Francesco s.n.c.','Francesco Camastra','via giuseppe verdi','88020','Catanzaro');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale)  VALUES(725189,TO_DATE('24/12/2018', 'DD/MM/YYYY'),'Azienda Ristoro di Camastra Francesco s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto)  VALUES(9328,'Barolo',8239,3,30.00,725189);


#--------------------------------------------TUPLA 7 FRANCIACORTA--------------------------------------------#

INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto)  VALUES('Chardonnay',5,'bianco',400);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF)  VALUES('Franciacorta',4,'bianco',9.5,22,1,2);

--INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente)  VALUES('Certifichiamo','entecertif@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto)  VALUES('Franciacorta','Certifichiamo',292,TO_DATE('12/12/2021', 'DD/MM/YYYY'),1,'DOCG');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale)  VALUES('Franciacorta','Chardonnay',100);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione)  VALUES('Franciavino','Brescia',100);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento)  VALUES(872657,'Potatura',150);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento)  VALUES('Franciavino','Brescia',872657,TO_DATE('12/10/2018', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento)  VALUES(410259,'Pesticida','Pesticida1',250);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento)  VALUES('Franciavino','Brescia',410259,TO_DATE('12/11/2018', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta)  VALUES('Chardonnay',TO_DATE('12/12/2019', 'DD/MM/YYYY'),'Franciavino','Brescia',200,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede)  VALUES('Via nazionale 235','25121','Brescia','Vini della valle');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm)  VALUES(4120,'Vini della valle',300,TO_DATE('17/12/2015', 'DD/MM/YYYY'),TO_DATE('17/12/2016', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura)  VALUES(4120,'Chardonnay',TO_DATE('12/12/2015', 'DD/MM/YYYY'),10,290);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott)  VALUES('Imbottiglia alla valle','via nazionale','10060','Candiolo');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione)  VALUES(9251,70,4120,'Barolo',TO_DATE('23/12/2016', 'DD/MM/YYYY'),'Imbottiglia alla valle',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina)  VALUES('Francantina','via nazionale','10060','Candiolo');
 
INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina)  VALUES(581,'Acero','Francantina');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv)  VALUES(581,9251,TO_DATE('24/12/2016', 'DD/MM/YYYY'),TO_DATE('24/12/2020', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl)  VALUES('Azienda Ristoro di Giuseppe Camastra s.n.c.','Giuseppe Camastra','via Aldo Moro','88020','Catanzaro');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale)  VALUES(520359,TO_DATE('24/12/2018', 'DD/MM/YYYY'),'Azienda Ristoro di Giuseppe Camastra s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto)  VALUES(1041,'Barolo',9251,3,30.00,520359);

# ----------------------------------------------TUPLA 8 CIRO ROSATO----------------------------------------------------------- #

INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('Gaglioppo',6,'Rosato',500);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF)  VALUES('Ciro Rosato',5.5,'Rosa',14.5,20,2,4);

INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente) VALUES('Ente Certificazione Vino','entecertif@postadellostato.it','via nazionale','00043','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto)  VALUES('Ciro Rosato','Ente Certificazione Vino',633,TO_DATE('13/12/2021', 'DD/MM/YYYY'),1,'DOC');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('Ciro Rosato','Gaglioppo',100);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione) VALUES('VigNapoli','Napoli',400);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento) VALUES(123099,'Concimatura',50);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento)  VALUES('VigNapoli','Napoli',123099,TO_DATE('8/10/2018', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento)  VALUES(834276,'Pesticida','Appestato',150);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento)  VALUES('VigNapoli','Napoli',834276,TO_DATE('7/11/2018', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta)  VALUES('Gaglioppo',TO_DATE('15/12/2018', 'DD/MM/YYYY'),'VigNapoli','Napoli',300,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede) VALUES('Via dei Prati 2','90127','Palermo','Vini Siculi');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm) VALUES(5103,'Vini Siculi',200,TO_DATE('18/12/2018', 'DD/MM/YYYY'),TO_DATE('19/1/2019', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura)  VALUES(5103,'Gaglioppo',TO_DATE('24/2/2019', 'DD/MM/YYYY'),170,90);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott) VALUES('Imbottigliatore Palermo','Via Palermo 1','90121','Palermo');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione) VALUES(9521,95,5103,'Ciro Rosato',TO_DATE('19/1/2019', 'DD/MM/YYYY'),'Imbottigliatore Palermo',200);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina) VALUES('Palermo Cantine','via Cantine','90131','Palermo');
 
INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina) VALUES(98,'Rovere','Palermo Cantine');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv)  VALUES(98,9521,TO_DATE('22/1/2019', 'DD/MM/YYYY'),TO_DATE('25/2/2019', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl) VALUES('Programmazione 1 s.n.c.','Giulio Giunta','via Mantthan 666','54100','Napoli');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale) VALUES(529555,TO_DATE('24/4/2020', 'DD/MM/YYYY'),'Programmazione 1 s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto)  VALUES(9220,'Ciro Rosato',9521,3,50.50,529555);

# ----------------------------------------------TUPLA 9 DONNAFUGATA----------------------------------------------------------- #

INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto)  VALUES('Catarratto',5,'bianco',400);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF)  VALUES('Donnafugata',4,'bianco',9.5,22,1,2);

INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente)  VALUES('Ente Certificante','entecertif@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto)  VALUES('Donnafugata','Ente Certificante',632,TO_DATE('12/12/2021', 'DD/MM/YYYY'),1,'DOCG');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale)  VALUES('Donnafugata','Catarratto',100);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione)  VALUES('Siculamente','Trapani',100);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento)  VALUES(123093,'Potatura',150);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento)  VALUES('Siculamente','Trapani',123093,TO_DATE('12/10/2018', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento)  VALUES(834274,'Pesticida','Pesticida1',250);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento)  VALUES('Siculamente','Trapani',834274,TO_DATE('12/11/2018', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta)  VALUES('Catarratto',TO_DATE('12/12/2019', 'DD/MM/YYYY'),'Siculamente','Trapani',200,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede)  VALUES('Via dei campi 5','90121','Palermo','Vini isolani');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm)  VALUES(5102,'Vini isolani',300,TO_DATE('17/12/2015', 'DD/MM/YYYY'),TO_DATE('17/12/2016', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura)  VALUES(5102,'Catarratto',TO_DATE('12/12/2015', 'DD/MM/YYYY'),10,290);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott)  VALUES('Imbottigliatore etna','via nazionale','90121','Palermo');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione)  VALUES(9520,70,5102,'Donnafugata',TO_DATE('23/12/2016', 'DD/MM/YYYY'),'Imbottigliatore etna',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina)  VALUES('Piedi del vulcano','via nazionale','90121','Palermo');
 
INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina)  VALUES(981,'abete','Piedi del vulcano');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv)  VALUES(981,9520,TO_DATE('24/12/2016', 'DD/MM/YYYY'),TO_DATE('24/12/2020', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl)  VALUES('Azienda Vinicola s.n.c.','Giulio Giunta','via mantthan','50100','Firenze');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale)  VALUES(529545,TO_DATE('24/12/2018', 'DD/MM/YYYY'),'Azienda Vinicola s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto)  VALUES(9210,'Donnafugata',9520,3,30.00,529545);

# ----------------------------------------------TUPLA 10 BRUNELLO----------------------------------------------------------- #

--INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto)  VALUES('Sangiovese',5,'Rosso',200);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF)  VALUES('Brunello',7.5,'Rosso',20,22.5,6,21);

INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente) 
 VALUES('Certificazioni Vere','Certificazioni@postadellostato.it','via Napoli','00042','Napoli');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto) 
 VALUES('Brunello','Certificazioni Vere',3,TO_DATE('11/11/2011', 'DD/MM/YYYY'),1,'DOC');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale)
 VALUES('Brunello','Sangiovese',100);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione)
 VALUES('Vigneto Montalcino','Montalcino',10);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento)
 VALUES(111111,'Potatura2',50);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento)  VALUES('Vigneto Montalcino','Montalcino',111111,TO_DATE('11/10/2011', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento)  VALUES(235479,'Parassitario','Antiparassitario',80);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento)  VALUES('Vigneto Montalcino','Montalcino',235479,TO_DATE('20/11/2011', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta)  VALUES('Sangiovese',TO_DATE('29/11/2011', 'DD/MM/YYYY'),'Vigneto Montalcino','Montalcino',200,100);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede)
 VALUES('Via Roma 75','31025','Genova','La Vineria');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm)  VALUES(2101,'La Vineria',190,TO_DATE('30/01/2012', 'DD/MM/YYYY'),TO_DATE('14/02/2012', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura)  VALUES(2101,'Sangiovese',TO_DATE('18/02/2011', 'DD/MM/YYYY'),75,50);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott)
 VALUES('Abbottiamoci','via Botti 21','81028','Genova');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione)
 VALUES(2011,75,2101,'Brunello',TO_DATE('18/03/2021', 'DD/MM/YYYY'),'Abbottiamoci',220);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina)
 VALUES('Cantiniamoci','via Giunta 2','80131','Genova');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina)
 VALUES(51,'Abete','Cantiniamoci');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv)  VALUES(51,2011,TO_DATE('19/03/2021', 'DD/MM/YYYY'),TO_DATE('25/04/2021', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl)
 VALUES('Basi di Vini s.p.a.','Maratea','Centro Direzionale','20132','Cosenza');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale)
 VALUES(982556,TO_DATE('16/06/2022', 'DD/MM/YYYY'),'Basi di Vini s.p.a.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto)  VALUES(10,'Brunello',2011,9,200.00,982556);
