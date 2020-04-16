--task 1
select company_name as company, count(company_film.company_company_name) as quantity_films
from company
    join company_film
    on company.company_name = company_film.company_company_name
    join film
    on company_film.film_film_name = film.film_name
where film.score > 6.5
group by company_name;

--task2
select genre_name as genres, count(film_genre.genre_genre_name) as quantity_genres
from genre
    left join film_genre
    on genre.genre_name = film_genre.genre_genre_name
    left join film
    on film.film_name = film_genre.film_film_name
group by genre_name;

--task3
select year, count(film_name) as quantity_films
from film
    join company_film
    on company_film.film_film_name = film.film_name
    join company
    on company_film.company_company_name = company.company_name
group by year
order by year;