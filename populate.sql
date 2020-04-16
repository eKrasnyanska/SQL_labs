-------------------------
-- Genre table
-------------------------
INSERT INTO Genre(genre_name)
VALUES('Comedy');

INSERT INTO Genre(genre_name)
VALUES('Crime');

INSERT INTO Genre(genre_name)
VALUES('Action');

INSERT INTO Genre(genre_name)
VALUES('Drama');

INSERT INTO Genre(genre_name)
VALUES('Sci-Fi');

INSERT INTO Genre(genre_name)
VALUES('Horror');

INSERT INTO Genre(genre_name)
VALUES('Animation');

INSERT INTO Genre(genre_name)
VALUES('Adventure');


-------------------------
-- Film table
-------------------------
INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Stand by Me', 'Rob Reiner', 1986, 8.1, 8000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Ferris Buellers Day Off', 'John Hughes', 1988, 7.8, 6000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Top Gun', 'Tony Scott', 1989, 6.9, 15000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Aliens', 'James Cameron', 1990, 8.4, 18500000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Flight of the Navigatore', 'Randal Kleiser', 1992, 6.9, 9000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Platoon', 'Oliver Stone', 1989, 8.1, 6000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Labyrinth', 'Jim Henson', 1988, 7.4, 25000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Blue Velvet', 'David Lynch', 1986, 7.8, 6000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Pretty in Pink', 'Howard Deutch', 1989, 6.8, 9000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('The Fly', 'David Cronenberg', 1992, 7.5, 15000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Crocodile Dundee', 'Peter Faiman', 1991, 6.5, 8800000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Highlander', 'Russell Mulcahy', 1990, 7.2, 16000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Lucas', 'David Seltzer', 1988, 6.8, 6000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Big Trouble in Little China', 'John Carpenter', 1989, 7.3, 25000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Manhunter', 'Michael Mann', 1986, 7.2, 15000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('9 Weeks', 'Adrian Lyne', 1990, 5.9, 17000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Maximum Overdrive', 'Stephen King', 1989, 5.4, 10000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Little Shop of Horrors', 'Frank Oz', 1992, 6.9, 25000000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('The Wraith', 'Mike Marvin', 1990, 5.9, 2700000);

INSERT INTO Film(film_name,director,year,score,budget)
VALUES('Howard the Duck', 'Willard Huyck', 1989, 4.6, 35000000);

-------------------------
-- Company table
-------------------------
INSERT INTO company(company_name,country)
VALUES('Columbia Pictures Corporation', 'USA');

INSERT INTO company(company_name,country)
VALUES('Paramount Pictures', 'USA');

INSERT INTO company(company_name,country)
VALUES('Twentieth Century Fox Film Corporation', 'USA');

INSERT INTO company(company_name,country)
VALUES('Walt Disney Pictures', 'USA');

INSERT INTO company(company_name,country)
VALUES('Hemdale', 'UK');

INSERT INTO company(company_name,country)
VALUES('Henson Associates', 'UK');

INSERT INTO company(company_name,country)
VALUES('De Laurentiis Entertainment Group', 'USA');

INSERT INTO company(company_name,country)
VALUES('SLM Production Group', 'USA');

INSERT INTO company(company_name,country)
VALUES('Rimfire Films', 'USA');

INSERT INTO company(company_name,country)
VALUES('Thorn EMI Screen Entertainment', 'UK');

INSERT INTO company(company_name,country)
VALUES('Producers Sales Organization', 'USA');

INSERT INTO company(company_name,country)
VALUES('Geffen Company', 'USA');

INSERT INTO company(company_name,country)
VALUES('New Century Entertainment Corporation', 'USA');

INSERT INTO company(company_name,country)
VALUES('Universal Pictures', 'USA');

INSERT INTO company(company_name,country)
VALUES('New Line Cinemas', 'USA');

INSERT INTO company(company_name,country)
VALUES('Orion Pictures', 'USA');

INSERT INTO company(company_name,country)
VALUES('Cannon Films', 'USA');

-------------------------
-- Company_Film table
-------------------------
INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Columbia Pictures Corporation', 'Stand by Me', 'Rob Reiner');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Paramount Pictures', 'Ferris Buellers Day Off', 'John Hughes');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Paramount Pictures', 'Top Gun', 'Tony Scott');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Twentieth Century Fox Film Corporation', 'Aliens', 'James Cameron');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Walt Disney Pictures', 'Flight of the Navigatore', 'Randal Kleiser');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Hemdale', 'Platoon', 'Oliver Stone');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Henson Associates', 'Labyrinth', 'Jim Henson');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('De Laurentiis Entertainment Group', 'Blue Velvet', 'David Lynch');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Paramount Pictures', 'Pretty in Pink', 'Howard Deutch');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('SLM Production Group', 'The Fly', 'David Cronenberg');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Rimfire Films', 'Crocodile Dundee', 'Peter Faiman');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Thorn EMI Screen Entertainment', 'Highlander', 'Russell Mulcahy');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Twentieth Century Fox Film Corporation', 'Lucas', 'David Seltzer');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Twentieth Century Fox Film Corporation', 'Big Trouble in Little China', 'John Carpenter');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('De Laurentiis Entertainment Group', 'Manhunter', 'Michael Mann');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Producers Sales Organization', '9 Weeks', 'Adrian Lyne');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('De Laurentiis Entertainment Group', 'Maximum Overdrive', 'Stephen King');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Geffen Company', 'Little Shop of Horrors', 'Frank Oz');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('New Century Entertainment Corporation', 'The Wraith', 'Mike Marvin');

INSERT INTO company_film(company_company_name,film_film_name, film_director)
VALUES('Universal Pictures', 'Howard the Duck', 'Willard Huyck');

-------------------------
-- Film_Genre table
-------------------------
INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Stand by Me', 'Rob Reiner', 'Adventure');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Ferris Buellers Day Off', 'John Hughes', 'Comedy');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Top Gun', 'Tony Scott', 'Action');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Aliens', 'James Cameron', 'Action');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Flight of the Navigatore', 'Randal Kleiser', 'Adventure');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Platoon', 'Oliver Stone', 'Drama');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Labyrinth', 'Jim Henson', 'Adventure');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Blue Velvet', 'David Lynch', 'Drama');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Pretty in Pink', 'Howard Deutch', 'Comedy');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('The Fly', 'David Cronenberg', 'Drama');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Crocodile Dundee', 'Peter Faiman', 'Adventure');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Highlander', 'Russell Mulcahy', 'Action');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Lucas', 'David Seltzer', 'Comedy');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Big Trouble in Little China', 'John Carpenter', 'Action');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Manhunter', 'Michael Mann', 'Crime');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('9 Weeks', 'Adrian Lyne', 'Drama');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Maximum Overdrive', 'Stephen King', 'Action');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Little Shop of Horrors', 'Frank Oz', 'Comedy');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('The Wraith', 'Mike Marvin', 'Action');

INSERT INTO film_genre(film_film_name, film_director,genre_genre_name)
VALUES('Howard the Duck', 'Willard Huyck', 'Action');