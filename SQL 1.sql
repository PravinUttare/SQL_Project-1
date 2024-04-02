create database newproject;
use newproject;

-- 1.Retrieve the names of all the Bollywood movies which are of drama genre in the dataset.
select Movie_Name from movies_new where Genre = 'drama';

-- 2.Retrieve the names of all the Bollywood movies of Amir Khan in the dataset.
select Movie_Name from movies_new where Lead_star = 'Aamir Khan';

-- 3.Retrieve the names of all the Bollywood movies which are directed by RamGopal Verma in the dataset.
select Movie_Name from movies_new where Director = 'Ram Gopal Verma';

-- 4.Retrieve the names of all the Bollywood movies which have been released over more than 1000 number of screens in the dataset.
select Movie_Name from movies_new where Number_of_Screens > 1000;

-- 5.Retrieve the names of all the Bollywood movies which have generated Revenue(INR) more than 700000000 in the dataset.
select Movie_Name from movies_new where Revenue > 700000000;

-- 6.Retrieve the names of all the Bollywood movies which have budget less than 1cr in the dataset.
select Movie_Name from movies_new where Budget < 10000000;

-- 7.Retrieve the names of all the Bollywood movies which are flop in the dataset.
select Movie_Name from movies_new where Budget > Revenue;

-- 8.Retrieve the names and profit of all the Bollywood movies in the dataset.
select Movie_Name, 
case when Revenue - Budget > 0 then Revenue - Budget else 'flop' end as Profit
from movies_new where Revenue is not null and Budget is not null;


-- 9.Retrieve the names and loss of all the Bollywood movies in the dataset.
select Movie_Name, 
case when Revenue - Budget < 0 then Budget-Revenue else 'Hit' end as Loss
from movies_new where Revenue is not null and Budget is not null;

-- 10. Retrieve the names of all the Bollywood movies which have been released on holidays in the dataset.
select Movie_Name from movies_new where Release_Period = 'Holiday'

-- 11. Retrieve the names of all the Bollywood movies which have lead star as Akshay Kumar and directed by Priyadarshan in the dataset.
select Movie_Name from movies_new where Lead_Star = 'Akshay Kumar' and Director = 'Priyadarshan';

-- 12. Retrieve the names of all the Bollywood movies starting with ‘a’ in the dataset.
select Movie_Name from movies_new where Movie_Name like 'a%';

-- 13. Retrieve the names of all the Bollywood movies ending with ‘a’ in the dataset.
select Movie_Name from movies_new where Movie_Name like '%a';

-- 14. Retrieve the names of all the Bollywood movies having ‘a’ at second place of the name in the dataset.
select Movie_Name from movies_new where Movie_Name like '_a%';

-- 15. Retrieve the names of all the Bollywood movies having music of amit trivedi the dataset.
select Movie_Name from movies_new where Music_Director = 'Amit Trivedi';

-- 16. Retrieve the names of all the comedy movies of Akshay Kumar in the dataset.
select Movie_Name from movies_new where Genre = 'comedy' and Lead_Star = 'Akshay Kumar';

-- 17. Retrieve the names of movies and star name starring khan in the dataset.
select Movie_Name,Lead_Star from movies_new where Lead_Star like '%khan%';

-- 18. Retrieve all the information of movies race and race2 in the dataset.
select * from movies_new where Movie_Name in ('Race','Race 2');

-- 19. Retrieve the names of all the thriller Bollywood movies in the dataset.
select * from movies_new where Genre in ('thriller');

-- 20. Retrieve the names and budget of all the Bollywood movies according to the highest budget to lowest budget in the dataset.
select Movie_Name,Budget from movies_new order by Budget desc;

-- 21. Retrieve the names and budget of top 5 Bollywood movies with highest budget in the dataset.
select Movie_Name,Budget from movies_new order by Budget desc limit 5;

-- 22. Retrieve the names of top 10 Bollywood movies with highest revenue generation in the dataset.
select Movie_Name from movies_new order by Revenue desc limit 10;

-- 23. Retrieve the names of top 5 movies of salman khan in the dataset.
select Movie_Name from movies_new where Lead_Star = 'Salman Khan' order by Revenue desc limit 5;

-- 24. Retrieve the names of top 5 floped movies in the dataset.
select Movie_Name from movies_new 
where Revenue is not null and Budget is not null
and (Revenue - Budget) < 0 order by (Revenue - Budget) < 0 limit 5;

-- 25. Retrieve the names of top 5 hit movies in the dataset.
select Movie_Name from movies_new 
where Revenue is not null and Budget is not null
and (Revenue - Budget) > 0 order by (Revenue - Budget) > 0 limit 5;

-- 26. Which is the second movie released on maximum screens.
select Movie_Name from movies_new
order by Number_of_Screens desc limit 1 offset 1;

-- 27. Which is the 10th movie with highest budget.
select Movie_Name from movies_new
order by Budget desc limit 1 offset 9;

-- 28. Which is the 2nd movie of Amitabh Bachchan with highest budget.
select Movie_Name from movies_new where Lead_Star = 'Amitabh Bachchan'
order by Budget desc limit 1 offset 1;

-- 29. Which are the flopped movies of Akshay Kumar.
select Movie_Name from movies_new where Lead_Star = 'Akshay Kumar'
and revenue is not null and budget is not null
and (Revenue - Budget) < 0;

-- 30. With which director Sharukh Khan have given the biggest hit movie
select Director from movies_new where Lead_Star ='Shahrukh Khan'
and (Revenue-Budget) > 0 order by (Revenue-Budget) > 0 limit 1;




