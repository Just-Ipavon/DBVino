CREATE USER Azienda IDENTIFIED BY Aznd123;
CREATE USER Cliente IDENTIFIED BY Clnt030;
GRANT ALL PRIVILEGES TO Azienda;

GRANT CONNECT , CREATE SESSION TO Cliente;
GRANT SELECT ON Tipo_Vino TO Cliente;
GRANT SELECT ON Confezione TO Cliente;
GRANT SELECT,EXECUTE ON Carrello TO Cliente;
GRANT SELECT ON Imbottigliatore TO Cliente;