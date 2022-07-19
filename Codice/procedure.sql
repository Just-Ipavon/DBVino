CREATE OR REPLACE PROCEDURE Vino_Tavola (In_Nome_Vino varchar2)  
IS 
CONTATORE NUMBER;  
BEGIN  
SELECT (COUNT(*)) INTO CONTATORE FROM Controllo_Certificazione WHERE (Nome_Vino = In_Nome_Vino  AND Esito = '0');  
IF CONTATORE >= 3 THEN   
dbms_output.put_line('Questo Vino è catalogato come vino da tavola'); 
ELSE 
dbms_output.put_line('Questo Vino non è un vino da tavola'); 
END IF; 
END;
------------------------
CREATE OR REPLACE PROCEDURE Trova_Sedi_Imbott (In_Lotto_Vino int)   
IS  
Nome_Imb varchar(255); 
BEGIN   
dbms_output.put_line('Questo lotto è stato imbottigliato presso:');  
select (Nome_Imbott) into Nome_Imb from Imbottigliatore where(Num_Lotto = In_Lotto_Vino);   
dbms_output.put_line(Nome_Imb);
END;
---------------------
create or replace procedure Calcola_Costi (In_Anno date)

is
costo number;
begin

select (costo) from(
    select(
        sum(Costo_Impianto,Costo_Intervento,Costo_Trattamento,Costo_Raccolta,Costo_Trasporto,Costo_Pigiatura,Costo_Fermentazione)
        from (Tipo_Uva join Intervento join Trattamento join Raccolta_Vigneto join Mosto join Pigiatura join Lotto_Vino))
        into costo
    )
dbms_output.put_line(costo);
end;
---------------------
create procedure Sconto_Sovrapprezzo_Vino
is

costo number;
num_lotto number;
periodo_non_venduto number;
data_creazione DATE;
sconto number;

begin

select (Data_Lotto) into data_creazione from Lotto_Vino;
select (Num_Lotto) into num_lotto from Lotto_Vino where(Data_Lotto = data_creazione);
select (Prezzo_Conf) into costo from Confezione ;
while (sysdate-data_creazione > 0 and periodo_non_venduto < 50) loop
    periodo_non_venduto = periodo_non_venduto + 1;
end loop;
if(periodo_non_venduto = 50) then
    sconto = costo/100 * 15;
    costo = costo - sconto;
end if;

dbms_output.put_line('Vino scontato del 15%');

end;

-------------------------------
create or replace procedure Trova_Int_Tratt (In_Anno number) 
is 
Num_Fatt_Tratt number;
Num_Fatt_Int number;
Nome_Tratt varchar(255);
Nome_Int varchar(255);
begin
select (Num_Fattura_Trattamento) into Num_Fatt_Tratt from Trattamento_Subito where(extract( year from(Data_Trattamento)) = In_Anno);
select (Num_Fattura_Intervento) into Num_Fatt_Int from Interventi_Subiti where(extract (year from (Data_Intervento)) = In_Anno);
select (Nome_Trattamento) into Nome_Tratt from Trattamento where(Num_Fattura_Trattamento = Num_Fatt_Tratt);
select (Tipo_Intervento) into Nome_Int from Intervento where(Num_Fattura_Intervento = Num_Fatt_Int);
end;



CREATE OR REPLACE PROCEDURE Acquisto (in_Ragione_Sociale varchar2, in_Nome_Vino varchar2, in_Data_Lotto DATE)  
IS 
RANDOM Number;
CONTATORE NUMBER;
NUM_CONF NUMBER;
NUM_LOTTO NUMBER;
BEGIN
select Num_Lotto into NUM_LOTTO from ( select Num_Lotto from Lotto_Vino order by dbms_random.value) where Data_Lotto >= in_Data_Lotto && Nome_Vino = in_Nome_Vino;
select dbms_random.value(100000,999999) num into RANDOM from dual;
SELECT (COUNT(*)) INTO CONTATORE
FROM Carrello
WHERE (Codice_Acquisto = RANDOM);
SELECT Num_Conf  into NUM_CONF FROM
( SELECT Num_Conf FROM Confezione
ORDER BY dbms_random.value )
WHERE rownum = 1 && Codice_Acquisto = NULL && Nome_Vino = in_Nome_Vino && Num_Lotto = NUM_LOTTO;
IF (CONTATORE > 0) THEN
    exec Acquisto(in_Ragione_Sociale,in_Nome_Vino,in_Quantita_Conf);
    EXIT;
END IF; 
dbms_output.put_line('Ha scelto il vino: ' || Nome_Vino); 

exec Vino_Tavola(in_Nome_Vino);

INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale) VALUES(RANDOM,TO_DATE(sysdate, 'DD/MM/YYYY'),in_Ragione_Sociale);
UPDATE Confezione set Codice_Acquisto = RANDOM where Num_Conf = NUM_CONF;
COMMIT;
dbms_output.put_line('acquisto segnato'); 
END;

