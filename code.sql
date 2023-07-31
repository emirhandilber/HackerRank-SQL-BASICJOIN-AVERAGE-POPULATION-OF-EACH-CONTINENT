select 
/*lets select the continent column in country table*/
COUNTRY.continent, 
/* select the population in the city table and take the average of the populations in the grouped in the below and lastly round the results in the nearest lower integer*/
floor(avg(CTY.population)) 
/* make the city table master table*/
from CITY CTY
/*Join the country table on the relationaled columns*/
join Country country on country.code=CTY.countrycode
group by COUNTRY.continent;