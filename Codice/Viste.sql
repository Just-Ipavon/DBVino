
CREATE OR REPLACE VIEW VINO AS
    SELECT Tipo_Vino.Nome_Vino,Tipo_Vino.Colore,Tipo_Vino.Gradazione,Tipo_Vino.Temp_Servizio
    FROM Tipo_Vino
    GROUP BY Tipo_Vino.Nome_Vino;

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