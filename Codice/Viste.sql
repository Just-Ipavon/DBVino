<<<<<<< HEAD
CREATE OR REPLACE VIEW Vini_DOC AS
    SELECT Nome_Vino, Data_Certif, Certificato_Richiesto
    FROM Controllo_Certificazione
    WHERE Certificato_Richiesto = 'DOC' AND Esito = 1;
=======
>>>>>>> 8d8b34b383e5673acb9cba3a1cc130b0928f965a

<<<<<<< HEAD
CREATE OR REPLACE VIEW Vini_DOP AS
    SELECT Nome_Vino, Data_Certif, Certificato_Richiesto
    FROM Controllo_Certificazione
    WHERE Certificato_Richiesto = 'DOP' AND Esito = 1;
=======
CREATE OR REPLACE VIEW VINO AS
    SELECT Tipo_Vino.Nome_Vino,Tipo_Vino.Colore,Tipo_Vino.Gradazione,Tipo_Vino.Temp_Servizio
    FROM Tipo_Vino
    GROUP BY Tipo_Vino.Nome_Vino;
>>>>>>> 8d8b34b383e5673acb9cba3a1cc130b0928f965a

<<<<<<< HEAD
CREATE OR REPLACE VIEW Vini_DOCG AS
    SELECT Nome_Vino, Data_Certif, Certificato_Richiesto
    FROM Controllo_Certificazione
    WHERE Certificato_Richiesto = 'DOCG' AND Esito = 1;

=======
>>>>>>> 8d8b34b383e5673acb9cba3a1cc130b0928f965a
CREATE OR REPLACE VIEW N_Ordini_Clienti AS
    SELECT Carrello.Ragione_Sociale,Carrello.Nome_Cl, COUNT(Carrello.Ragione_Sociale) AS Numero_Ordini
    FROM Carrello
    GROUP BY Carrello.Ragione_Sociale;

CREATE OR REPLACE VIEW CONF AS
    SELECT Confezione.Num_Conf,Confezione.Nome_Vino
    FROM Confezione
    GROUP BY Confezione.Num_Conf;

CREATE OR REPLACE VIEW ORDINI_CL AS
    SELECT Carrello.Nome_Cl,Carrello.Ragione_Sociale,Carrello.Nome_Vino
    FROM Carrello
    GROUP BY Carrello.Nome_Cl;

    #-------------VISTE CHE SERVONO------------#
    #CARRELLO CLIENTE fatta
    #TIPO_VINO CLIENTE fatta
    #CONFEZIONE CLIENTE fatta
    #