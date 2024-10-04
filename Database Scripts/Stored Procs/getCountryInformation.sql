
create or alter procedure getCountryInformation (@CountryId int)
as

select	C.Name as Country, convert(bit, case when CotD.Id is not null then 1 else 0 end) as CorrectAnswer, C.Population, C.LandKM2, string_agg(Co.Name, '/') as Continent
from	Country C inner join
		CountryContinent CC on CC.CountryId = C.Id inner join
		Continent Co on Co.Id = CC.ContinentId left join
		CountryOfTheDay CotD on CotD.CountryId = C.Id and CotD.Date = convert(date, getdate())
where	C.Id = @CountryId
group	by C.Name, case when CotD.Id is not null then 1 else 0 end, C.Population, C.LandKM2
