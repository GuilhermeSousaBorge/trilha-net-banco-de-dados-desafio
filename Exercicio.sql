-- 1

select Nome, Ano from Filmes

-- 2 

select Nome, Ano from Filmes order by Ano asc

-- 3

select Nome, Ano, Duracao from Filmes where Nome='De volta para o futuro'

-- 4 

select Nome, Ano, Duracao from Filmes where Ano=1997

-- 5 

select Nome, Ano, Duracao from Filmes where Ano > 2000

-- 6 

select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao asc

-- 7 

select Ano, count(*) as Quantidade from Filmes group by Ano order by Quantidade desc

-- 8

select PrimeiroNome, UltimoNome from Atores where Genero='M'

-- 9

select PrimeiroNome, UltimoNome from Atores where Genero='F' order by PrimeiroNome asc

-- 10

select Nome, Generos.Genero from ((Filmes join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme) join Generos on FilmesGenero.IdGenero = Generos.Id)

-- 11

select Nome, Generos.Genero from ((Filmes join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme) join Generos on FilmesGenero.IdGenero = Generos.Id) where Generos.Genero='Mistério'

-- 12

select Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel from Filmes join ElencoFilme on Filmes.Id = ElencoFilme.IdFilme join Atores on ElencoFilme.IdAtor = Atores.id 
