SELECT
    login.id_usuario,
    MIN(trans.data) - MIN(login.data) AS dias_ate_transacao
FROM 
    tabela_login AS login 
    LEFT JOIN tabela_transacao AS trans ON (login.id_usuario = trans.id_usuario)
GROUP BY 
    login.id_usuario;