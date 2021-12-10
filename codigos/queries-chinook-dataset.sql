-- Dataset chinook.zip

-- # Seleciona as musicas limitando a 10 no maximo (evitar *)
SELECT * from tracks limit 10;

-- # Seleciona apenas as colunas Name e Composer (melhor)
SELECT Name, Composer from tracks limit 10;

-- # garantir a ordem do resultado retornado
SELECT Name, Composer FROM tracks order by Name limit 10;

-- # contagem e renomeia a do resultado com AS
SELECT count(*) AS total FROM albums;

-- # selecionar apenas as contas da cidade Oslo
SELECT InvoiceId, BillingCity FROM invoices WHERE BillingCity='Oslo'

-- # todos empregados da cidade "Calgary" e "Sales Support Agent"
SELECT city FROM employees WHERE city='Calgary' AND Title="Sales Support Agent"

-- # todos customers com email da apple?
SELECT FirstName From customers Where Email LIKE "%apple%";

-- # sumarizar total de employees por cidade
SELECT city, count(*) FROM employees GROUP BY city;

-- # Mostrar os albums de cada artista?
SELECT ar.Name, al.Title From albums AS al INNER join artists AS ar ON al.artistId = ar.artistId limit 10;

-- total de compras (invoices) por país

-- mês com maior vendas

-- cliente que mais comprou



