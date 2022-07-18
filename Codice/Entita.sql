CREATE TABLE Vigneto( 
    NomeV varchar(255) NOT NULL, 
    ComuneV varchar(255) NOT NULL, 
    Estensione number NOT NULL,
    
    CONSTRAINT CP_Vigneto PRIMARY KEY (NomeV, ComuneV)
);

CREATE TABLE Tipo_Uva(
    Specie varchar(255) NOT NULL,
    Glucosio Number NOT NULL,
    Colore varchar(255) NOT NULL,
    Costo_Impianto NUMBER NOT NULL,
	
    CONSTRAINT CP_Tipo_Uva PRIMARY KEY (Specie)
);

CREATE TABLE Intervento( 
    Num_Fattura_Intervento Number(6,0) NOT NULL,
    Tipo_Intervento varchar(255) NOT NULL, 
    Costo_Intervento NUMBER NOT NULL,
    
    CONSTRAINT CP_Intervento PRIMARY KEY (Num_Fattura_Intervento)
);

CREATE TABLE Trattamento( 
    Num_Fattura_Trattamento Number(6,0) NOT NULL,
    Nome_Trattamento varchar(255) NOT NULL, 
    Princ_Att_Prod varchar(255) NOT NULL,
    Costo_Trattamento NUMBER NOT NULL,
    
    CONSTRAINT CP_Trattamento PRIMARY KEY (Num_Fattura_Trattamento)
);

CREATE TABLE Tipo_Vino( 
    Nome_Vino varchar(255) NOT NULL, 
    Acidita Number(4,2) NOT NULL,  
    Colore varchar(255) NOT NULL, 
    Gradazione Number(4,2) NOT NULL, 
    Temp_Servizio Number(4,2) NOT NULL,
	Tannini Number(2,0) NOT NULL,
    Zuccheri_NF Number(2,0) NOT NULL,
    
    CONSTRAINT CP_Tipo_Vino PRIMARY KEY (Nome_Vino)
);

CREATE TABLE Cliente( 
	Ragione_Sociale varchar(255) NOT NULL,  
    Nome_Cliente varchar(255) NOT NULL, 
	Via_Cl varchar(255) NOT NULL,
	CAP_Cl Number(5,0) NOT NULL,
	Citta_Cl varchar(255) NOT NULL,
    
    CONSTRAINT CP_Cliente PRIMARY KEY (Ragione_Sociale)
);

CREATE TABLE Cantina(
    Nome_Cantina varchar(255) NOT NULL, 
    Via_Cantina varchar(255) NOT NULL,  
    CAP_Cantina Number(5,0) NOT NULL, 
    Citta_Cantina varchar(255) NOT NULL, 
    
     CONSTRAINT CP_Cantina PRIMARY KEY (Nome_Cantina)

);

CREATE TABLE Imbottigliatore(
    Nome_Imbott varchar(255) NOT NULL,
    Via_Imbott varchar(255) NOT NULL, 
    CAP_Imbott Number(5,0) NOT NULL, 
    Citta_Imbott varchar(255) NOT NULL, 

    CONSTRAINT CP_Imbottigliatore PRIMARY KEY (Nome_Imbott)
);

CREATE TABLE Ente_Certif( 
    Nome_Ente varchar(255) NOT NULL,
    Email varchar(255) NOT NULL,
    Via_Ente varchar(255) NOT NULL,
	CAP_Ente Number(5,0) NOT NULL,
	Citta_Ente varchar(255) NOT NULL,
	
    CONSTRAINT CP_Ente_Certif PRIMARY KEY (Nome_Ente)
);

CREATE TABLE Sede_Vinif(
    Via_Sv varchar(255) NOT NULL, 
    CAP_Sv Number(5,0) NOT NULL, 
    Citta_Sv varchar(255) NOT NULL,  
    Nome_Sede varchar(255) NOT NULL,

    CONSTRAINT CP_Sede_Vinif PRIMARY KEY (Nome_Sede)
);

CREATE TABLE Raccolto_Vigneto(  
    Specie varchar(255) NOT NULL,
    Data_Racc DATE NOT NULL,  
    NomeV varchar(255) NOT NULL,
    ComuneV varchar(255) NOT NULL,
    Quantita_Raccolto Number(5,2) not NULL,
    Costo_Raccolta Number NOT NULL,  
     
    CONSTRAINT CE_Tipo_Uva_Raccolto_Vigneto FOREIGN KEY (Specie)  REFERENCES Tipo_Uva (Specie) ON DELETE CASCADE,
    CONSTRAINT CE_Vigneto_Raccolto_Vigneto FOREIGN KEY (NomeV, ComuneV) REFERENCES Vigneto (NomeV, ComuneV) ON DELETE CASCADE, 
    CONSTRAINT CP_Raccolto_Vigneto PRIMARY KEY (Data_Racc, Specie) 
);

CREATE TABLE Mosto(  
    Num_Lotto_Mosto Number(4,0) NOT NULL,
    Nome_Sede varchar(255) NOT NULL, 
    Costo_Trasporto Number(4,0) NOT NULL,
    Data_Inizio_Ferm DATE NOT NULL,
    Data_Fine_Ferm DATE NOT NULL,

    CONSTRAINT CE_Sede_Vinif_Mosto FOREIGN KEY (Nome_Sede) REFERENCES Sede_Vinif (Nome_Sede) ON DELETE CASCADE,  
    CONSTRAINT CP_Mosto PRIMARY KEY (Num_Lotto_Mosto)  
);

CREATE TABLE Pigiatura(
    Num_Lotto_Mosto Number(4,0) NOT NULL,
    Specie varchar(255) NOT NULL,
    Data_Raccolto_Usato DATE NOT NULL,
    Quantita_Uva Number NOT NULL,
    Costo_Pigiatura Number NOT NULL,

    CONSTRAINT CE_Mosto_Pigiatura FOREIGN KEY (Num_Lotto_Mosto)  REFERENCES Mosto(Num_Lotto_Mosto) ON DELETE CASCADE,
    CONSTRAINT CE_Tipo_Uva_Pigiatura FOREIGN KEY (Specie)  REFERENCES Tipo_Uva(Specie) ON DELETE CASCADE
);



CREATE TABLE Carrello(
    Ragione_Sociale varchar(255) NOT NULL, 
    Codice_Acquisto Number(6,0) NOT NULL, 
    Data_Acquisto DATE NOT NULL,

    CONSTRAINT CE_Cliente_Carrello FOREIGN KEY (Ragione_Sociale) REFERENCES Cliente (Ragione_Sociale) ON DELETE CASCADE, 
    CONSTRAINT CP_Carrello PRIMARY KEY (Codice_Acquisto)
);

CREATE TABLE Lotto_Vino(
    Num_Lotto Number(4,0) NOT NULL, 
    Quantita_Vino Number(5,2) NOT NULL,
    Num_Lotto_Mosto Number(4,0) NOT NULL,
    Nome_Vino varchar(255) NOT NULL,
    Data_Lotto DATE NOT NULL,
    Nome_Imbott varchar(255) NOT NULL,
    Costo_Fermentazione Number NOT NULL,
   

    CONSTRAINT CE_Lotto_Mosto FOREIGN KEY(Num_Lotto_Mosto)  REFERENCES Mosto(Num_Lotto_Mosto) ON DELETE CASCADE,
    CONSTRAINT CE_Lotto_Tipo_Vino FOREIGN KEY (Nome_Vino) REFERENCES Tipo_Vino (Nome_Vino) ON DELETE CASCADE,
    CONSTRAINT CE_Lotto_Imbott FOREIGN KEY(Nome_Imbott)  REFERENCES Imbottigliatore(Nome_Imbott) ON DELETE CASCADE,
    CONSTRAINT CP_Lotto_Vino PRIMARY KEY (Num_Lotto)
);

CREATE TABLE Botte(  
    Num_Botte Number(3,0) NOT NULL, 
    Tipo_Legno varchar(255) NOT NULL,
    Nome_Cantina varchar(255) NOT NULL,  

    CONSTRAINT CE_Botte_Cantina FOREIGN KEY (Nome_Cantina) REFERENCES Cantina(Nome_Cantina) ON DELETE CASCADE,
    CONSTRAINT CP_Botte PRIMARY KEY (Num_Botte) 
);

CREATE TABLE Invecchiamento(  
    Num_Botte Number(3,0) NOT NULL,
    Num_Lotto Number(4,0) NOT NULL, 
    Data_Inizio_Inv date NOT NULL,
    Data_Fine_Inv date NOT NULL,

    CONSTRAINT CE_Botte_Invecchiamento FOREIGN KEY (Num_Botte) REFERENCES Botte(Num_Botte) ON DELETE CASCADE,
    CONSTRAINT CE_Lotto_Invecchiamento FOREIGN KEY (Num_Lotto) REFERENCES Lotto_Vino(Num_Lotto) ON DELETE CASCADE,
    CONSTRAINT CP_Invecchiamento PRIMARY KEY (Num_Botte,Num_Lotto) 
);

CREATE TABLE Confezione( 
    Num_Conf Number(4,0) NOT NULL,
    Nome_Vino varchar(255) NOT NULL,
    Num_Lotto number(6,0) NOT NULL,
    Codice_Acquisto Number(6,0) NULL,
    Prezzo_Conf Number(4,2) NOT NULL, 
    Num_Bott_Conf Number(3,0) not NULL,

    CONSTRAINT CE_Carrello_Conf FOREIGN KEY (Codice_Acquisto) REFERENCES Carrello(Codice_Acquisto) ON DELETE CASCADE, 
    CONSTRAINT CE_Tipo_Vino_Confezione FOREIGN KEY (Nome_Vino) REFERENCES Tipo_Vino(Nome_Vino) ON DELETE CASCADE,
    CONSTRAINT CE_Lotto_Vino_Confezione FOREIGN KEY (Num_Lotto) REFERENCES Lotto_Vino(Num_Lotto) ON DELETE CASCADE,
    CONSTRAINT CP_Confezione PRIMARY KEY (Num_Conf) 
);

CREATE TABLE Controllo_Certificazione(
    Nome_Vino varchar(255) NOT NULL, 
    Nome_Ente varchar(255) NOT NULL, 
    Num_Pratica Number(3,0) NOT NULL,
	Data_Certif DATE NOT NULL,
    Esito NUMBER(1,0) NOT NULL, 
    Certificato_Richiesto varchar(255) NOT NULL,

    CONSTRAINT CE_Tipo_Vino_CC FOREIGN KEY (Nome_Vino) REFERENCES Tipo_Vino (Nome_Vino) ON DELETE CASCADE, 
    CONSTRAINT CE_Ente_CC FOREIGN KEY (Nome_Ente) REFERENCES Ente_Certif (Nome_Ente) ON DELETE CASCADE, 
    CONSTRAINT CP_CC PRIMARY KEY (Num_Pratica) 
);

CREATE TABLE Composizione_Vino(
	Nome_Vino varchar(255) NOT NULL,
    Specie varchar(255) NOT NULL,
    Percentuale Number(3,1) NOT NULL,
    
    CONSTRAINT CE_Tipo_Uva_Composizione_Vino_ FOREIGN KEY (Specie) REFERENCES Tipo_Uva (Specie) ON DELETE CASCADE,
    CONSTRAINT CE_Tipo_Vino_Composizione_Vino FOREIGN KEY (Nome_Vino) REFERENCES Tipo_Vino (Nome_Vino) ON DELETE CASCADE,
    CONSTRAINT CP_CV PRIMARY KEY (Nome_Vino,Specie)
);

CREATE TABLE Intervento_Subito(
    NomeV varchar(255) NOT NULL,
    ComuneV varchar(255) NOT NULL,
    Num_Fattura_Intervento Number(6,0) NOT NULL,
    Data_Intervento DATE NOT NULL,

    CONSTRAINT CE_Vigneto_Interventi_Subiti FOREIGN KEY (NomeV, ComuneV) REFERENCES Vigneto (NomeV, ComuneV) ON DELETE CASCADE,
    CONSTRAINT CE_Intervento_Interventi_Subiti FOREIGN KEY (Num_Fattura_Intervento) REFERENCES Intervento (Num_Fattura_Intervento) ON DELETE CASCADE
    
);

CREATE TABLE Produzione_Vigneto(
    NomeV varchar(255) NOT NULL,
    ComuneV varchar(255) NOT NULL,
    Specie varchar(255) NOT NULL,
    
    CONSTRAINT CE_Vigneto_Produzione FOREIGN KEY (NomeV, ComuneV) REFERENCES Vigneto (NomeV, ComuneV) ON DELETE CASCADE,
    CONSTRAINT CE_Tipo_Uva_Produzione FOREIGN KEY (Specie) REFERENCES Tipo_Uva (Specie) ON DELETE CASCADE
    
);

CREATE TABLE Trattamento_Subito(  
    NomeV varchar(255) NOT NULL,  
    ComuneV varchar(255) NOT NULL,  
    Num_Fattura_Trattamento Number(6,0) not NULL,
    Data_Trattamento DATE NOT NULL,
      
    CONSTRAINT CE_Vigneto_Trattamento_Subito FOREIGN KEY (NomeV, ComuneV) REFERENCES Vigneto (NomeV, ComuneV) ON DELETE CASCADE,  
    CONSTRAINT CE_Trattamento_Trattamento_Subito FOREIGN KEY (Num_Fattura_Trattamento) REFERENCES Trattamento (Num_Fattura_Trattamento) ON DELETE CASCADE
      
);

