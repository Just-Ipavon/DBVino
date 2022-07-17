# ----------------------------------1------------------------- #
CREATE OR REPLACE TRIGGER Numero_Bottiglie_Conf_Div_Tre
BEFORE INSERT on Confezione
FOR EACH ROW
DECLARE 
CONTATORE NUMBER;
ERRORE EXCEPTION;
BEGIN
IF :new.Num_Bott_Conf MOD 3 <> 0 THEN 
RAISE ERRORE;
END IF;
EXCEPTION
WHEN ERRORE THEN
RAISE_APPLICATION_ERROR(-20000,'Numero Bottiglieper confezione dev essere divisibile per 3!');
END;
# -----------------------------------------2-------------------------------- #
CREATE OR REPLACE TRIGGER Certificato_presente
BEFORE INSERT on Controllo_Certificazione
FOR EACH ROW
DECLARE 
CONTATORE NUMBER;
ERRORE EXCEPTION;
BEGIN
SELECT (COUNT(*)) INTO CONTATORE 
FROM Controllo_Certificazione 
WHERE (Certificato_Richiesto = :NEW.Certificato_Richiesto AND Nome_Vino = :NEW.Nome_Vino);
IF CONTATORE > 1 THEN 
RAISE ERRORE;
END IF;
EXCEPTION
WHEN ERRORE THEN
RAISE_APPLICATION_ERROR(-20000,'Gia Inserito');
END;
# ----------------------------------------3--------------------------------- #
CREATE OR REPLACE TRIGGER Supera_100_PC 
before INSERT or update ON Composizione_Vino 
FOR EACH ROW 
DECLARE 
    pragma autonomous_transaction; 
    Somma_Percentuali float; 
    Out_Percentuale float; 
BEGIN 
    SELECT( 
        SUM(Percentuale) 
    ) 
    INTO (Somma_Percentuali) FROM (Composizione_Vino) where (Nome_Vino = :NEW.Nome_Vino); 
    IF(Somma_Percentuali + :NEW.Percentuale > 100) THEN 
        DBMS_OUTPUT.PUT_LINE('Supera 100%, Correzione in corso'); 
            Out_Percentuale := 100 - Somma_Percentuali; 
        IF Out_Percentuale > 0 THEN 
        :NEW.Percentuale := Out_Percentuale; 
        ELSE 
        RAISE_APPLICATION_ERROR(-2000,'Percentuale gia piena'); 
        END IF; 
    END IF;
    COMMIT; 
END;
# ----------------------------------------4----------------------------- #
CREATE OR REPLACE TRIGGER Limite_Certificazioni
BEFORE INSERT on Controllo_Certificazione
FOR EACH ROW
DECLARE 
CONTATORE NUMBER;
ERRORE EXCEPTION;
BEGIN
SELECT (COUNT(*)) INTO CONTATORE
FROM Controllo_Certificazione
WHERE (Nome_Vino = :NEW.Nome_Vino);
IF CONTATORE >= 3 THEN 
RAISE ERRORE;
END IF;
EXCEPTION
WHEN others THEN
RAISE_APPLICATION_ERROR(-2000,'TROPPI CERTIFICATI');
END;
# ----------------------------------------5----------------------------- #
CREATE OR REPLACE TRIGGER Limite_Trattamento
BEFORE INSERT on Trattamento_Subito
FOR EACH ROW
DECLARE 
CONTATORE DATE;
ERRORE EXCEPTION;
BEGIN
SELECT MAX(Data_Trattamento) INTO CONTATORE FROM Trattamento_Subito WHERE (NomeV = :NEW.NomeV);
IF (CONTATORE - :NEW.Data_Trattamento )/30 <= 2  THEN 
    RAISE ERRORE;
END IF;
EXCEPTION
WHEN others THEN
    RAISE_APPLICATION_ERROR(-2000,'VIGNETO GIA TRATTATO DA MENO DI DUE MESI');
END;
# -----------------------------------------6----------------------------- #
CREATE OR REPLACE TRIGGER Limite_Intervento
BEFORE INSERT on Interventi_Subiti
FOR EACH ROW
DECLARE 
CONTATORE DATE;
ERRORE EXCEPTION;
BEGIN
SELECT MAX(Data_Intervento) INTO CONTATORE FROM Interventi_Subiti WHERE (NomeV = :NEW.NomeV);
IF (CONTATORE - :NEW.Data_Intervento) < 21  THEN 
    RAISE ERRORE;
END IF;
EXCEPTION
WHEN others THEN
    RAISE_APPLICATION_ERROR(-2000,' Gia Fatto Intervento DA MENO DI Tre Settimane');
END;
# ------------------------------------------7----------------------------- #
CREATE OR REPLACE TRIGGER Controllo_Quantita_Mosto
BEFORE INSERT on Pigiatura
FOR EACH ROW
DECLARE 
CONTATORE1 Number;
CONTATORE2 Number;
ERRORE EXCEPTION;
BEGIN
SELECT (Quantita_Mosto) INTO CONTATORE1 FROM Pigiatura WHERE (Num_Lotto_Mosto = :NEW.Num_Lotto_Mosto);
SELECT (Quantita_Uva) INTO CONTATORE2 FROM Pigiatura WHERE (Num_Lotto_Mosto = :NEW.Num_Lotto_Mosto);
IF (CONTATORE1 - CONTATORE2) < 0  THEN 
    RAISE ERRORE;
END IF;
EXCEPTION
WHEN others THEN
    RAISE_APPLICATION_ERROR(-2000,' La quantita di mosto prodotto non puo superare la quantita di uva raccolta');
END;
# -----------------------------------------8----------------------------- #
CREATE OR REPLACE TRIGGER Controllo_Quantita_Mosto
BEFORE INSERT on Lotto_Vino
FOR EACH ROW
DECLARE 
CONTATORE1 Number;
CONTATORE2 Number;
ERRORE EXCEPTION;
BEGIN
SELECT (Quantita_Mosto) INTO CONTATORE1 FROM Mosto WHERE (Num_Lotto_Mosto = :NEW.Num_Lotto_Mosto);
SELECT (Quantita_Uva) INTO CONTATORE2 FROM Lotto_Vino WHERE (Num_Lotto_Mosto = :NEW.Num_Lotto_Mosto);
IF (CONTATORE2 - CONTATORE1) < 0  THEN 
    RAISE ERRORE;
END IF;
EXCEPTION
WHEN others THEN
    RAISE_APPLICATION_ERROR(-2000,' La quantita di uva prodotta non puo superare la quantita di mosto prodotto');
END;