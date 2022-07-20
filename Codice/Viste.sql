CREATE OR REPLACE VIEW Vini_DOC AS
    SELECT Nome_Vino, Data_Certif, Certificato_Richiesto
    FROM Controllo_Certificazione
    WHERE Certificato_Richiesto = 'DOC' AND Esito = 1;

CREATE OR REPLACE VIEW Vini_DOP AS
    SELECT Nome_Vino, Data_Certif, Certificato_Richiesto
    FROM Controllo_Certificazione
    WHERE Certificato_Richiesto = 'DOP' AND Esito = 1;
    
CREATE OR REPLACE VIEW VINO AS
    SELECT Tipo_Vino.Nome_Vino,Tipo_Vino.Colore,Tipo_Vino.Gradazione,Tipo_Vino.Temp_Servizio
    FROM Tipo_Vino;

CREATE OR REPLACE VIEW Vini_DOCG AS
    SELECT Nome_Vino, Data_Certif, Certificato_Richiesto
    FROM Controllo_Certificazione
    WHERE Certificato_Richiesto = 'DOCG' AND Esito = 1;

CREATE OR REPLACE VIEW N_Ordini_Clienti AS
    SELECT Carrello.Ragione_Sociale, COUNT(Carrello.Ragione_Sociale) AS Numero_Ordini
    FROM Carrello
    GROUP BY Carrello.Ragione_Sociale;

CREATE OR REPLACE VIEW CONF AS
    SELECT Confezione.Num_Conf,Confezione.Nome_Vino
    FROM Confezione
    GROUP BY Confezione.Num_Conf, Confezione.Nome_Vino;

    #-------------VISTE CHE SERVONO------------#
    #CARRELLO CLIENTE fatta
    #TIPO_VINO CLIENTE fatta
    #CONFEZIONE CLIENTE fatta
    #

CREATE VIEW Vini_Certificati AS(
SELECT (Tipo_Vino.Nome_Vino,Tipo_Vino.Gradazione,Tipo_Vino.Colore,Tipo_Vino.Temp_Servizio) FROM Tipo_Vino
UNION
SELECT (Nome_Imbott) FROM Imbottigliatore
WHERE(
    Controllo_Certificazione.Esito = 1 AND Tipo_Vino.Nome_Vino = Controllo_Certificazione.Nome_Vino
    )
)

CREATE VIEW Vini_Certificati AS(
SELECT (Nome_Vino,Gradazione,Colore,Temp_Servizio) FROM Tipo_Vino
LEFT JOIN ON
SELECT (Esito) FROM Controllo_Certificazione
WHERE (Tipo_Vino.Nome_Vino = Controllo_Certificazione.Nome_Vino) AND (Controllo_Certificazione.Esito = 1)
);