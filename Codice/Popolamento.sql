INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('fragola',10,'Rosso',1000);
INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('zibibbo',9,'bianco',700);

insert into Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF) values('chianti',4,'rosso',15,22,1,2);

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('chianti','zibibbo',30);
INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('chianti','fragola',70);

INSERT INTO Mosto(Num_Lotto_Mosto,Quantita_Mosto,Nome_Sede,Costo_Trasporto,Data_Inizio_Ferm,Data_Fine_Ferm) VALUES(1234,112,'SedeVin',300,TO_DATE('17/12/2015', 'DD/MM/YYYY'),TO_DATE('17/12/2016', 'DD/MM/YYYY'));


INSERT INTO Vigneto(NomeV,ComuneV,Estensione) VALUES('Belvino','Benevento',100);

INSERT INTO Raccolto_Vigneto(Specie,Data_Racc,NomeV,ComuneV,Quantita_Raccolto,Costo_Raccolta) VALUES('zibibbo',TO_DATE('12/12/2015', 'DD/MM/YYYY'),'Belvino','Benevento',200,400);


