

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
--Visualizzare, dato in input un anno, tutti i trattamenti e interventi subiti su tutti i vigneti

create or replace procedure Trova_Int_Tratt (In_Anno DATE)
is

type Nome_Tratt is varray(10) of varchar(255);
type Nome_Int is varray(10) of varchar(255);

type Nome_Vign_T is varray(10) of varchar(255);
type Nome_Vign_I is varray(10) of varchar(255);

Nome_V_T_temp varchar(255);
Nome_V_I_temp varchar(255);

Nome_T_temp varchar(255);
Nome_I_temp varchar(255);
begin
for i in 1..10 loop
select (Nome_Trattamento)into Nome_T_temp from Trattamento_Subito where(Data_Trattamento = In_Anno);
Nome_Tratt(i) := Nome_T_temp;
select (Tipo_Intervento) into Nome_I_temp from Interventi_Subiti where(Data_Intervento = In_Anno);
Nome_Int(i) := Nome_I_temp;


select (NomeV) into Nome_V_T_temp from Trattamento_Subito where(Trattamento_Subito.Nome_Trattamento = Nome_Tratt(i));
Nome_Vign_T(i) := Nome_V_T_temp;
select (NomeV) into Nome_V_I_temp from Interventi_Subiti where(Interventi_Subiti.Tipo_Intervento = Nome_Int(i));
Nome_Vign_I(i) := Nome_V_I_temp;

end loop;
dbms_output.put_line('Visualizzo Trattamenti...');
for i in 1..10 loop
dbms_output.put_line(i || '.' || Nome_Vign_T);
end loop;
--Print degli interventi 
dbms_output.put_line('Visualizzo Interventi...');
for i in 1..10 loop
dbms_output.put_line(i || '.' || Nome_Vign_I);
end loop;
commit;
end;
-------------------------------
create or replace procedure Trova_Int_Tratt (In_Anno int) 
is 
Nome_T varchar(255);
Nome_I varchar(255);
NomeV_T varchar(255);
NomeV_I varchar(255);
Anno number;
begin
select (Nome_Trattamento) into Nome_T from Trattamento_Subito where( extract(year from Data_Trattamento) = In_Anno);
select (Tipo_Intervento) into Nome_I from Interventi_Subiti where(extract (year from Data_Intervento) = In_Anno);

select (NomeV) into NomeV_T from Trattamento_Subito where(extract(year from Data_Trattamento) = In_Anno and Nome_Trattamento = Nome_T) group by Nome_Trattamento;
select (NomeV) into NomeV_I from Interventi_Subiti where(extract(year from Data_Intervento) = In_Anno and Tipo_Intervento = Nome_T) group by Tipo_Intervento;

dbms_output.put_line(NomeV_T);
dbms_output.put_line(NomeV_I);
end;
Entita-Transizione-Trigger-Procedure.txt
17 KB