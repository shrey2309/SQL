use swiggy;

-- 1. Which restaurant of abohar is visied by least number of people?
select * from restaurants 
       where city = 'Abohar' and 
       rating_count = (select min(rating_count) from restaurants where city = 'Abohar');
       
-- 2. Which restaurant has generated maximum revenue all over india?
select * , rating_count*cost as 'Revenue'from restaurants
       where rating_count*cost = (select max(rating_count*cost) from restaurants);
       
-- 3. How many restaurants are having rating more than the average rating?
select name, rating from restaurants
       where rating > (select avg(rating) from restaurants);
       
-- 4. Which restaurant of Delhi has generated most revenue?
select * , rating_count*cost as 'Revenue' from restaurants
       where city = 'delhi' and rating_count*cost = (select max(rating_count*cost) from restaurants where city = 'delhi');

-- 5. Which restaurant chain has maximum number of restaurants?
select name , count(name) as 'Number of Chains' from restaurants
       group by name 
       order by count(name) desc;
       
-- 6. Which restaurant chain has generated maximum revenue?
select name , sum(rating_count*cost) as 'Revenue'  from restaurants
       group by name 
       order by Revenue desc;
       
-- 7. Which city has maximum number of restaurants?
select city , count(name) as 'Number of Restaurants' from restaurants
       group by city
       order by count(name) desc;
       
-- 8. Which city has generated maximum revenue all over india?
select city , sum(rating_count*cost) from restaurants
       group by city
       order by sum(rating_count*cost) desc;

-- 9. List 10 least expensive cuisines?
select cuisine , round(avg(cost),2) as 'Average Cost' from restaurants
       group by cuisine 
       order by round(avg(cost),2) asc limit 10;

-- 10. List 10 most expensive cuisines?
select cuisine , round(avg(cost),2) as 'Average Cost' from restaurants
       group by cuisine 
       order by round(avg(cost),2) desc limit 10;

-- 11. Which city is having Biryani as most popular cuisine
select city , count(name) as 'Restaurants' from restaurants
       where cuisine = 'Biryani'
       group by city
       order by restaurants desc;

-- 12. List top 10 unique restaurants with unique name only thorughout the dataset as per generate maximum revenue (Single restaurant with that name)
select name, sum(cost * rating_count) as 'Revenue' from restaurants 
       group by name having count(name) = 1
       order by revenue desc limit 10;     

