import cx_Oracle
import plotly.graph_objects as go
import chart_studio
import chart_studio.plotly as py
import re
import chart_studio.dashboard_objs as dashboard

def fileId_from_url(url):
    """Return fileId from a url."""
    raw_fileId = re.findall("~[A-z.]+/[0-9]+", url)[0][1: ]
    return raw_fileId.replace('/', ':')

chart_studio.tools.set_credentials_file(username='liza.krasnyaskaya', api_key='hBkq8X3Nk61W5JuVfvQy')

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

list_x_y = []
for query in list_query:
    temp1 = []
    temp2 = []
    cursor = my_con.cursor()
    cursor.execute(query)
    for row in cursor:
        temp1 += [row[0]]
        temp2 += [row[1]]
    list_x_y += [temp1, temp2]
    cursor.close()
my_con.close()

trace1 = go.Bar(
    x = list_x_y[2],
    y = list_x_y[3]
)
layout1 = go.Layout(
    title_text = 'Film genres',
    xaxis_title = 'Genres',
    yaxis_title = 'Quantity of films'
)
fig1 = go.Figure(data=trace1, layout=layout1)
# fig1.write_html('genres.html', auto_open=True)
genres_sum1 = py.plot(fig1, filename='genres_sum1')

trace2 = go.Pie(
    labels = list_x_y[0],
    values = list_x_y[1]
)
layout2 = go.Layout(
    title_text = 'Best companies with films rate more 6.5'
)
fig2 = go.Figure(data=trace2, layout=layout2)
# fig2.write_html('best.html', auto_open=True)
best_comp1 = py.plot(fig2, filename='best_company1')

trace3 = go.Scatter(
    x = list_x_y[4],
    y = list_x_y[5]
)
layout3 = go.Layout(
    title_text = 'Production of films by years',
    xaxis_title = 'Years',
    yaxis_title = 'Films quantity'
)
fig3 = go.Figure(data=[trace3], layout=layout3)
# fig3.write_html('films.html', auto_open=True)
film_quantity1 = py.plot(fig3, filename='film_quantity1')

my_dboard = dashboard.Dashboard()
genres_sum_id = fileId_from_url(genres_sum1)
best_comp_id = fileId_from_url(best_comp1)
film_quantity_id = fileId_from_url(film_quantity1)

box1 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': best_comp_id,
    'title': 'Запит 1: Кількість успішних фільмів, що випустила кожна кінокомпанія'
}
box2 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': genres_sum_id,
    'title': 'Запит 2: Розподілення знятих фільмів по жанрам'
}
box3 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': film_quantity_id,
    'title': 'Запит 3: Динаміка випуску фільмів по роках'
}

my_dboard.insert(box1)
my_dboard.insert(box2, 'below', 1)
my_dboard.insert(box3, 'right', 2)

py.dashboard_ops.upload(my_dboard, 'Lab 2')