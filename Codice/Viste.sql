CREATE OR REPLACE VIEW Vini_DOC AS
    SELECT Nome_Vino, Data_Certif, Certificato_Richiesto
    FROM Controllo_Certificazione
    WHERE Certificato_Richiesto = 'DOC' && Esito = 1;

CREATE OR REPLACE VIEW Vini_DOP AS
    SELECT Nome_Vino, Data_Certif, Certificato_Richiesto
    FROM Controllo_Certificazione
    WHERE Certificato_Richiesto = 'DOP' && Esito = 1;

CREATE OR REPLACE VIEW Vini_DOCG AS
    SELECT Nome_Vino, Data_Certif, Certificato_Richiesto
    FROM Controllo_Certificazione
    WHERE Certificato_Richiesto = 'DOCG' && Esito = 1;

CREATE OR REPLACE VIEW N_Ordini_Clienti AS
    SELECT Carrello.Ragione_Sociale, COUNT(Carrello.Ragione_Sociale) AS Numero_Ordini
    FROM Carrello
    GROUP BY Carrello.Ragione_Sociale;

CREATE OR REPLACE VIEW Vini_Per_Specie AS 
    SELECT Nome_vino, Specie
    FROM Composizione_Vino 
    GROUP BY Specie;