use sakila;

#Rank films by length (filter out the rows with nulls or zeros in length column). Select only columns title, length and rank in your output.

Select * from film;

select title, length, rank () over (order by length desc) from film
where length is not null;

#Rank films by length within the rating category (filter out the rows with nulls or zeros in length column). In your output, only select the columns title, length, rating and rank.

select title, length, rank () over (order by length desc) from film
where length is not null
Group by rating,title, length
order by rating,length;

#How many films are there for each of the categories in the category table? Hint: Use appropriate join between the tables "category" and "film_category".

use sakila;
Select c.name, count(f.film_id)  from category c 
Join film_category f on c.category_id = f.category_id
group by c.name;

#Which actor has appeared in the most films? Hint: You can create a join between the tables "actor" and "film actor" and count the number of times an actor appears.

select count(f.film_id), a.actor_id, a.first_name 
from film_actor f
LEFT JOIN actor a on f.actor_id = a.actor_id
group by a.actor_id
order by count(f.film_id) desc;

#Which is the most active customer (the customer that has rented the most number of films)? Hint: Use appropriate join between the tables "customer" and "rental" and count the rental_id for each customer.

select count(r.rental_id), c.customer_id, c.first_name 
from rental r
JOIN customer c on r.customer_id = c.customer_id
group by c.customer_id
order by count(r.rental_id) desc;
