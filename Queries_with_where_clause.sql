use myntra;

#1. Finding the most expensive product on myntra
select product_tag as 'Products', discounted_price as 'Price (Descending Order)' from products 
       order by discounted_price desc;
       
#2. Finding the least expensive product on myntra
select product_tag as 'Product' , discounted_price as 'Price' from products 
       order by discounted_price asc
       limit 1;
       
#3. Finding the top 5 most expensive product on myntra
select product_tag as 'Products', discounted_price as 'Price (Descending Order)' from products 
       order by discounted_price desc
       limit 5;

#4. Top 5 products based on best rating | rating*rating count
select product_name , rating , rating_count, round(rating*rating_count) as 'comb_rating' from products
       order by comb_rating desc 
       limit 5; 
       
#5. Finding the second most expensive product
select product_name , discounted_price from products
       order by discounted_price desc limit 1,1;
       
#6. Finding the second least expensive product
select product_name , discounted_price from products
       order by discounted_price asc limit 1,1;
       
#7. Finding the 10th most expensive product
select product_name , rating , rating_count, discounted_price from products
       order by discounted_price desc limit 9,1;
       
#8. Finding the top 5 worst rated product by nike
select product_name , rating , rating_count, round(rating*rating_count) as 'comb_rating' from products
       where brand_tag = 'nike'
       order by comb_rating asc limit 5;
       
#9. Finding the top 5 worst rated product by nike & rating is not zero
select product_name , rating , rating_count, round(rating*rating_count) as 'comb_rating' from products
       where brand_tag = 'nike' and rating != 0
       order by comb_rating asc limit 5;
       
#10. Finding the top 10 best rated tshirt from nike or adidas | rating*rating count
select product_name , product_tag , brand_name , rating , rating_count from products
	   where brand_name in ('nike','adidas') and product_tag = 'tshirts'
	   order by rating_count*rating desc limit 10;
       
#11. Worst rated 10 products based on the rating of 100 people atleast
select product_name , rating , rating_count from products
       where rating_count > 100
       order by rating asc limit 10;
       
#12. Top 10 worst rated tshirt based on the rating of 100 people atleast
select product_name , rating, rating_count, brand_tag from products
       where product_tag = 'tshirts' and rating_count > 100
       order by rating asc limit 10;
       
#13. Sort the products in alphaetical descending order based on their product_name and show the last 10 of them
select product_name from products
       order by product_name desc
       limit 10;
       
#14. Finding the top 10 best rated tshirts from nike or adidas | rating*rating count
select product_name , rating , rating_count, brand_tag, discounted_price, round(rating*rating_count) as 'comb_rating' from products
       where brand_tag  in('nike','adidas') and product_tag = 'tshirts'
       order by comb_rating desc limit 10;

#15. Finding the list of tshirts from nike and adidas prices between 1000 and 1200 | Sort them based on ascending order of brand_name & price
select product_name , rating , rating_count, brand_tag, discounted_price from products
       where brand_tag  in('nike','adidas') and product_tag = 'tshirts' and discounted_price between 1000 and 1200
       order by brand_tag asc , discounted_price asc;
       
#16. Finding the list of tshirts from nike and adidas prices between 1000 and 2000 | Sort them based on ascending order of brand_name & price
select product_name , rating , rating_count, brand_tag, discounted_price from products
       where brand_tag  in('nike','adidas') and product_tag = 'tshirts' and discounted_price between 1000 and 2000
       order by discounted_price asc, brand_tag asc;



