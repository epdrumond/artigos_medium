SELECT
    login.id_usuario,
    trans.primeira_transacao - login.primeiro_login AS dias_ate_transacao
FROM 
    (SELECT 
        id_usuario,
        MIN(data) AS primeiro_login
    FROM tabela_login
    GROUP BY id_usuario) AS login 
    LEFT JOIN 
        (SELECT 
            id_usuario, 
            MIN(data) AS primeira_transacao
        FROM tabela_transacao
        GROUP BY id_usuario) AS trans ON (login.id_usuario = trans.id_usuario);