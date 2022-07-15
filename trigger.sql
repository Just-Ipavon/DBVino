
CREATE OR REPLACE TRIGGER Numero_Bottiglie_Conf_Div_Tre
BEFORE INSERT on Confezionamento
FOR EACH ROW
DECLARE 
CONTATORE NUMBER;
ERRORE EXCEPTION;
BEGIN
IF :New.Num_Bottiglie_Confezionate MOD 3 <> 0 THEN 
RAISE ERRORE;
END IF;
EXCEPTION
WHEN ERRORE THEN
RAISE_APPLICATION_ERROR(-20000,'Numero Bottiglieper confezione dev essere divisibile per 3!');
END;

CREATE OR REPLACE TRIGGER Certificato_presente
BEFORE INSERT on Controllo_Certificazione
FOR EACH ROW
DECLARE 
CONTATORE NUMBER;
ERRORE EXCEPTION;
BEGIN
SELECT (COUNT(*)) INTO CONTATORE FROM Controllo_Certificazione WHERE (Certificato_Richiesto = :NEW.Certificato_Richiesto AND Nome_Vino = :NEW.Nome_Vino);
IF CONTATORE > 1 THEN 
RAISE ERRORE;
END IF;
EXCEPTION
WHEN ERRORE THEN
RAISE_APPLICATION_ERROR(-20000,'Gia Inserito');
END;


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
    INTO (Somma_Percentuali) FROM (Composizione_Vino) where (Nome_Vino = :NEW.Nome_Vino ); 
    IF( Somma_Percentuali + :NEW.Percentuale > 100) THEN 
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


CREATE OR REPLACE TRIGGER Limite_Certificazioni
BEFORE INSERT on Controllo_Certificazione
FOR EACH ROW
DECLARE 
CONTATORE NUMBER;
ERRORE EXCEPTION;
BEGIN
SELECT (COUNT(*)) INTO CONTATORE FROM Controllo_Certificazione WHERE (Nome_Vino = :NEW.Nome_Vino);
IF CONTATORE >= 3 THEN 
RAISE ERRORE;
END IF;
EXCEPTION
WHEN others THEN
RAISE_APPLICATION_ERROR(-2000,' TROPPI CERTIFICATI');
END;

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
    RAISE_APPLICATION_ERROR(-2000,' VIGNETO GIA TRATTATO DA MENO DI DUE MESI');
END;

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

create or replace trigger Sconto_Cliente 
before insert on Cliente 
for each row 
declare 
NomeCL varchar(255); 
Sovrapprezzo int;
Costo int;
begin 
select Nome_Cliente into NomeCL from Cliente where (:OLD.Ragione_Sociale = :NEW.Ragione_Sociale);
select Prezzo_Vendita into Costo from Vendita;
Sovrapprezzo := (Costo * 40)/100;
if :new.Nome_Cliente = 'Camastra' then 
Costo := Costo + Sovrapprezzo;
end if;
ELSE if :new.Nome_Cliente = 'Maratea' then
Costo := 0
end if;
end;

