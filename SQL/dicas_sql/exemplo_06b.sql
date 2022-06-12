SELECT
    us.id,
    COUNT(trans.id) AS quantidade_login
FROM 
    tabela_usuario AS us
    LEFT JOIN tabela_login AS login ON (us.id = login.id_usuario)
WHERE 
    login.data > '2022-01-01'::date
GROUP BY 
    us.id
ORDER BY 
    us.id;