\section{\textbf{DATA DEFINITION LANGUAGE}}
CREATE TABLE Vigneto( \\
    NomeV varchar(255) NOT NULL, \\
    ComuneV varchar(255) NOT NULL, \\
    Estensione number NOT NULL,\\
    
    CONSTRAINT CP\_Vigneto PRIMARY KEY (NomeV, ComuneV) \\
);\\

CREATE TABLE Tipo\_Uva( \\
    Specie varchar(255) NOT NULL,\\
    Glucosio Number NOT NULL,\\
    Colore varchar(255) NOT NULL,\\
    Costo\_Impianto NUMBER NOT NULL,\\
	
    CONSTRAINT CP\_Tipo\_Uva PRIMARY KEY (Specie)\\
);\\

CREATE TABLE Intervento( \\
    Num\_Fattura\_Intervento Number(6,0) NOT NULL,\\
    Tipo\_Intervento varchar(255) NOT NULL,\\ 
    Costo\_Intervento NUMBER NOT NULL,\\
    
    CONSTRAINT CP\_Intervento PRIMARY KEY (Num\_Fattura\_Intervento)\\
);\\

CREATE TABLE Trattamento( \\
    Num\_Fattura\_Trattamento Number(6,0) NOT NULL,\\
    Nome\_Trattamento varchar(255) NOT NULL,\\ 
    Princ\_Att\_Prod varchar(255) NOT NULL,\\
    Costo\_Trattamento NUMBER NOT NULL,\\
    
    CONSTRAINT CP\_Trattamento PRIMARY KEY (Num\_Fattura\_Trattamento)\\
);\\

CREATE TABLE Tipo\_Vino( \\
    Nome\_Vino varchar(255) NOT NULL, \\
    Acidita Number(4,2) NOT NULL,  \\
    Colore varchar(255) NOT NULL, \\
    Gradazione Number(4,2) NOT NULL,\\ 
    Temp\_Servizio Number(4,2) NOT NULL,\\
	Tannini Number(2,0) NOT NULL,\\
    Zuccheri\_NF Number(2,0) NOT NULL,\\
    
    CONSTRAINT CP\_Tipo\_Vino PRIMARY KEY (Nome\_Vino)\\
);\\

CREATE TABLE Cliente( \\
	Ragione\_Sociale varchar(255) NOT NULL,  \\
    Nome\_Cliente varchar(255) NOT NULL, \\
	Via\_Cl varchar(255) NOT NULL,\\
	CAP\_Cl Number(5,0) NOT NULL,\\
	Citta\_Cl varchar(255) NOT NULL,\\
    
    CONSTRAINT CP\_Cliente PRIMARY KEY (Ragione\_Sociale)\\
);\\

CREATE TABLE Cantina(\\
    Nome\_Cantina varchar(255) NOT NULL, \\
    Via\_Cantina varchar(255) NOT NULL,  \\
    CAP\_Cantina Number(5,0) NOT NULL, \\
    Citta\_Cantina varchar(255) NOT NULL,\\ 
    
     CONSTRAINT CP\_Cantina PRIMARY KEY (Nome\_Cantina)\\
);\\

CREATE TABLE Imbottigliatore(\\
    Nome\_Imbott varchar(255) NOT NULL,\\
    Via\_Imbott varchar(255) NOT NULL, \\
    CAP\_Imbott Number(5,0) NOT NULL, \\
    Citta\_Imbott varchar(255) NOT NULL,\\ 

    CONSTRAINT CP\_Imbottigliatore PRIMARY KEY (Nome\_Imbott)\\
);\\

CREATE TABLE Ente\_Certif( \\
    Nome\_Ente varchar(255) NOT NULL,\\
    Email varchar(255) NOT NULL,\\
    Via\_Ente varchar(255) NOT NULL,\\
	CAP\_Ente Number(5,0) NOT NULL,\\
	Citta\_Ente varchar(255) NOT NULL,\\
	
    CONSTRAINT CP\_Ente\_Certif PRIMARY KEY (Nome\_Ente)\\
);\\

CREATE TABLE Sede\_Vinif(\\
    Via\_Sv varchar(255) NOT NULL, \\
    CAP\_Sv Number(5,0) NOT NULL, \\
    Citta\_Sv varchar(255) NOT NULL,\\  
    Nome\_Sede varchar(255) NOT NULL,\\

    CONSTRAINT CP\_Sede\_Vinif PRIMARY KEY (Nome\_Sede)\\
);\\

CREATE TABLE Raccolto\_Vigneto(  \\
    Specie varchar(255) NOT NULL,\\
    Data\_Racc DATE NOT NULL,  \\
    NomeV varchar(255) NOT NULL,\\
    ComuneV varchar(255) NOT NULL,\\
    Quantita\_Raccolto Number(5,2) not NULL,\\
    Costo\_Raccolta Number NOT NULL,  \\
    
    CONSTRAINT CE\_Tipo\_Uva\_Raccolto\_Vigneto FOREIGN KEY (Specie)  REFERENCES Tipo\_Uva (Specie) ON DELETE CASCADE,\\
    CONSTRAINT CE\_Vigneto\_Raccolto\_Vigneto FOREIGN KEY (NomeV, ComuneV) REFERENCES Vigneto (NomeV, ComuneV) ON DELETE CASCADE, \\
    CONSTRAINT CP\_Raccolto\_Vigneto PRIMARY KEY (Data\_Racc, Specie)\\ 
);\\

CREATE TABLE Mosto(  \\
    Num\_Lotto\_Mosto Number(4,0) NOT NULL, \\
    Quantita\_Mosto Number(5,2) NOT NULL,\\
    Nome\_Sede varchar(255) NOT NULL, \\
    Costo\_Trasporto Number(4,0) NOT NULL,\\
    Data\_Inizio\_Ferm DATE NOT NULL,\\
    Data\_Fine\_Ferm DATE NOT NULL,\\

    CONSTRAINT CE\_Sede\_Vinif\_Mosto FOREIGN KEY (Nome\_Sede) REFERENCES Sede\_Vinif (Nome_Sede) ON DELETE CASCADE,  \\
    CONSTRAINT CP\_Mosto PRIMARY KEY (Num\_Lotto\_Mosto)  \\
);\\

CREATE TABLE Pigiatura(\\
    Num\_Lotto\_Mosto Number(4,0) NOT NULL,\\
    Specie varchar(255) NOT NULL,\\
    Data\_Raccolto\_Usato DATE NOT NULL,\\
    Quantita\_Uva Number NOT NULL,\\
    Costo\_Pigiatura Number NOT NULL,\\

    CONSTRAINT CE\_Mosto\_Pigiatura FOREIGN KEY (Num\_Lotto\_Mosto) REFERENCES Mosto(Num\_Lotto\_Mosto) ON DELETE CASCADE,\\
    CONSTRAINT CE\_Tipo\_Uva\_Pigiatura FOREIGN KEY (Specie)  REFERENCES Tipo\_Uva(Specie) ON DELETE CASCADE\\
);\\

CREATE TABLE Carrello(\\
    Ragione\_Sociale varchar(255) NOT NULL, \\
    Codice\_Acquisto Number(4,0) NOT NULL,\\ 
    Data\_Acquisto DATE NOT NULL,\\

    CONSTRAINT CE\_Cliente\_Carrello FOREIGN KEY (Ragione\_Sociale) REFERENCES Cliente (Ragione\_Sociale) ON DELETE CASCADE, \\
    CONSTRAINT CP\_Carrello PRIMARY KEY (Codice\_Acquisto)\\
);\\

CREATE TABLE Lotto_Vino(\\
    Num\_Lotto Number(4,0) NOT NULL, \\
    Quantita\_Vino Number(5,2) NOT NULL,\\
    Num\_Lotto\_Mosto Number(4,0) NOT NULL,\\
    Nome\_Vino varchar(255) NOT NULL,\\
    Data\_Lotto DATE NOT NULL,\\
    Nome\_Imbott varchar(255) NOT NULL,\\
    Costo\_Fermentazione Number NOT NULL,\\
   
    CONSTRAINT CE\_Lotto\_Mosto FOREIGN KEY(Num\_Lotto\_Mosto) REFERENCES Mosto(Num\_Lotto\_Mosto) ON DELETE CASCADE,\\
    CONSTRAINT CE\_Lotto\_Tipo\_Vino FOREIGN KEY (Nome\_Vino) REFERENCES Tipo\_Vino (Nome\_Vino) ON DELETE CASCADE,\\
    CONSTRAINT CE\_Lotto\_Imbott FOREIGN KEY(Nome\_Imbott)  REFERENCES Imbottigliatore(Nome\_Imbott) ON DELETE CASCADE,\\
    CONSTRAINT CP\_Lotto\_Vino PRIMARY KEY (Num\_Lotto)\\
);\\

CREATE TABLE Botte(  \\
    Num\_Botte Number(3,0) NOT NULL, \\
    Tipo\_Legno varchar(255) NOT NULL,\\
    Nome\_Cantina varchar(255) NOT NULL,\\  
    
    CONSTRAINT CE\_Botte\_Cantina FOREIGN KEY (Nome\_Cantina) REFERENCES Cantina(Nome\_Cantina) ON DELETE CASCADE,\\
    CONSTRAINT CP\_Botte PRIMARY KEY (Num\_Botte) \\
);\\

CREATE TABLE Invecchiamento(  \\
    Num\_Botte Number(3,0) NOT NULL,\\
    Num\_Lotto Number(3,0) NOT NULL, \\
    Data\_Inizio\_Inv date NOT NULL,\\
    Data\_Fine\_Inv date NOT NULL,\\

    CONSTRAINT CE\_Botte\_Invecchiamento FOREIGN KEY (Num\_Botte) REFERENCES Botte(Num\_Botte) ON DELETE CASCADE,\\
    CONSTRAINT CE\_Lotto\_Invecchiamento FOREIGN KEY (Num\_Lotto) REFERENCES Lotto\_Vino(Num\_Lotto) ON DELETE CASCADE,\\
    CONSTRAINT CP\_Invecchiamento PRIMARY KEY (Num\_Botte,Num\_Lotto)\\ 
);\\

CREATE TABLE Confezione( \\
    Num\_Conf Number(4,0) NOT NULL,\\
    Nome\_Vino varchar(255) NOT NULL,\\
    Num\_Lotto number(6,0) NOT NULL,\\
    Codice\_Acquisto Number(6,0) NULL,\\
    Prezzo\_Conf Number(4,2) NOT NULL, \\
    Num_Bott\_Conf Number(3,0) not NULL,\\

    CONSTRAINT CE\_Carrello\_Conf FOREIGN KEY (Codice\_Acquisto) REFERENCES Carrello(Codice\_Acquisto) ON DELETE CASCADE, \\
    CONSTRAINT CE\_Tipo\_Vino\_Confezione FOREIGN KEY (Nome\_Vino) REFERENCES Tipo_Vino(Nome\_Vino) ON DELETE CASCADE,\\
    CONSTRAINT CE\_Lotto\_Vino\_Confezione FOREIGN KEY (Num\_Lotto) REFERENCES Lotto\_Vino(Num\_Lotto) ON DELETE CASCADE,\\
    CONSTRAINT CP\_Confezione PRIMARY KEY (Num\_Conf) \\
);\\

CREATE TABLE Controllo\_Certificazione(\\
    Nome\_Vino varchar(255) NOT NULL, \\
    Nome\_Ente varchar(255) NOT NULL, \\
    Num\_Pratica Number(3,0) NOT NULL,\\
	Data\_Certif DATE NOT NULL,\\
    Esito NUMBER(1,0) NOT NULL, \\
    Certificato\_Richiesto varchar(255) NOT NULL,\\

    CONSTRAINT CE\_Tipo\_Vino\_CC FOREIGN KEY (Nome\_Vino) REFERENCES Tipo\_Vino (Nome_Vino) ON DELETE CASCADE, \\
    CONSTRAINT CE\_Ente\_CC FOREIGN KEY (Nome\_Ente) REFERENCES Ente_Certif (Nome\_Ente) ON DELETE CASCADE, \\
    CONSTRAINT CP\_CC PRIMARY KEY (Num\_Pratica) \\
);\\

CREATE TABLE Composizione\_Vino(\\
	Nome\_Vino varchar(255) NOT NULL,\\
    Specie varchar(255) NOT NULL,\\
    Percentuale Number(3,1) NOT NULL,\\
    
    CONSTRAINT CE\_Tipo\_Uva\_Composizione\_Vino FOREIGN KEY (Specie) REFERENCES Tipo\_Uva (Specie) ON DELETE CASCADE,\\
    CONSTRAINT CE\_Tipo\_Vino\_Composizione\_Vino FOREIGN KEY (Nome_Vino) REFERENCES Tipo\_Vino (Nome\_Vino) ON DELETE\\ CASCADE,
    CONSTRAINT CP\_CV PRIMARY KEY (Nome\_Vino,Specie)\\
);\\

CREATE TABLE Interventi\_Subiti(\\
    NomeV varchar(255) NOT NULL,\\
    ComuneV varchar(255) NOT NULL,\\
    Num\_Fattura\_Intervento Number(3,0) NOT NULL,\\
    Data\_Intervento DATE NOT NULL,\\

    CONSTRAINT CE\_Vigneto\_Interventi\_Subiti FOREIGN KEY (NomeV, ComuneV) REFERENCES Vigneto (NomeV, ComuneV) ON DELETE CASCADE,\\
    CONSTRAINT CE\_Intervento\_Interventi\_Subiti FOREIGN KEY (Num\_Fattura\_Intervento) REFERENCES Intervento (Num\_Fattura\_Intervento) ON DELETE CASCADE\\
);\\

CREATE TABLE Produzione\_Vigneto(\\
    NomeV varchar(255) NOT NULL,\\
    ComuneV varchar(255) NOT NULL,\\
    Specie varchar(255) NOT NULL,\\
    
    CONSTRAINT CE\_Vigneto\_Produzione FOREIGN KEY (NomeV, ComuneV) REFERENCES Vigneto (NomeV, ComuneV) ON DELETE CASCADE,\\
    CONSTRAINT CE\_Tipo\_Uva\_Produzione FOREIGN KEY (Specie) REFERENCES Tipo\_Uva (Specie) ON DELETE CASCADE\\
);\\

CREATE TABLE Trattamento\_Subito( \\
    NomeV varchar(255) NOT NULL, \\
    ComuneV varchar(255) NOT NULL, \\ 
    Num\_Fattura\_Trattamento Number(6,0) not NULL,\\
    Data\_Trattamento DATE NOT NULL,\\
    
    CONSTRAINT CE\_Vigneto\_Trattamento\_Subito FOREIGN KEY (NomeV, ComuneV) REFERENCES Vigneto (NomeV, ComuneV) ON DELETE CASCADE, \\
    CONSTRAINT CE\_Trattamento\_Trattamento\_Subito FOREIGN KEY (Num\_Fattura\_Trattamento) REFERENCES Trattamento (Num\_Fattura\_Trattamento) ON DELETE CASCADE\\
);\\