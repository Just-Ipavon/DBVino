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
