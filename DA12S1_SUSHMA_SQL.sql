use sakila;

-- task 1
select concat(first_name,last_name) as Full_name from actor;

-- task 2a
select first_name,count(first_name) as count_firstname from actor group by first_name;
-- task 2b
select first_name, count(first_name) as count from actor group by first_name having count=1;

-- task 3a
select last_name,count(last_name) from actor group by last_name;
-- task 3b
select last_name, count(last_name) as count from actor group by last_name having count=1;

-- task 4a
select title,rating
from film
where rating='R';

-- task 4b
select title,rating
from film
where rating!='R';

-- task 4c
select title,category.name
from film join film_category join category
on film.film_id=film_category.category_id and film_category.category_id=category.category_id
where name='children';


-- task 5a
select title,replacement_cost
from film
where replacement_cost<=11;

-- task 5b
select title,replacement_cost
from film
where replacement_cost between 11 and 20;

-- task 5c
select title,replacement_cost
from film order by replacement_cost desc;

-- task 6
select title,count(actor.actor_id) as count
from film join film_actor join actor
on film.film_id=film_actor.film_id and film_actor.actor_id=actor.actor_id
group by title order by count desc limit 3;

-- task 7
select title 
from film
where title like 'K%' or title like 'Q%';

-- task 8
select first_name as actor_name,title
from film join film_actor join actor
on film.film_id=film_actor.film_id and film_actor.actor_id=actor.actor_id
where title='Agent Truman';

-- task 9
select title,category.name
from film join film_category join category
on film.film_id=film_category.category_id and film_category.category_id=category.category_id
where name='family';

-- task 10a
select rating,max(rental_rate),min(rental_rate),avg(rental_rate) 
from film 
group by rating order by avg(rental_rate) desc;

-- task 10b
select title,count(rental.rental_id) as movie_count
from film join inventory join rental
on film.film_id=inventory.film_id and inventory.inventory_id=rental.inventory_id
group by title order by movie_count desc;

-- task 11
select category.name,count(category.name),(avg(replacement_cost)-avg(rental_rate)) as difference_avg
from film join category join film_category
on film_category.category_id=category.category_id and film_category.film_id=film.film_id
group by category.name having difference_avg>15;

-- task 12
select name,count(film.film_id) as no_of_movies
from film join category join film_category
on film_category.category_id=category.category_id and film_category.film_id=film.film_id
group by category.name having count(film.film_id)>70; 


// ## extra question
select first_name,last_name,amount
from staff join payment
on staff.staff_id=payment.staff_id
where amount<5;

select film.title,count(actor_id)
from film inner join film_actor
on film.film_id=film_actor.film_id group by title;














 

