
create or alter procedure getCountryInformation (@CountryId int)
as

select	C.Name as Country, C.Population, C.LandKM2, string_agg(Co.Name, '/') as Continent
from	Country C inner join
		CountryContinent CC on CC.CountryId = C.Id inner join
		Continent Co on Co.Id = CC.ContinentId
where	C.Id = @CountryId
group	by C.Name, C.Population, C.LandKM2
