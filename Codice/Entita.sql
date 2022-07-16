CREATE TABLE Vigneto( 
    NomeV varchar(255) NOT NULL, 
    ComuneV varchar(255) NOT NULL, 
    Estensione number NOT NULL,
    
    CONSTRAINT CP_Vigneto PRIMARY KEY (NomeV, ComuneV)
);
CREATE TABLE Tipo_Uva(
    Specie varchar(255) NOT NULL,
    Glucosio Number(5,2) NOT NULL,
    Colore varchar(255) NOT NULL,
    Costo_Impianto NUMBER,
	
    CONSTRAINT CP_Tipo_Uva PRIMARY KEY (Specie)
);

CREATE TABLE Intervento( 
    Num_Fattura_Intervento Number(6,0) NOT NULL,
    Tipo_Intervento varchar(255) NOT NULL, 
    Costo_Intervento NUMBER NOT NULL,
    
    CONSTRAINT CP_Intervento PRIMARY KEY (Num_Fattura_Intervento)
);

CREATE TABLE Trattamento( 
    Codice_FATTURA_T Number(5,0) NOT NULL,
    Nome_Trattamento varchar(255) NOT NULL, 
    Princ_Att_Prod varchar(255) NOT NULL,
    
    CONSTRAINT CP_Trattamento PRIMARY KEY (Nome_Trattamento)
);

CREATE TABLE Tipo_Vino( 
    Nome_Vino varchar(255) NOT NULL, 
    Acidita Number(4,2) NOT NULL,  
    Colore varchar(255) NOT NULL, 
    Gradazione Number(4,2) NOT NULL, 
    Temp_Servizio Number(4,2) NOT NULL,
	Tannini Number(2,0) NOT NULL,
    Zuccheri_NF Number(2,0) NOT NULL
    
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

CREATE TABLE Ente_Certif( 
    Nome_Ente varchar(255) NOT NULL,
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
    Data_Inizio_Ferm DATE NOT NULL,
    Data_Fine_Ferm DATE NOT NULL,
    Temperatura_Fermentazione Number(4,2) NOT NULL,

    CONSTRAINT CP_Sede_Vinif PRIMARY KEY (Nome_Sede)
);

CREATE TABLE Raccolto_Vigneto(  
    Data_Racc DATE NOT NULL,  
    NomeV varchar(255) NOT NULL,
    Quantita Number(5,2) not NULL
    ComuneV varchar(255) NOT NULL,  
     
    CONSTRAINT CE_Vigneto_Raccolto_Vigneto FOREIGN KEY (NomeV, ComuneV) REFERENCES Vigneto (NomeV, ComuneV) ON DELETE CASCADE, 
    CONSTRAINT CP_Raccolto_Vigneto PRIMARY KEY (Data_Racc) 
);

CREATE TABLE Pigiatura(
    Num_Lotto_Mosto NUMBER,
    Specie  varchar(255),
    Data_Raccolto_Usato DATE,
    Quantita_Uva_Usata  NUMBER,
    Costo_Pignatura NUMBER,

    CONSTRAINT CE_Pigiatura_Mosto FOREIGN KEY (Num_Lotto_Mosto)  REFERENCES Mosto (Num_Lotto_Mosto) ON DELETE CASCADE;
    CONSTRAINT CE_Pigiatura_Tipo_Uva FOREIGN KEY (Specie)  REFERENCES Tipo_Uva (Specie) ON DELETE CASCADE;
)

CREATE TABLE Mosto(  
    Data_Racc DATE NOT NULL,  
    Num_Lotto_Mosto Number(4,0) NOT NULL, 
    Tipo_Mosto varchar(255) NOT NULL,  
    Nome_Sede varchar(255) NOT NULL, 
    Via_Sv varchar(255) NOT NULL, 
    CAP_Sv Number(5,0) NOT NULL, 
    Comune_Sv varchar(255) NOT NULL, 
    Civico_Sv Number(5,0) NOT NULL, 
    Citta_Sv varchar(255) NOT NULL,
 
CONSTRAINT CE_Raccolto_Vigneto_Mosto FOREIGN KEY (Data_Racc) REFERENCES Raccolto_Vigneto (Data_Racc) ON DELETE CASCADE,  
CONSTRAINT CE_Sede_Vinif_Mosto FOREIGN KEY (Nome_Sede) REFERENCES Sede_Vinif (Nome_Sede) ON DELETE CASCADE,  
CONSTRAINT CP_Mosto PRIMARY KEY (Num_Lotto_Mosto)  
);

CREATE TABLE Carrello(
    Ragione_Sociale varchar(255) NOT NULL, 
    Codice_Acquisto Number(4,0) NOT NULL, 
    Metodo_Pagamento varchar(255) NOT NULL,
    Data_Acquisto DATE NOT NULL,

    CONSTRAINT CE_Cliente_Carrello FOREIGN KEY (Ragione_Sociale) REFERENCES Cliente (Ragione_Sociale) ON DELETE CASCADE, 
    CONSTRAINT CP_Carrello PRIMARY KEY (Codice_Acquisto)
);

CREATE TABLE Lotto_Vino(
    Num_Lotto Number(4,0) NOT NULL, 
    Nome_Vino varchar(255) NOT NULL,
    Data_Lotto DATE NOT NULL,
    Num_Lotto_Mosto Number(4,0) NOT NULL,
    Quantita Number(5,2) NOT NULL,

    CONSTRAINT CE_Lotto_M FOREIGN KEY(Num_Lotto_Mosto)  REFERENCES Mosto(Num_Lotto_Mosto) ON DELETE CASCADE,
    CONSTRAINT CE_Tipo_Vino_Controllo_Certificazione FOREIGN KEY (Nome_Vino) REFERENCES Tipo_Vino (Nome_Vino) ON DELETE CASCADE,
    CONSTRAINT CP_Lotto_Vino PRIMARY KEY (Num_Lotto)
);

CREATE TABLE Botte(  
    Num_Botte Number(3,0) NOT NULL,
    Num_Lotto Number(4,0) NOT NULL,  
    Tipo_Legno varchar(255) NOT NULL,  

    CONSTRAINT CE_Lotto_Vino_Botte FOREIGN KEY (Num_Lotto) REFERENCES Lotto_Vino (Num_Lotto) ON DELETE CASCADE,
    CONSTRAINT CP_Botte PRIMARY KEY (Num_Botte) 
);

CREATE TABLE Imbottigliatore(
    Nome_Imbott varchar(255) NOT NULL,
    Via_Imbott varchar(255) NOT NULL, 
    CAP_Imbott Number(5,0) NOT NULL, 
    Citta_Imbott varchar(255) NOT NULL, 
    Costo_Imb Number(5,2) not NULL,

    CONSTRAINT CP_Imbottigliatore PRIMARY KEY (Nome_Imbott)
);

CREATE TABLE Confezione( 
    Num_Conf Number(4,0) NOT NULL,
    Codice_Acquisto Number(3,0) NULL,
    Data_Acquisto date not NULL,
    Prezzo_Conf Number(4,2) NOT NULL, 
    #Bott_Conf Number(3,0) not NULL,

    CONSTRAINT CE_Carrello_Conf FOREIGN KEY (Codice_Acquisto) REFERENCES Carrello(Codice_Acquisto) ON DELETE CASCADE, 
    CONSTRAINT CP_Confezione PRIMARY KEY (Num_Conf) 
);

CREATE TABLE Controllo_Certificazione(
    Nome_Vino varchar(255) NOT NULL, 
    Nome_Ente varchar(255) NOT NULL, 
    Num_Pratica Number(3,0) NOT NULL,
	Data_Certif DATE NOT NULL, //VA NELLA ASSOCIAZIONE
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
    CONSTRAINT CE_Tipo_Vino_Composizione_Vino FOREIGN KEY (Nome_Vino) REFERENCES Tipo_Vino (Nome_Vino) ON DELETE CASCADE
    
);

CREATE TABLE Vendemmia( 
    Specie varchar(255) NOT NULL, 
    NomeV varchar(255) not NULL, 
    ComuneV varchar(255) not NULL,
    Data_Racc DATE NOT NULL, 
    Quantita Number(4,2) NOT NULL, 
     
    CONSTRAINT CE_Tipo_Uva_Vendemmia FOREIGN KEY (Specie) REFERENCES Tipo_Uva (Specie) ON DELETE CASCADE, 
    CONSTRAINT CE_Raccolto_Vigneto_Vendemmia FOREIGN KEY (Data_Racc) REFERENCES Raccolto_Vigneto (Data_Racc) ON DELETE CASCADE
     
);

CREATE TABLE Interventi_Subiti(
    NomeV varchar(255) NOT NULL,
    ComuneV varchar(255) NOT NULL,
    Codice_FATTURA Number(3,0) not NULL
    
    CONSTRAINT CE_Vigneto_Interventi_Subiti FOREIGN KEY (NomeV, ComuneV) REFERENCES Vigneto (NomeV, ComuneV) ON DELETE CASCADE,
    CONSTRAINT CE_Intervento_Interventi_Subiti FOREIGN KEY (Tipo_Intervento, Data_Intervento) REFERENCES Intervento (Tipo_Intervento) ON DELETE CASCADE
    
);

CREATE TABLE Coltivazione(
    NomeV varchar(255) NOT NULL,
    ComuneV varchar(255) NOT NULL,
    Specie varchar(255) NOT NULL,
    Comune_Provenienza varchar(255) NOT NULL,
    
    CONSTRAINT CE_Vigneto_Coltivazione FOREIGN KEY (NomeV, ComuneV) REFERENCES Vigneto (NomeV, ComuneV) ON DELETE CASCADE,
    CONSTRAINT CE_Tipo_Uva_Coltivazione FOREIGN KEY (Specie) REFERENCES Tipo_Uva (Specie) ON DELETE CASCADE
    
);

CREATE TABLE Composizione_Lotto(
    Nome_Vino varchar(255) NOT NULL,
    Num_Lotto Number(3,0) NOT NULL,
    Azienda_Imbott varchar(255) NOT NULL,
    Volume_Nominale int NOT NULL,
    
    CONSTRAINT CE_Tipo_Vino_Composizione_Lotto FOREIGN KEY (Nome_Vino) REFERENCES Tipo_Vino (Nome_Vino) ON DELETE CASCADE,
    CONSTRAINT CE_Lotto_Vino_Composizione_Lotto FOREIGN KEY (Num_Lotto) REFERENCES Lotto_Vino (Num_Lotto) ON DELETE CASCADE
    
);

CREATE TABLE Trattamento_Subito(  
    NomeV varchar(255) NOT NULL,  
    ComuneV varchar(255) NOT NULL,  
    Codice_FATTURAT Number(3,0) not NULL,
      
    CONSTRAINT CE_Vigneto_Trattamento_Subito FOREIGN KEY (NomeV, ComuneV) REFERENCES Vigneto (NomeV, ComuneV) ON DELETE CASCADE,  
    CONSTRAINT CE_Trattamento_Trattamento_Subito FOREIGN KEY (Nome_Trattamento) REFERENCES Trattamento (Nome_Trattamento) ON DELETE CASCADE
      
);

CREATE TABLE Cantina(
    Nome_Cantina varchar(255) NOT NULL, 
    Via_Cantina varchar(255) NOT NULL,  
    CAP_Cantina Number(5,0) NOT NULL, 
    Citta_Cantina varchar(255) NOT NULL, 
    Nome_Sede varchar(255) NOT NULL,
    Metratura_Cantina Number(5,1) NOT NULL,

    CONSTRAINT CE_Lotto_Vino_Stoccaggio FOREIGN KEY (Num_Lotto) REFERENCES Lotto_Vino (Num_Lotto) ON DELETE CASCADE,
    CONSTRAINT CP_Cantina PRIMARY KEY (Nome_Cantina,Citta_Cantina,Via_Cantina)

);

CREATE TABLE Confezionamento(
    Num_Conf Number(3,0) NOT NULL,
    Num_Lotto Number(3,0) NOT NULL,
    Data_Confezionamento DATE NOT NULL,
    Num_Bottiglie_Confezionate Number(3,0) NOT NULL,
    Formato_Confezionatura varchar(255) NOT NULL,
      
    CONSTRAINT CE_Lotto_Vino_Confezionamento FOREIGN KEY (Num_Lotto) REFERENCES Lotto_Vino (Num_Lotto) ON DELETE CASCADE,
    CONSTRAINT CE_Confezione_Confezionamento FOREIGN KEY (Num_Conf) REFERENCES Confezione (Num_Conf) ON DELETE CASCADE

);

CREATE TABLE Vendita(
    Num_Lotto Number(3,0) NOT NULL,
    Ragione_Sociale varchar(255) NOT NULL,
    Codice_Acquisto Number(4,0) NOT NULL,
    Metodo_Pagamento varchar(255) NOT NULL,
    Num_Confezioni_Vendute Number(4,0) NOT NULL,
    Categoria_Vino_Venduta varchar(255) NOT NULL,
    Prezzo_Vendita Number(4,1) NOT NULL,
    
    CONSTRAINT CE_Lotto_Vino_Vendita FOREIGN KEY (Num_Lotto) REFERENCES Lotto_Vino (Num_Lotto) ON DELETE CASCADE,
    CONSTRAINT CE_Cliente_Vendita FOREIGN KEY (Ragione_Sociale) REFERENCES Cliente (Ragione_Sociale)ON DELETE CASCADE,
    CONSTRAINT CE_Carrello_Vendita FOREIGN KEY (Codice_Acquisto) REFERENCES Carrello (Codice_Acquisto)ON DELETE CASCADE
    
);