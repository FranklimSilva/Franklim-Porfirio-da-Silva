-- QUEST�O 6
--Fa�a uma consulta de SQL-Server que exibi a idade em anos a partir da
--seguinte vari�vel: DECLARE @nasc as varchar(11)='17/04/2008'(2 pontos);

-- por padr�o do sql ele recebe as datas no estilo americano, sendo YYYY/MM/DD (ano/m�s/dia)
-- como estava no exemplo dado - " DECLARE @nasc as varchar(11) ='17/04/2008' "

DECLARE @nasc as varchar(11) ='2008/04/17' 

SELECT FLOOR(DATEDIFF(DAY, @nasc,GETDATE())/365) -- formula para fazer a contagem da idade 

-- FLOOR - retorna um numero inteiro
-- DATEDIFF - retorna a diferen�a de valor entre as duas datas
-- DAY - para pegar os dias que foram passados
-- @nasc - a variavel declarada com a data de inicio
-- GETDATE - retorna a data atual do banco de dados

-- resultado 14 anos