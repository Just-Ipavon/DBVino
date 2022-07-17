INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('fragola',10,'Rosso',1000);
INSERT INTO Tipo_Uva(Specie,Glucosio,Colore,Costo_Impianto) VALUES('zibibbo',9,'bianco',700);

insert into Tipo_Vino(Nome_Vino,Acidita,Colore,Gradazione,Temp_Servizio,Tannini,Zuccheri_NF) values('chianti',4,'rosso',15,22,1,2);

INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('chianti','zibibbo',30);
INSERT INTO Composizione_Vino(Nome_Vino,Specie,Percentuale) VALUES('chianti','fragola',70);