# Create a query or queries to extract the information you think may be relevant for 
# building the prediction model. It should include some film features and some rental features.
use sakila;


select ca.name as category,title,rental_rate, rental_duration,rating, length,count(distinct rental_id) as noofrenting, 
max(rental_date) as last_rental,
round(avg(timestampdiff(hour,rental_date,return_date))) as avg_rental_hour, 
round(avg(p.amount),2) as avg_rent_cost
from film 
join inventory using(film_id)
join rental using(inventory_id)
join payment p using(rental_id)
join film_category  using(film_id)
join category ca using(category_id)
group by title, category, rental_rate, rating,length, rental_duration;


select title,
sum(case when rental_date like '2006-02%' then 1 else 0 end) as last_month_activity from film 
join inventory using(film_id)
join rental using(inventory_id)
group by title;
