SELECT
    a.id, 
    a.timestamp,
    b.timestamp
FROM
   tabela_de_login_no_aplicativo AS a
   LEFT JOIN tabela_de_transacoes_no_aplicativo AS b ON (a.id_usuario = b.id_usuario);