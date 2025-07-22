create database myntra;
use myntra;
select * from products;
#1. How many brands are associated with us ?
select count(distinct brand_tag) from products;

#2. How many tshirts do we have in the database ?
select count(*) from products 
	   where product_tag = 'tshirts';

#3. How many tshirts do we have in the database under 2000 ?
select count(*) from products 
	   where product_tag = 'tshirts' and discounted_price < 2000;

#4. How many brands are selling tshirts ?
select count(distinct brand_tag) from products 
       where product_tag = 'tshirts';

#5. How many different product categories is H&M selling ?
select count(distinct product_tag) from products
       where brand_name = 'H&M';

#6. List top 5 tshirts of nike.
select * from products 
       where brand_name = 'nike' and product_tag = 'tshirts' 
       order by rating_count desc
       limit 5;

#7. List top 5 worst rated products from guess
select * from products
       where brand_name = 'guess' and rating_count > 0
       order by rating asc
       limit 5;
       
#8. Find total products sold by levis
select sum(rating_count) from products
       where brand_name = 'levis';
       
#9. How many tshirts are sold in total ?
select sum(rating_count) from products 
       where product_tag = 'tshirts';
       
#10. Which category among tshirts & shirts has generated more revenue ?
select product_tag , sum(rating_count*discounted_price) as 'Revenue' from products
	where product_tag in ('shrts' , 'tshirts')
	group by product_tag
	order by Revenue desc;
       
#11. List top 5 best-selling brands.
select brand_name , sum(rating_count) from products
	   group by brand_name
       order by sum(rating_count) desc
       limit 5;
       
#12. List top 5 best-selling product categories
select product_tag , sum(rating_count) from products
       group by product_tag
       order by sum(rating_count) desc
       limit 5;
       
#13. Which brand has generated the maximum revenue ?
select brand_tag , sum(rating_count*discounted_price) as 'Revenue' from products
	group by brand_tag
	order by Revenue desc
	limit 1;
       
#14.Which product category has generated maximum revenue?
select product_tag , sum(rating_count*discounted_price) as 'Revenue' from products
       group by product_tag
       order by Revenue desc
       limit 1;

       
