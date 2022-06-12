SELECT 
    data_transacao,
    COUNT(id)
FROM tabela_transacoes
WHERE data_transacao > CURRENT_DATE - '365 days'::interval
GROUP BY data_transacao;