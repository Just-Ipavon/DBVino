#--------------------------------------------TUPLA 1 CHIANTI--------------------------------------------#

INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('Sangiovese',10,'Rosso',1000);
INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('Canaiolo',9,'Rosso',700);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF) values('chianti',4,'rosso',15,22,1,2);

INSERT INTO Ente_Certif(Nome_Ente,Email,Via_Ente,CAP_Ente,Citta_Ente) VALUES('Certifichiamo','entecertif@postadellostato.it','via nazionale','00042','Roma');

INSERT INTO Controllo_Certificazione(Nome_Vino,Nome_Ente,Num_Pratica,Data_Certif,Esito,Certificato_Richiesto) values('chianti','Certifichiamo',321,TO_DATE('12/12/2018', 'DD/MM/YYYY'),1,'DOC');

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('chianti','Canaiolo',20);
INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('chianti','Sangiovese',80);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione) VALUES('Belvino','Benevento',100);

INSERT INTO Intervento(Num_Fattura_Intervento,Tipo_Intervento,Costo_Intervento) VALUES(654321,'Potatura',150);

INSERT INTO Intervento_Subito(NomeV,ComuneV,Num_Fattura_Intervento,Data_Intervento) VALUES('Belvino','Benevento',654321,TO_DATE('12/10/2015', 'DD/MM/YYYY'));

INSERT INTO Trattamento(Num_Fattura_Trattamento,Nome_Trattamento,Princ_Att_Prod,Costo_Trattamento) VALUES(123456,'Pesticida','Pesticida1',250);

INSERT INTO Trattamento_Subito(NomeV,ComuneV,Num_Fattura_Trattamento,Data_Trattamento) VALUES('Belvino','Benevento',123456,TO_DATE('12/10/2014', 'DD/MM/YYYY'));

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta) VALUES('Canaiolo',TO_DATE('12/12/2015', 'DD/MM/YYYY'),'Belvino','Benevento',200,400);
INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta) VALUES('Sangiovese',TO_DATE('12/12/2015', 'DD/MM/YYYY'),'Belvino','Benevento',100,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede) VALUES('Via nazionale 235','81023','Cervino','Vinificatoriamo');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm) VALUES(1234,'Vinificatoriamo',300,TO_DATE('17/12/2015', 'DD/MM/YYYY'),TO_DATE('17/12/2016', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura) VALUES(1234,'Canaiolo',TO_DATE('12/12/2015', 'DD/MM/YYYY'),60,290);
INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura) VALUES(1234,'Sangiovese',TO_DATE('12/12/2015', 'DD/MM/YYYY'),10,290);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott) VALUES('Imbottigliamo','via nazionale','81025','marcianise');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione) VALUES(4321,70,1234,'chianti',TO_DATE('23/12/2016', 'DD/MM/YYYY'),'Imbottigliamo',320);

INSERT INTO Cantina(Nome_Cantina,Via_Cantina,CAP_Cantina,Citta_Cantina) VALUES('Cantinasi','via nazionale','81025','marcianise');

INSERT INTO Botte(Num_Botte,Tipo_Legno,Nome_Cantina) VALUES(111,'Acero','Cantinasi');

INSERT INTO Invecchiamento(Num_Botte,Num_Lotto,Data_Inizio_Inv,Data_Fine_Inv) VALUES(111,4321,TO_DATE('24/12/2016', 'DD/MM/YYYY'),TO_DATE('24/12/2020', 'DD/MM/YYYY'));

INSERT INTO Cliente(Ragione_Sociale,Nome_Cliente,Via_Cl,CAP_Cl,Citta_Cl) VALUES('Evergreen di Mario Rossi s.n.c.','Mario Rossi','via giuseppe verdi','37100','Verona');

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale) VALUES(666666,TO_DATE('24/12/2018', 'DD/MM/YYYY'),'Evergreen di Mario Rossi s.n.c.');

INSERT INTO Confezione(Num_Conf,Nome_Vino,Num_Lotto,Num_Bott_Conf,Prezzo_Conf,Codice_Acquisto) VALUES(0000,'chianti',4321,3,40.00,666666);

#--------------------------------------------TUPLA 1 CHIANTI--------------------------------------------#
