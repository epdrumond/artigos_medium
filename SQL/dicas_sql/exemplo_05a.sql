SELECT   
   tabela_de_login_no_aplicativo.id, 
   tabela_de_login_no_aplicativo.timestamp,
   tabela_de_transacoes_no_aplicativo.timestamp
FROM
   tabela_de_login_no_aplicativo
   LEFT JOIN tabela_de_transacoes_no_aplicativo ON (tabela_de_login_no_aplicativo.id_usuario = tabela_de_transacoes_no_aplicativo.id_usuario);