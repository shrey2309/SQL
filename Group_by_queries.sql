use myntra;

-- 1. Finding the names of unique brands
select distinct brand_tag from products;

-- 2. Finding the number of unique brands
select count(distinct brand_tag) from products;

-- 3. Finding the number of products in each brands
select brand_tag , count(product_tag) as 'No. of products' from products
       group by brand_tag;
       
-- 4. Finding the top 5 brand who has the most number of products | different product in their inventory
select brand_tag , count(product_tag) from products
       group by brand_tag
       order by count(product_tag) desc
       limit 5;
       
-- 5. Finding the top 5 brand who sold the most number of products
select brand_tag , sum(rating_count) as 'Products Sold' from products
       group by brand_tag
       order by sum(rating_count) desc
       limit 5;
       
-- 6. Finding the top 5 most expensive brands based on their discounted price
select brand_name , round(avg(discounted_price)) from products
       group by brand_name
       order by round(avg(discounted_price)) desc
       limit 5;
       
-- 7. Finding the top 5 least expensive brands based on their discounted price
select brand_name , round(avg(discounted_price)) from products
       group by brand_name
       order by round(avg(discounted_price)) asc
       limit 5;
       
-- 8. Finding the top 10 best-selling product categories 
select product_tag , sum(rating_count) from products
       group by product_tag
       order by sum(rating_count) desc
       limit 10;
       
-- 9. Finding the top 10 brands who gives maximum discount
select brand_tag , round(avg(discount_percent),2) as 'Discount' from products
       group by brand_tag
       order by Discount desc
       limit 10;
       
-- 10. Finding the top 5 most expensive product categories
select product_tag , round(avg(discounted_price)) as 'Price' from products
       group by product_tag
       order by Price desc
       limit 5;
       
-- 11. Which category of any specific brand is sold the most?
select brand_tag , product_tag , sum(rating_count) from products
       group by brand_tag , product_tag
       order by sum(rating_count) desc
       limit 5;
       
-- 12. Brand Report Card
select brand_tag as 'Brand', count(product_tag) as 'No. of products',
       sum(rating_count) as 'People rated',
       min(marked_price) as 'Minimum Marked Price',
       avg(marked_price) as 'Average Marked Price',
       max(marked_price) as 'Maximum Marked Price',
	min(discounted_price) as 'Minimum Discounted Price',
       avg(discounted_price) as 'Average Discounted Price',
       max(discounted_price) as 'Maximum Discounted Price',
       avg(discount_percent) as 'Average Discount Percentage',
       sum(rating_count*discounted_price) as 'Revenue'
       from products
       group by brand_tag ;



-- 13. Which product_category of any brand is sold the most?

       
-- 14. List top 5 brands which has sold most number of tshirts
select brand_tag , product_tag , sum(rating_count) as 'Orders' , avg(discounted_price) as 'Average Price' from products
       where product_tag = 'tshirts'
       group by brand_tag
       order by sum(rating_count) desc
       limit 5;
       
-- 15. List top 5 brands which has sold most number of shirts 
select brand_tag , product_tag , sum(rating_count) as 'Orders' , avg(discounted_price) as 'Average Price' from products
       where product_tag = 'shirts'
       group by brand_tag
       order by sum(rating_count) desc
       limit 5;
       
-- 16. List top 5 brands which has sold most number of jeans
select brand_tag , product_tag , sum(rating_count) as 'Orders' , avg(discounted_price) as 'Average Price' from products
       where product_tag = 'jeans'
       group by brand_tag
       order by sum(rating_count) desc
       limit 5;
       
-- 17. List top 5 brands which has sold most number of dresses

       
-- 18. Most popular product name listed in Myntra.
select product_name , count(product_name) as 'Name Count' from products
       group by product_name
       order by count(product_name) desc
       limit 10;

-- 19. Number of products sold for every rating (0 - 5)
select rating , count(rating) as 'Frequency of Rating' from products
       group by rating
       order by rating desc;
       
-- 20. Number of products sold for every rating by nike
 select brand_tag , rating , count(rating) as 'Frequency of Rating' from products
       where brand_tag = 'nike'
       group by rating
       order by rating asc;
       
-- 21. Number of products sold for every rating in tshirt category
select rating , count(rating_count) as 'Frequency of Rating' from products
       where product_tag = 'tshirts'
       group by rating
       order by rating asc;
       

