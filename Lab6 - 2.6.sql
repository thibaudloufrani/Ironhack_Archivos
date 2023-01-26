#Get release years.

use sakila;

Select DISTINCT(release_year) fROM film;

#Get all films with ARMAGEDDON in the title.

Select title from film
where title like "%armageddon%";

Select title from film
where title REGEXP "armageddon$";

#Get 10 the longest films.

select title, length from film
order by length desc
limit 10;

#How many films include Behind the Scenes content?

select * from film;

select count(film_id) from film
where special_features like "%Behind the Scenes%";

#Drop column picture from staff.

SELECT * FROM sakila;
 ALTER TABLE staff
 DROP COLUMN picture;

#A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

select * from staff;

select * from customer

where first_name = "Tammy";

# TAMMY SANDERS, TAMMY.SANDERS@sakilacustomer.org , address_id = 79, store_id = 2) 

Insert into staff
values (3,"Tammy","Sanders",79,"TAMMY.SANDERS@sakilacustomer.org",2,1,"Tammy"," ","2022-02-02");

SELECT * FROM staff;

select * from film 
where title = "Academy Dinosaur";

select * from rental;

insert into rental
values (16050,"2023-02-22",4582,140,"2023-02-26",2,"2023-02-22");

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';


