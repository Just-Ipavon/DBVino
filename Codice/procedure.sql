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