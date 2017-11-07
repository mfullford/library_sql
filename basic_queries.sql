-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors

SELECT * FROM authors;
 id |        name        |       nationality        | birth_year 
----+--------------------+--------------------------+------------
  1 | Cao Xueqin         | China                    |       1715
  2 | J.K. Rowling       | United Kingdom           |       1965
  3 | James Baldwin      | United States of America |       1924
  4 | Jorge Luis Borges  | Argentina                |       1899
  5 | Haruki Murakami    | Japan                    |       1949
  6 | Milan Kundera      | Czechoslovakia           |       1929
  7 | Albert Camus       | France                   |       1913
  8 | George R.R. Martin | United States of America |       1945

-- Get just the name and birth year of all authors

SELECT name, birth_year FROM authors;
        name        | birth_year 
--------------------+------------
 Cao Xueqin         |       1715
 J.K. Rowling       |       1965
 James Baldwin      |       1924
 Jorge Luis Borges  |       1899
 Haruki Murakami    |       1949
 Milan Kundera      |       1929
 Albert Camus       |       1913
 George R.R. Martin |       1945

-- Get all authors born in the 20th centruy or later

SELECT name FROM authors WHERE birth_year>1900;
        name        
--------------------
 J.K. Rowling
 James Baldwin
 Haruki Murakami
 Milan Kundera
 Albert Camus
 George R.R. Martin

-- Get all authors born in the USA

SELECT name FROM authors WHERE nationality='United States of America';
        name        
--------------------
 James Baldwin
 George R.R. Martin

-- Get all books published on 1985

SELECT * FROM books;
SELECT title FROM books WHERE publication_date=1985;
              title              
---------------------------------
 The Evidence of Things Not Seen
 The Price of the Ticket

-- Get all books published before 1989

SELECT title FROM books WHERE publication_date<1989;
                      title                       
--------------------------------------------------
 Dream of the Red Chamber
 Go Tell It on the Mountain
 The Amen Corner
 Notes of a Native Son
 Giovannis Room
 Nobody Knows My Name: More Notes of a Native Son
 Another Country
 A Talk to Teachers
 The Fire Next Time
 Blues for Mister Charlie
 Going to Meet the Man
 Tell Me How Long the Trains Been Gone
 No Name in the Street
 If Beale Street Could Talk
 The Devil Finds Work
 Just Above My Head
 Jimmys Blues
 The Evidence of Things Not Seen
 The Price of the Ticket
 Fervor de Buenos Aires
 Inquisiciones
 Luna de Enfrente
 El idioma de los argentinos
 Cuaderno San Martín
 Discusión
 Historia de la eternidad
 El jardín de senderos que se bifurcan
 Seis problemas para don Isidro Parodi
 Hear the Wind Sing
 The Joke
 The Farewell Waltz
 Life Is Elsewhere
 The Book of Laughter and Forgetting
 The Unbearable Lightness of Being
 The Stranger
 The Plague
 The Fall
 A Happy Death

-- Get just the title of all books.

SELECT title FROM books;
Dream of the Red Chamber
 Harry Potter and the Philosophers Stone
 Harry Potter and the Chamber of Secrets
 Harry Potter and the Prisoner of Azkaban
 Harry Potter and the Goblet of Fire
 Harry Potter and the Order of the Phoenix
 Harry Potter and the Half-Blood Prince
 Harry Potter and the Deathly Hallows
 The Casual Vacancy
 Go Tell It on the Mountain
 The Amen Corner
 Notes of a Native Son
 Giovannis Room
 Nobody Knows My Name: More Notes of a Native Son
 Another Country
 A Talk to Teachers
 The Fire Next Time
 Blues for Mister Charlie
 Going to Meet the Man
 Tell Me How Long the Trains Been Gone
 No Name in the Street
 If Beale Street Could Talk
 The Devil Finds Work
 Just Above My Head
 Jimmys Blues
 The Evidence of Things Not Seen
 The Price of the Ticket
 The Cross of Redemption: Uncollected Writings
 Jimmys Blues and Other Poems
 Fervor de Buenos Aires
 Inquisiciones
 Luna de Enfrente
 El idioma de los argentinos
 Cuaderno San Martín
 Discusión
 Historia de la eternidad
 El jardín de senderos que se bifurcan
 Seis problemas para don Isidro Parodi
 Hear the Wind Sing
 A Wild Sheep Chase
 Norwegian Wood
 Dance Dance Dance
 South of the Border, West of the Sun
 The Wind-Up Bird Chronicle
 Sputnik Sweetheart
 Kafka on the Shore
 After Dark


-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been

  SELECT publication_date FROM books WHERE title='A Dance with Dragons';
  2011

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)

SELECT title FROM books WHERE title LIKE '%the%';
                  title                   
-------------------------------------------
 Dream of the Red Chamber
 Harry Potter and the Philosophers Stone
 Harry Potter and the Chamber of Secrets
 Harry Potter and the Prisoner of Azkaban
 Harry Potter and the Goblet of Fire
 Harry Potter and the Order of the Phoenix
 Harry Potter and the Half-Blood Prince
 Harry Potter and the Deathly Hallows
 Go Tell It on the Mountain
 Another Country
 Going to Meet the Man
 Tell Me How Long the Trains Been Gone
 No Name in the Street
 The Price of the Ticket
 Jimmys Blues and Other Poems
 Hear the Wind Sing
 South of the Border, West of the Sun
 Sputnik Sweetheart
 Kafka on the Shore
 I Swear the Dragons are Coming Soon

-- Add yourself as an author

INSERT INTO authors VALUES (9, 'Marissa Fullford', 'United States of America', 1994);

-- Add two books that you'd like to write (you can hard-code your id as the author id)

INSERT INTO books VALUES (224, 'Park Bench', 2017, 9);
INSERT INTO books VALUES (424, 'Complete Biography of Eleanor Roosevelt', 2019, 9);

-- Update one of your books to have a new title

UPDATE books SET title = 'First Lady of the World' WHERE title='Complete Biography of Eleanor Roosevelt';

-- Delete your books

library=# DELETE FROM books WHERE id=424;
DELETE 1
library=# DELETE FROM books WHERE id=224;

-- Delete your author entry

DELETE FROM authors where id=9;
