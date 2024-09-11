-- Creating table person
CREATE TABLE person(  
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    age INTEGER,
    height INTEGER,
    city VARCHAR(200) ,
    favorite_color VARCHAR(200)
 );

-- Inserting Data into person table
INSERT INTO person ( name, age, height, city, favorite_color )
VALUES ( 'Black Griffin', 58, 132, 'Sandy Springs', 'Green');


-- List all people by height from tallest to shortest
SELECT * from person 
ORDER BY height DESC;

-- List all people by height from shortest to tallest
SELECT * FROM person 
ORDER BY height ASC;

-- List all people by age oldest to youngest
SELECT * FROM person 
ORDER BY age DESC;


-- List all people in the person table older than age 20

SELECT * FROM person
WHERE age > 20

-- List all people in the person table exactly 18
SELECT * FROM person
WHERE age = 18

-- List all people in the person table that are less than 20 and older than 30
SELECT * FROM person
WHERE age > 20 OR age > 30;


-- List all the people in the person table are not 27
SELECT * FROM person
WHERE age != 27

-- List all people in the person table where their favorite color is not red 
SELECT * FROM person
WHERE favorite_color != 'Red';

-- List all people in the person table where their favorite color is not red and is not blue

SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

-- List all the people in the person table where their favorite color is orange or green
SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

-- List all the people in the person table where their favorite color is orange, green, or blue

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- List all the people in the person table where their favorite color is yellow or pink

SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Pink');


-- Creating table orders
CREATE TABLE orders( 
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(200),
    product_price INTEGER,
    quantity INTEGER
);


INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'Steak', 32.75, 5);


-- Select all the records from the orders table
 SELECT * FROM orders;

 -- Calculate the total number of products ordered
 SELECT sum(quantity) FROM orders;

 SELECT sum(product_price * quantity) from orders;

 -- Calculate the total order price by single person id
 SELECT sum(product_price * quantity) 
 FROM orders 
 WHERE person_id = 1;
