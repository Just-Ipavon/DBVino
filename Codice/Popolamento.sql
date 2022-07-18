INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('fragola',10,'Rosso',1000);
INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('zibibbo',9,'bianco',700);

INSERT INTO Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF) values('chianti',4,'rosso',15,22,1,2);

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('chianti','zibibbo',30);
INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('chianti','fragola',70);

INSERT INTO Vigneto(NomeV,ComuneV,Estensione) VALUES('Belvino','Benevento',100);

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta) VALUES('zibibbo',TO_DATE('12/12/2015', 'DD/MM/YYYY'),'Belvino','Benevento',200,400);
INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta) VALUES('fragola',TO_DATE('12/12/2015', 'DD/MM/YYYY'),'Belvino','Benevento',100,400);

INSERT INTO Sede_Vinif(Via_Sv,CAP_Sv,Citta_Sv,Nome_Sede) VALUES('Via nazionale 235','81023','Cervino','Vinificatoriamo');

INSERT INTO Mosto(Num_Lotto_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm) VALUES(1234,'Vinificatoriamo',300,TO_DATE('17/12/2015', 'DD/MM/YYYY'),TO_DATE('17/12/2016', 'DD/MM/YYYY'));

INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura) VALUES(1234,'zibibbo',TO_DATE('12/12/2015', 'DD/MM/YYYY'),60,290);
INSERT INTO Pigiatura(Num_Lotto_Mosto,Specie,Data_Raccolto_Usato,Quantita_Uva,Costo_Pigiatura) VALUES(1234,'fragola',TO_DATE('12/12/2015', 'DD/MM/YYYY'),10,290);

INSERT INTO Imbottigliatore(Nome_Imbott,Via_Imbott,CAP_Imbott,Citta_Imbott) VALUES('Imbottigliamo','via nazionale','81025','marcianise');

INSERT INTO Lotto_Vino(Num_Lotto,Quantita_Vino,Num_Lotto_Mosto,Nome_Vino,Data_Lotto,Nome_Imbott,Costo_Fermentazione) VALUES(4321,70,1234,'chianti',TO_DATE('23/12/2016', 'DD/MM/YYYY'),'Imbottigliamo',320);

