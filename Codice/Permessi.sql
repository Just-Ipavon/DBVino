CREATE USER Azienda IDENTIFIED BY Aznd123;
CREATE USER Cliente IDENTIFIED BY Clnt030;
GRANT ALL PRIVILEGES TO Azienda;

GRANT CONNECT , CREATE SESSION TO Cliente;
GRANT SELECT ON Tipo\_Vino TO Cliente;
GRANT SELECT ON Confezione TO Cliente;
GRANT SELECT,EXECUTE ON Carrello TO Cliente;
GRANT SELECT ON Imbottigliatore TO Cliente;

Utenti del DB e le loro Categorie: \newline
\begin{center}
    \begin{tabular}{|l|l|l|l|}
        \hline
        \textbf{UTENTE} & \textbf{TIPO} & \textbf{VOLUME} & \textbf{PERMESSI} \\
        \hline
        Azienda & Amministratore & 5 & ALL\\
        \hline
        Cliente & Comune & 30 & SELECT ON TIPO\_VINO \\
        & & & SELECT ON CONFEZIONE \\
        & & & SELECT ON CARRELLO \\
        & & & SELECT ON IMBOTTIGLIATORE \\
        \hline
\end{tabular}
\end{center}