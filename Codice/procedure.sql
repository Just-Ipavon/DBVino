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
    periodo_non_venduto := periodo_non_venduto + 1;
end loop;
if(periodo_non_venduto = 50) then
    sconto := costo/100 * 15;
    costo := costo - sconto;
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
select (Num_Fattura_Intervento) into Num_Fatt_Int from Intervento_Subito where(extract (year from (Data_Intervento)) = In_Anno);
select (Nome_Trattamento) into Nome_Tratt from Trattamento where(Num_Fattura_Trattamento = Num_Fatt_Tratt);
select (Tipo_Intervento) into Nome_Int from Intervento where(Num_Fattura_Intervento = Num_Fatt_Int);
end;



CREATE OR REPLACE PROCEDURE Acquisto (in_Ragione_Sociale varchar2, in_Nome_Vino varchar2, in_Data_Lotto DATE)  
IS 
RANDOM Number (6,0);
CONTATORE NUMBER;
NUM_LOTTO NUMBER;
BEGIN
SELECT Num_Lotto into NUM_LOTTO FROM ( SELECT Num_Lotto FROM Lotto_Vino where Data_Lotto >= In_Data_Lotto AND Nome_Vino = In_Nome_Vino ORDER BY dbms_random.value )WHERE rownum = 1;
select dbms_random.value(100000,999999) num into RANDOM from dual;
dbms_output.put_line('Ha scelto il vino: ' || In_Nome_Vino); 
Vino_Tavola(in_Nome_Vino);
INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale) VALUES(RANDOM,TO_DATE(sysdate, 'DD/MM/YYYY'),in_Ragione_Sociale);
UPDATE Confezione set Codice_Acquisto = RANDOM where Num_Conf = (SELECT Num_Conf FROM ( SELECT Num_Conf FROM Confezione where Codice_Acquisto is NULL AND Nome_Vino = in_Nome_Vino AND Num_Lotto = NUM_LOTTO ORDER BY dbms_random.value ) WHERE rownum = 1);
COMMIT;
dbms_output.put_line('acquisto segnato con numero ordine:' || RANDOM); 
EXCEPTION

WHEN DUP_VAL_ON_INDEX THEN

SELECT Num_Lotto into NUM_LOTTO FROM ( SELECT Num_Lotto FROM Lotto_Vino where Data_Lotto >= In_Data_Lotto AND Nome_Vino = In_Nome_Vino ORDER BY dbms_random.value )WHERE rownum = 1;
select dbms_random.value(100000,999999) num into RANDOM from dual;
dbms_output.put_line('Ha scelto il vino: ' || In_Nome_Vino); 
Vino_Tavola(in_Nome_Vino);
INSERT INTO Carrello(Codice_Acquisto,Data_Acquisto,Ragione_Sociale) VALUES(RANDOM,TO_DATE(sysdate, 'DD/MM/YYYY'),in_Ragione_Sociale);
UPDATE Confezione set Codice_Acquisto = RANDOM where Num_Conf = (SELECT Num_Conf FROM ( SELECT Num_Conf FROM Confezione where Codice_Acquisto is NULL AND Nome_Vino = in_Nome_Vino AND Num_Lotto = NUM_LOTTO ORDER BY dbms_random.value ) WHERE rownum = 1);
COMMIT;
dbms_output.put_line('acquisto segnato con numero ordine:' || RANDOM); 

WHEN NO_DATA_FOUND THEN
dbms_output.put_line('Non e presente nessuna scatola da acquistare'); 
END;

-----------------BILANCIO-----------------
create or replace procedure Bilancio
is
costi number;
ricavi number;
begin
select sum(Costo_Impianto) into costi from Tipo_Uva;
commit;
select sum(Costo_Trattamento) into costi from Trattamento;
commit;
select sum(Costo_Intervento) into costi from Intervento;
commit;
select sum(Costo_Trasporto) into costi from Mosto;
commit;
select sum(Costo_Raccolta) into costi from Raccolto_Vigneto;
commit;
select sum(Costo_Pigiatura) into costi from Pigiatura;
commit;
select sum(Costo_Fermentazione) into costi from Lotto_Vino;
commit;
dbms_output.put_line('COSTI');
dbms_output.put_line(costi);

select sum(Prezzo_Conf) into ricavi from Confezione where Codice_Acquisto is not null;
commit;

dbms_output.put_line('RICAVI');
dbms_output.put_line(ricavi);

dbms_output.put_line('GUADAGNI');
dbms_output.put_line(ricavi - costi);

end;
