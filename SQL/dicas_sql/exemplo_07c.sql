WITH primeiro_login as (
SELECT 
    id_usuario,
    MIN(data) AS data_primeiro_login
FROM tabela_login
GROUP BY id_usuario),

primeira_transacao as (
SELECT 
    id_usuario, 
    MIN(data) AS data_primeira_transacao
FROM tabela_transacao
GROUP BY id_usuario)

SELECT
    login.id_usuario,
    trans.data_primeira_transacao - login.data_primeiro_login AS dias_ate_transacao
FROM 
    primeiro_login AS login 
    LEFT JOIN primeira_transacao AS trans ON (login.id_usuario = trans.id_usuario);