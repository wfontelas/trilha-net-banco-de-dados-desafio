use Filmes

select * from Atores

select * from ElencoFilme

select * from Filmes 

select * from FilmesGenero

select * from Generos

-- 1- Buscar o nome e ano dos filmes

select Nome, Ano from Filmes

-- 2- Buscar o nome e o ano dos filmes , ordenados por ordem crescente pelo ano

select Nome, Ano from Filmes order by Ano

-- 3- Buscar pelo filme "De volta para o futuro", trazendo o nome, ano e dura��o

select Nome, Ano, Duracao from Filmes where Nome ='De Volta para o Futuro'

-- 4- Buscar os filmes lan�ados em 1997

select Nome, Ano, Duracao from Filmes where Ano = 1997

-- 5- Buscar os filmes lan�ados ap�s o ano 2000

select Nome, Ano, Duracao from Filmes where Ano > 2000

-- 6- Buscar os filmes com a dura��o maior que 100 e menor que 150, ordenado pela dura��o em ordem crecente

select Nome, Ano, Duracao from Filmes 
where Duracao > 100 and Duracao < 150
order by Duracao

-- 7- Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente 

select Ano, Count(*) Quantidade from Filmes
group by Ano
order by Quantidade desc

-- 8- Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome

select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'

-- 9- Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

select * from Atores where Genero = 'F' order by PrimeiroNome

-- 10- Buscar o nome do filme e o g�nero

select f.Nome, g.Genero from Filmes f 
inner join FilmesGenero fg on f.Id = fg.IdFilme
inner join Generos g on fg.IdGenero = g.Id

-- 11- Buscar o nome do filme e o g�nero do tipo "Mist�rio"

select f.Nome, g.Genero from Filmes f 
inner join FilmesGenero fg on f.Id = fg.IdFilme
inner join Generos g on fg.IdGenero = g.Id
where g.Genero = 'Mist�rio'

--12- Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f
inner join ElencoFilme ef on f.id = ef.IdFilme
inner join Atores a on ef.IdAtor = a.Id

----------------------------------------------------------------------------//--------------------------------------------------------------






