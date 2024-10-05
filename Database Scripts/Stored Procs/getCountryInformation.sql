
create or alter procedure getCountryInformation (@CountryId int)
as

declare @Today date = convert(date, getdate())
declare @CountryOfTheDay int = (select CountryId from CountryOfTheDay where Date = @Today)

set @CountryId = case when @CountryId = -1 then @CountryOfTheDay else @CountryId end

select	C.Name as Country, C.Population, C.LandKM2, string_agg(Co.Name, '/') as Continent
from	Country C inner join
		CountryContinent CC on CC.CountryId = C.Id inner join
		Continent Co on Co.Id = CC.ContinentId
where	(@CountryId = C.Id)
group	by C.Name, C.Population, C.LandKM2
