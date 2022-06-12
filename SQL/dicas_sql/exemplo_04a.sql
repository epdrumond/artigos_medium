SELECT 
    data_transacao,
    COUNT(id)
FROM tabela_transacoes
GROUP BY data_transacao;