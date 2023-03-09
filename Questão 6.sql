-- QUESTÃO 6
--Faça uma consulta de SQL-Server que exibi a idade em anos a partir da
--seguinte variável: DECLARE @nasc as varchar(11)='17/04/2008'(2 pontos);

-- por padrão do sql ele recebe as datas no estilo americano, sendo YYYY/MM/DD (ano/mês/dia)
-- como estava no exemplo dado - " DECLARE @nasc as varchar(11) ='17/04/2008' "

DECLARE @nasc as varchar(11) ='2008/04/17' 

SELECT FLOOR(DATEDIFF(DAY, @nasc,GETDATE())/365) -- formula para fazer a contagem da idade 

-- FLOOR - retorna um numero inteiro
-- DATEDIFF - retorna a diferença de valor entre as duas datas
-- DAY - para pegar os dias que foram passados
-- @nasc - a variavel declarada com a data de inicio
-- GETDATE - retorna a data atual do banco de dados

-- resultado 14 anos