import cx_Oracle


login = 'kras'
password = 'kras'
host = '127.0.0.1:1521/xe'
query1 = """
select company_name as company, count(company_film.company_company_name) as quantity_films
from company
    join company_film
    on company.company_name = company_film.company_company_name
    join film
    on company_film.film_film_name = film.film_name
where film.score > 6.5
group by company_name"""
query2 = """
select genre_name as genres, count(film_genre.genre_genre_name) as quantity_genres
from genre
    left join film_genre
    on genre.genre_name = film_genre.genre_genre_name
group by genre_name"""
query3 = """select year, count(film_name) as quantity_films
from film
    join company_film
    on company_film.film_film_name = film.film_name
    join company
    on company_film.company_company_name = company.company_name
group by year
order by year"""
list_query = [query1, query2, query3]


try:
    my_con = cx_Oracle.connect(login, password, host)
    print("Connected")
except cx_Oracle.DatabaseError:
    print("Login error")
    exit(0)

for query in list_query:
    cursor = my_con.cursor()
    cursor.execute(query)
    print('-----------task', list_query.index(query)+1, '-----------')
    for row in cursor:
        print(row[0], " ", row[1])
    cursor.close()

my_con.close()