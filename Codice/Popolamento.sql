#--------------------------------------------TUPLA 1 CHIANTI--------------------------------------------#

INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('Sangiovese',10,'Rosso',1000);
INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('Canaiolo',9,'Rosso',700);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF) values('chianti',4,'rosso',12,22,1,2);

INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente) VALUES('Certifichiamo','entecertif@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto) values('chianti','Certifichiamo',321,TO_DATE('12/12/2018', 'DD/MM/YYYY'),1,'DOC');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('chianti','Canaiolo',20);
INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('chianti','Sangiovese',80);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione) VALUES('Belvino','Montespertoli',100);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento) VALUES(654321,'Potatura',150);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento) VALUES('Belvino','Montespertoli',654321,TO_DATE('12/10/2015', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento) VALUES(123456,'Pesticida','Pesticida1',250);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento) VALUES('Belvino','Montespertoli',123456,TO_DATE('12/10/2014', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta) VALUES('Canaiolo',TO_DATE('12/12/2015', 'DD/MM/YYYY'),'Belvino','Montespertoli',200,400);
INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta) VALUES('Sangiovese',TO_DATE('12/12/2015', 'DD/MM/YYYY'),'Belvino','Montespertoli',100,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede) VALUES('Via nazionale 235','50025','Montespertoli','Vinificatoriamo');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm) VALUES(1234,'Vinificatoriamo',300,TO_DATE('17/12/2015', 'DD/MM/YYYY'),TO_DATE('17/12/2016', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura) VALUES(1234,'Canaiolo',TO_DATE('12/12/2015', 'DD/MM/YYYY'),60,290);
INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura) VALUES(1234,'Sangiovese',TO_DATE('12/12/2015', 'DD/MM/YYYY'),10,290);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott) VALUES('Imbottigliamo','via nazionale','50025','Montespertoli');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione) VALUES(4321,70,1234,'chianti',TO_DATE('23/12/2016', 'DD/MM/YYYY'),'Imbottigliamo',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina) VALUES('Cantinasi','via nazionale','50025','Montespertoli');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina) VALUES(111,'Acero','Cantinasi');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv) VALUES(111,4321,TO_DATE('24/12/2016', 'DD/MM/YYYY'),TO_DATE('24/12/2020', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl) VALUES('Evergreen di Mario Rossi s.n.c.','Mario Rossi','via giuseppe verdi','37100','Verona');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale) VALUES(666666,TO_DATE('24/12/2018', 'DD/MM/YYYY'),'Evergreen di Mario Rossi s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto) VALUES(0000,'chianti',4321,3,40.00,666666);

#--------------------------------------------TUPLA 2 Falanghina--------------------------------------------#

INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('Falanghina',5,'Bianco',400);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF) values('falanghina',4,'bianco',5,22,1,2);

INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente) VALUES('Certifichiamo','entecertif@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto) values('falanghina','Certifichiamo',210,TO_DATE('12/12/2021', 'DD/MM/YYYY'),1,'DOC');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('falanghina','Falanghina',100);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione) VALUES('Buonvino','Benevento',100);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento) VALUES(548762,'Potatura',150);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento) VALUES('Buonvino','Benevento',548762,TO_DATE('12/10/2018', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento) VALUES(123456,'Pesticida','Pesticida1',250);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento) VALUES('Buonvino','Benevento',123456,TO_DATE('12/11/2018', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta) VALUES('Falanghina',TO_DATE('12/12/2019', 'DD/MM/YYYY'),'Belvino','Benevento',200,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede) VALUES('Via nazionale 235','81023','Cervino','Vivailvino');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm) VALUES(2135,'Vivailvino',300,TO_DATE('17/12/2015', 'DD/MM/YYYY'),TO_DATE('17/12/2016', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura) VALUES(2135,'Falanghina',TO_DATE('12/12/2015', 'DD/MM/YYYY'),10,290);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott) VALUES('Imbottigliamo','via nazionale','81025','marcianise');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione) VALUES(6251,70,2135,'falanghina',TO_DATE('23/12/2016', 'DD/MM/YYYY'),'Imbottigliamo',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina) VALUES('Cantinasi','via nazionale','81025','marcianise');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina) VALUES(251,'Acero','Cantinasi');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv) VALUES(251,6251,TO_DATE('24/12/2016', 'DD/MM/YYYY'),TO_DATE('24/12/2020', 'DD/MM/YYYY'));

--INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl) VALUES('Evergreen di Mario Rossi s.n.c.','Mario Rossi','via giuseppe verdi','37100','Verona');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale) VALUES(981235,TO_DATE('24/12/2018', 'DD/MM/YYYY'),'Evergreen di Mario Rossi s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto) VALUES(5421,'falanghina',6251,3,30.00,981235);

#--------------------------------------------TUPLA 3 Aglianico--------------------------------------------#
INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('Aglianico',5,'Nero',400);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF) values('aglianico',4,'Nero',15,25,4,2);

INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente) VALUES('Certifichiamo','entecertif@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto) values('aglianico','Certifichiamo',210,TO_DATE('12/12/2021', 'DD/MM/YYYY'),1,'DOP');
INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto) values('aglianico','Certifichiamo',211,TO_DATE('12/12/2021', 'DD/MM/YYYY'),1,'DOC');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('aglianico','Aglianico',100);

--INSERT INTO Vigneto(NomeV,ComuneV,Estensione) VALUES('Buonvino','Benevento',100); gia presente

--INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento) VALUES(548762,'Potatura',150);

--INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento) VALUES('Buonvino','Benevento',548762,TO_DATE('12/10/2018', 'DD/MM/YYYY'));

--INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento) VALUES(123456,'Pesticida','Pesticida1',250);

--INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento) VALUES('Buonvino','Benevento',123456,TO_DATE('12/11/2018', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta) VALUES('Aglianico',TO_DATE('05/05/2013', 'DD/MM/YYYY'),'Belvino','Benevento',200,400);

--INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede) VALUES('Via nazionale 235','81023','Cervino','Vivailvino');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm) VALUES(5463,'Vivailvino',300,TO_DATE('14/05/2013', 'DD/MM/YYYY'),TO_DATE('17/12/2013', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura) VALUES(5463,'Aglianico',TO_DATE('07/05/2013', 'DD/MM/YYYY'),10,290);

--INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott) VALUES('Imbottigliamo','via nazionale','81025','marcianise');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione) VALUES(9785,70,5463,'aglianico',TO_DATE('23/12/2016', 'DD/MM/YYYY'),'Imbottigliamo',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina) VALUES('Cantinasi','via nazionale','81025','marcianise');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina) VALUES(221,'Acero','Cantinasi');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv) VALUES(221,9785,TO_DATE('20/12/2013', 'DD/MM/YYYY'),TO_DATE('13/07/2021', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl) VALUES('Evergreen di Giuseppe Verdi s.n.c.','Giuseppe Verdi','via Napoli','37100','Verona');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale) VALUES(981235,TO_DATE('14/08/2019', 'DD/MM/YYYY'),'Evergreen di Giuseppe Verdi s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto) VALUES(6458,'aglianico',9785,3,35.00,01245);

#--------------------------------------------TUPLA 4 Lacryma Christi--------------------------------------------#

INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('Piedirosso',10,'Rosso',1000);
INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('Aglianico',9,'Rosso',700);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF) values('Lacryma Christi',4,'rosso',12,12,1,2);

INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente) VALUES('Certifichiamo','entecertif@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto) values('chianti','Certifichiamo',321,TO_DATE('12/12/2018', 'DD/MM/YYYY'),1,'DOC');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('Lacryma Christi','Aglianico',20);
INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('Lacryma Christi','Piedirosso',80);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione) VALUES('Lacricma Del Vesuvio','Napoli',100);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento) VALUES(648157,'Potatura',150);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento) VALUES('Lacricma Del Vesuvio','Napoli',648157,TO_DATE('03/06/2018', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento) VALUES(648572,'Pesticida','Pesticida1',250);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento) VALUES('Lacricma Del Vesuvio','Napoli',648572,TO_DATE('12/10/2018', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta) VALUES('Piedirossoolo',TO_DATE('12/12/2019', 'DD/MM/YYYY'),'Belvino','Benevento',800,400);
INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta) VALUES('Aglianico',TO_DATE('12/12/2019', 'DD/MM/YYYY'),'Belvino','Benevento',200,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede) VALUES('Via nazionale 256','80100','Napoli','Cristo Vinificatore');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm) VALUES(8461,'Cristo Vinificatore',300,TO_DATE('17/12/2019', 'DD/MM/YYYY'),TO_DATE('17/12/2020', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura) VALUES(8461,'Piedirossoolo',TO_DATE('04/01/2020', 'DD/MM/YYYY'),800,290);
INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura) VALUES(8461,'Aglianico',TO_DATE('04/01/2020', 'DD/MM/YYYY'),200,290);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott) VALUES('Imbottiglia vino','via nazionale','80100','Napoli');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione) VALUES(3540,1000,1234,'chianti',TO_DATE('09/01/2020', 'DD/MM/YYYY'),'Imbottigliamo',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina) VALUES('Sepolcro','viale degli ulivi','80100','Napoli');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina) VALUES(113,'Abete','Sepolctro');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv) VALUES(113,3540,TO_DATE('13/01/2020', 'DD/MM/YYYY'),TO_DATE('24/10/2020', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl) VALUES('Evergreen di Antonio Ciuffini s.n.c.','Antonio Ciuffini','via cantina di zi michele','80145','Chiaiano');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale) VALUES(021974,TO_DATE('24/12/2018', 'DD/MM/YYYY'),'Evergreen di Antonio Ciuffini s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto) VALUES(0000,'chianti',8751,9,90.00,021974);

# --------------------------------------------TUPLA 5 GEWURZTRAMINER--------------------------- #
INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto)
VALUES('Gewurztraminer',50,'Bianco',200);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF)
 values('Traminer',6.5,'bianco',50,10.2,5,20);

INSERT INTO Ente\_Certif(Nome\_Ente,Email,Via\_Ente,CAP\_Ente,Citta\_Ente)\\ VALUES('Eccerto','enteeccerto@postadellostato.it','via Roma','00042','Napoli');\\

INSERT INTO Controllo\_Certificazione(Nome\_Vino,Nome\_Ente,Num\_Pratica,Data\_Certif,Esito,Certificato_Richiesto)\\ 
values('Gewurztraminer','Eccerto',34,TO\_DATE('16/11/2020', 'DD/MM/YYYY'),1,'DOP');\\

INSERT INTO Composizione\_Vino(Nome\_Vino,Specie,Percentuale)\\
VALUES('Gewurztraminer','Gewurztraminer',95);\\

INSERT INTO Vigneto(NomeV,ComuneV,Estensione)\\
VALUES('Trentino','SudTirol',5);\\

INSERT INTO Intervento(Num\_Fattura\_Intervento,Tipo\_Intervento,Costo\_Intervento)\\
VALUES(888888,'Concimatura',100);\\

INSERT INTO Intervento\_Subito(NomeV,ComuneV,Num\_Fattura\_Intervento,Data\_Intervento)\\ VALUES('Trentino','SudTirol',548766,TO\_DATE('11/10/2020', 'DD/MM/YYYY'));\\

INSERT INTO Trattamento(Num\_Fattura\_Trattamento,Nome\_Trattamento,Princ\_Att\_Prod,Costo\_Trattamento)\\ VALUES(235418,'Pesticida','Appestato',100);\\

INSERT INTO Trattamento\_Subito(NomeV,ComuneV,Num\_Fattura\_Trattamento,Data\_Trattamento)\\ VALUES('Trentino','SudTirol',267681,TO\_DATE('20/11/2020', 'DD/MM/YYYY'));\\

INSERT INTO Raccolto\_Vigneto(Specie,Data\_Racc,NomeV,ComuneV,Quantita\_Raccolto,Costo\_Raccolta)\\ VALUES('Gewurztraminer',TO\_DATE('29/11/2020', 'DD/MM/YYYY'),'Trentino','SudTirol',220,300);\\

INSERT INTO Sede\_Vinif(Via\_Sv,CAP\_Sv,Citta\_Sv,Nome\_Sede)\\
VALUES('Via Cosenza 5','81025','Livorno','Sede Vino');\\

INSERT INTO Mosto(Num\_Lotto\_Mosto,Nome\_Sede,Costo\_Trasporto,Data\_Inizio\_Ferm,Data\_Fine\_Ferm)\\ VALUES(2100,'Sede Vino',180,TO\_DATE('31/01/2021', 'DD/MM/YYYY'),TO\_DATE('02/03/2021', 'DD/MM/YYYY'));\\

INSERT INTO Pigiatura(Num\_Lotto\_Mosto,Specie,Data\_Raccolto\_Usato,Quantita\_Uva,Costo\_Pigiatura)\\ VALUES(2100,'Gewurztraminer',TO\_DATE('29/11/2020', 'DD/MM/YYYY'),90,200);\\

INSERT INTO Imbottigliatore(Nome\_Imbott,Via\_Imbott,CAP\_Imbott,Citta\_Imbott)\\
VALUES('Bottiamoci','via Tutti 1','81021','Napoli');\\

INSERT INTO Lotto_Vino(Num\_Lotto,Quantita\_Vino,Num\_Lotto\_Mosto,Nome\_Vino,Data\_Lotto,Nome\_Imbott,Costo\_Fermentazione)\\
VALUES(3100,80,2100,'Aglianico',TO\_DATE('18/04/2021', 'DD/MM/YYYY'),'Imbottiglio Tutto',120);\\

INSERT INTO Cantina(Nome\_Cantina,Via\_Cantina,CAP\_Cantina,Citta\_Cantina)\\
VALUES('Accantoniamoci','via Strada 12','80127','Napoli');\\

INSERT INTO Botte(Num\_Botte,Tipo\_Legno,Nome\_Cantina)\\
VALUES(1,'Quercia','Accantoniamoci');\\

INSERT INTO Invecchiamento(Num\_Botte,Num\_Lotto,Data\_Inizio\_Inv,Data\_Fine\_Inv)\\ VALUES(1,3100,TO\_DATE('19/04/2021', 'DD/MM/YYYY'),TO\_DATE('29/05/2021', 'DD/MM/YYYY'));\\

INSERT INTO Cliente(Ragione\_Sociale,Nome\_Cliente,Via\_Cl,CAP\_Cl,Citta\_Cl)\\
VALUES('Il Cormen s.r.c.','Camastra','Centro Direzionale di Napoli Isola C4','80133','Napoli');\\

INSERT INTO Carrello(Codice\_Acquisto,Data\_Acquisto,Ragione\_Sociale)\\
VALUES(982456,TO\_DATE('15/06/2022', 'DD/MM/YYYY'),'Il Cormen s.r.c.');\\

INSERT INTO Confezione(Num\_Conf,Nome\_Vino,Num\_Lotto,Num\_Bott\_Conf,Prezzo\_Conf,Codice\_Acquisto)\\ VALUES(1,'Gewurztraminer',3100,6,100.00,123456);\\


#--------------------------------------------TUPLA 6 BAROLO--------------------------------------------#

INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('Nebbiolo',5,'Rosso',400);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF) values('Barolo',4,'bianco',12.5,22,1,2);

--INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente) VALUES('Certifichiamo','entecertif@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto) values('Barolo','Certifichiamo',242,TO_DATE('12/12/2021', 'DD/MM/YYYY'),1,'DOC');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('Barolo','Nebbiolo',100);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione) VALUES('Base del Vino','Caramagna di Piemonte',100);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento) VALUES(239009,'Potatura',150);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento) VALUES('Base del Vino','Caramagna di Piemonte',239009,TO_DATE('12/10/2018', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento) VALUES(942645,'Pesticida','Pesticida1',250);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento) VALUES('Base del Vino','Caramagna di Piemonte',942645,TO_DATE('12/11/2018', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta) VALUES('Barolo',TO_DATE('12/12/2019', 'DD/MM/YYYY'),'Base del Vino','Caramagna di Piemonte',200,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede) VALUES('Via nazionale 235','10060','Candiolo','Vini del monte');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm) VALUES(5275,'Vini del monte',300,TO_DATE('17/12/2015', 'DD/MM/YYYY'),TO_DATE('17/12/2016', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura) VALUES(5275,'Barolo',TO_DATE('12/12/2015', 'DD/MM/YYYY'),10,290);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott) VALUES('Imbottiglia Sul Monte','via nazionale','10060','Candiolo');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione) VALUES(8239,70,5275,'Barolo',TO_DATE('23/12/2016', 'DD/MM/YYYY'),'Imbottigliamo',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina) VALUES('Cantina del monte','via nazionale','10060','Candiolo');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina) VALUES(211,'Acero','Cantina del monte');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv) VALUES(211,8239,TO_DATE('24/12/2016', 'DD/MM/YYYY'),TO_DATE('24/12/2020', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl) VALUES('Azienda Ristoro di Camastra Francesco s.n.c.','Francesco Camastra','via giuseppe verdi','88020','Catanzaro');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale) VALUES(725189,TO_DATE('24/12/2018', 'DD/MM/YYYY'),'Azienda Ristoro di Camastra Francesco s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto) VALUES(9328,'Barolo',8239,3,30.00,725189);


#--------------------------------------------TUPLA 7 FRANCIACORTA--------------------------------------------#

INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('Chardonnay',5,'bianco',400);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF) values('Franciacorta',4,'bianco',9.5,22,1,2);

--INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente) VALUES('Certifichiamo','entecertif@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto) values('Franciacorta','Certifichiamo',242,TO_DATE('12/12/2021', 'DD/MM/YYYY'),1,'DOCG');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('Franciacorta','Chardonnay',100);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione) VALUES('Franciavino','Brescia',100);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento) VALUES(872657,'Potatura',150);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento) VALUES('Franciavino','Caramagna di Piemonte',872657,TO_DATE('12/10/2018', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento) VALUES(410259,'Pesticida','Pesticida1',250);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento) VALUES('410259','Brescia',410259,TO_DATE('12/11/2018', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta) VALUES('Franciacorta',TO_DATE('12/12/2019', 'DD/MM/YYYY'),'Franciacorta','Brescia',200,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede) VALUES('Via nazionale 235','25121','Brescia','Vini della valle');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm) VALUES(4120,'Vini della valle',300,TO_DATE('17/12/2015', 'DD/MM/YYYY'),TO_DATE('17/12/2016', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura) VALUES(4120,'Franciacorta',TO_DATE('12/12/2015', 'DD/MM/YYYY'),10,290);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott) VALUES('Imbottiglia Sul Monte','via nazionale','10060','Candiolo');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione) VALUES(9251,70,4120,'Barolo',TO_DATE('23/12/2016', 'DD/MM/YYYY'),'Imbottigliamo',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina) VALUES('Cantina del monte','via nazionale','10060','Candiolo');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina) VALUES(581,'Acero','Cantina del monte');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv) VALUES(581,9251,TO_DATE('24/12/2016', 'DD/MM/YYYY'),TO_DATE('24/12/2020', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl) VALUES('Azienda Ristoro di Camastra Francesco s.n.c.','Francesco Camastra','via giuseppe verdi','88020','Catanzaro');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale) VALUES(520359,TO_DATE('24/12/2018', 'DD/MM/YYYY'),'Azienda Ristoro di Camastra Francesco s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto) VALUES(1041,'Barolo',9251,3,30.00,520592);

# ----------------------------------------------TUPLA 8 ----------------------------------------------------------- #