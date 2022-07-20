CREATE OR REPLACE VIEW N_Ordini_Clienti AS
    SELECT Carrello.Ragione_Sociale, COUNT(Carrello.Ragione_Sociale) AS Numero_Ordini
    FROM Carrello
    GROUP BY Carrello.Ragione_Sociale;

CREATE OR REPLACE VIEW CONF AS
    SELECT Confezione.Num_Conf,Confezione.Nome_Vino
    FROM Confezione
    GROUP BY Confezione.Num_Conf, Confezione.Nome_Vino;

<<<<<<< HEAD
CREATE VIEW Vini_Certificati AS(
    SELECT (Tipo_Vino.Nome_Vino,Tipo_Vino.Gradazione,Tipo_Vino.Colore,Tipo_Vino.Temp_Servizio) FROM Tipo_Vino
    UNION
    SELECT (Nome_Imbott) FROM Imbottigliatore
    WHERE(
        Controllo_Certificazione.Esito = 1 AND Tipo_Vino.Nome_Vino = Controllo_Certificazione.Nome_Vino
    )
)

CREATE VIEW Vini_Certificati AS(
    SELECT Nome_Vino,Gradazione,Temp_Servizio
    FROM Tipo_Vino JOIN Controllo_Certificazione
    WHERE (Tipo_Vino.Nome_Vino = Controllo_Certificazione.Nome_Vino) AND (Controllo_Certificazione.Esito = 1)
);

CREATE VIEW Carrello_Utente AS(
    SELECT Nome_Vino,Gradazione,Colore 
    FROM Tipo_Vino
    WHERE Nome_Vino = Carrello.Nome_Vino;
)
CREATE OR REPLACE VIEW VINO AS
    SELECT Tipo_Vino.Nome_Vino,Tipo_Vino.Colore,Tipo_Vino.Gradazione,Tipo_Vino.Temp_Servizio, Controllo_Certificazione.Certificato_Richiesto
    FROM Tipo_Vino, Controllo_Certificazione
    WHERE  Controllo_Certificazione.Esito = 1
    GROUP BY Tipo_Vino.Nome_Vino,Tipo_Vino.Colore,Tipo_Vino.Gradazione,Tipo_Vino.Temp_Servizio, Controllo_Certificazione.Certificato_Richiesto
    ORDER BY Tipo_Vino.Nome_Vino ASC;

>>>>>>> 1eb484ffdf042cc3d2b79c5e3e857cb1fc33a0b3