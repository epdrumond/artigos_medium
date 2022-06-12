SELECT
    login.id, 
    login.timestamp,
    trans.timestamp
FROM
    tabela_de_login_no_aplicativo AS login
    LEFT JOIN tabela_de_transacoes_no_aplicativo AS trans ON 
        (login.id_usuario = trans.id_usuario);