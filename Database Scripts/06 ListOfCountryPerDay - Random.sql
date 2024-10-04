drop table if exists #Dates, #RandomCountryOrder, #Result

declare @StartDate date = convert(date, getdate()),
		@EndDate   date = dateadd(day, (select count(*) from Country), convert(date, getdate()))

;with Dates as (
	select	@StartDate as newDate
	union	all
	select	dateadd(day, 1, newDate)
	from	Dates
	where	dateadd(day, 1, newDate) < @EndDate)

select	*, convert(int, null) as CountryId
into	#Result
from	Dates
option	(MAXRECURSION 1000)

declare @date date

declare c cursor for 
select newDate from #Result

open c  
fetch next from c into @date  

while @@FETCH_STATUS = 0  
begin
		
		--select * from #Result where newDate = @date

		declare @randC int = (select top 1 Id from Country where Id not in (select isnull(CountryId, -1) from #Result) order by newid())

		--select @randC

		update	R
		set		CountryId = @randC
		from	#Result R
		where	R.newDate = @date

		fetch next from c into @date  
end 

close c  
deallocate c

insert	into CountryOfTheDay
select	* 
from	#Result