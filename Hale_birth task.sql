
--list of years 

Select distinct period 
from [lifeExpectancyAtBirth$]
As Years 
--List of Gender

Select distinct Dim1 
from [lifeExpectancyAtBirth$]
As Gender

--Total count of Male, Female per year 

select COUNT(Dim1), period
from [dbo].[lifeExpectancyAtBirth$] As count_of_Female
where Dim1='Female'
Group by Period;

select COUNT(Dim1), period
from [dbo].[lifeExpectancyAtBirth$] As count_of_Female
where Dim1='Male'
Group by Period;


--Total count of Male, Female per location

select  Location,COUNT(Dim1) as Female
from [dbo].[lifeExpectancyAtBirth$] As count_of_Female
where Dim1='Female'
Group by Location;

select COUNT(Dim1) as Male, Location
from [dbo].[lifeExpectancyAtBirth$] As count_of_Female
where Dim1='Male'
Group by Location;


--List of location

Select distinct Location 
from
[HALeWHOregionLifeExpectancyAtBi$]

select distinct Location,avg([Hale Expectency]) as Avg_hale_expectancy,avg([Life expectany]) as avg_Life_expectancy
from [dbo].[HALeWHOregionLifeExpectancyAtBi$]
Group by Location

--___________________________________________________________________________
select  Location,COUNT(Dim1) as Female
from [dbo].[lifeExpectancyAtBirth$] 
where Dim1=('Female')
Group by Location
inner join 
select Location, COUNT(Dim1) as Male 
from [dbo].[lifeExpectancyAtBirth$] 
where Dim1='Male'
Group by Location;
on Location 
