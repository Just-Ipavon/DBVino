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
#DAFARE: Se un vino non viene venduto per piu di X tempo, effettuare uno sconto del 10%
---------------------
#DAFARE: Effettuare un aumento del prezzo del vino piu venduto del 15%
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