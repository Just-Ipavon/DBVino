CREATE VIEW N_Ordini_Clienti AS
    SELECT Carrello.Ragione_Sociale, COUNT(Carrello.Ragione_Sociale) AS Numero_Ordini
    FROM Carrello
    GROUP BY Carrello.Ragione_Sociale;

CREATE VIEW CONF AS
    SELECT Confezione.Num_Conf,Confezione.Nome_Vino
    FROM Confezione
    GROUP BY Confezione.Num_Conf, Confezione.Nome_Vino;

CREATE VIEW Vino_Con_Certif AS
SELECT Tipo_Vino.Nome_Vino,Tipo_Vino.Colore,Tipo_Vino.Gradazione,Tipo_Vino.Temp_Servizio, Controllo_Certificazione.Certificato_Richiesto
FROM Tipo_Vino 
INNER JOIN Controllo_Certificazione
ON Tipo_Vino.Nome_Vino = Controllo_Certificazione.Nome_Vino
where Controllo_Certificazione.Esito = 1
ORDER BY Tipo_Vino.Nome_Vino ASC;

