use swiggy;

# Using the rank() 
select *, rank() over(order by cost desc) as 'rank' from restaurants;

#2. Ranking restaurants on the basis of expenses in every city.
select *, rank() over(partition by city order by cost desc) as 'Rank' from restaurants;

#3. Using rank(), dense_rank(), row_number()
select *,
      rank() over(partition by city order by cost desc) as 'Rank' ,
      dense_rank() over(partition by city order by cost desc) as 'Dense Rank' ,
      row_number() over(partition by city order by cost desc) as 'Row Number' 
      from restaurants;
      
#4. Row_number every restaurant from most expensive to least expensive


#5. Rank every restaurant from most expensive to least as per their city and also print the city name.
select *,
        concat(city , '-' , row_number() over(partition by city order by cost desc)) as 'Rank'
		from restaurants;
        
#6. List top 5 restaurants from every city based on revenue.

        
#7. Find the accumulative revenue of top 5(maximum revenue) restaurants of every city.
