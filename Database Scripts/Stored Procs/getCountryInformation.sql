
create or alter procedure getCountryInformation (@Country varchar(100))
as

select	C.Name as Country, C.Population, C.LandKM2, string_agg(Co.Name, '/') as 'Continent(s)'
from	Country C inner join
		CountryContinent CC on CC.CountryId = C.Id inner join
		Continent Co on Co.Id = CC.ContinentId
where	C.Name = @Country
group	by C.Name, C.Population, C.LandKM2
