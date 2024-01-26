SELECT *
  FROM [Woman_management_position].[dbo].[Woman_position]

  --number of countries
  select count (distinct country)
  from [dbo].[Woman_position];

  --the country
  select distinct country
  from [dbo].[Woman_position]
  order by country desc

  --year with highest frquency time
  select distinct time, count(*) as frequency
  from [dbo].[Woman_position]
  group by time 
  order by frequency desc


  ---check the values of specific countries
  select * 
  from[dbo].[Woman_position]
  where country in ('Iran' , ' Congo' ,'Tanzania', 'Micronesia')


   --- data cleaning replace the double quotations
 UPDATE [dbo].[Woman_position]
 SET country = REPLACE(country, '"', '')
 WHERE country IN ('"Iran', '"Congo', '"Tanzania', '"Micronesia');

 --- data cleaning
 --separating year and value from value coloumn for some countries into time and value respectively
UPDATE [dbo].[Woman_position]
SET 
    time = LEFT(CONVERT(VARCHAR(255), value), 4),
    value = SUBSTRING(CONVERT(VARCHAR(255), value), 5, LEN(CONVERT(VARCHAR(255), value))-4)
WHERE
    country IN ('Iran', 'Congo', 'Tanzania', 'Micronesia');


  -- percentage of woman in position in 2020
  select top 10 *
  from [dbo].[Woman_position]
  where time = '2020'
  order by value desc

  -- country with highest women in position
  select top 10 country, MAX(value) as Max_value
  from [dbo].[Woman_position]
  group by country
  order by Max_value desc
 
 --what year did each country has the highest number of women in position q2
SELECT top 10 wp.*
FROM [dbo].[Woman_position] wp
JOIN (
    SELECT country, MAX(value) as Max_value
    FROM [dbo].[Woman_position]
    GROUP BY country
) max_values 
ON wp.country = max_values.country AND wp.value = max_values.Max_value
ORDER BY wp.value DESC;

--analyze the trend of women in managerial positions over time for countries whose value are greater than 50 
 
 select country, value
	from [dbo].[Woman_position]
	where country in (select distinct country
					from [dbo].[Woman_position]
					where value > 59);
--question 3
SELECT country, time, value
FROM [dbo].[Woman_position]
WHERE value > 59
GROUP BY country, time, value
ORDER BY country, time;

					

---Average Percentage of Women in Managerial Positions Over All Years:

SELECT top 10 country , round(AVG(value), 1) AS average_percentage
FROM [dbo].[Woman_position]
GROUP BY country
ORDER BY average_percentage DESC;

--Yearly Changes in Women's Representation for the same record year for Australia,United States, United Kingdom,Nigeria

with t1 as
	(SELECT time
	FROM [dbo].[Woman_position]
	WHERE country IN ('Australia', 'United States', 'United Kingdom','Nigeria')
	GROUP BY time
	HAVING COUNT(DISTINCT country) = 4
	),

t2 as
	(select country, time, MAX(value) as max_value
	from [dbo].[Woman_position]
	where country in ('Australia', 'United States', 'United Kingdom','Nigeria')
	)

(select *
from t2
join t1 on t1.time = t2.time);

SELECT country, time, MAX(value) as max_value
FROM [dbo].[Woman_position]
WHERE time IN ('2013', '2019') AND
      country IN ('Australia', 'United States', 'United Kingdom', 'Nigeria')
GROUP BY country, time;




	




	


 


 








  
 



