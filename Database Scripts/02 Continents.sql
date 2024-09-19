insert into Continent
select * from 
(
select 'Asia' as Name
union select 'Africa'
union select 'Europe'
union select 'North America'
union select 'South America'
union select 'Australia/Oceania'
union select 'Antarctica'
) X order by 1