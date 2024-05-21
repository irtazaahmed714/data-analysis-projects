-- Selecting all columns from the 'population' table in the 'pop' database.
select * from pop..population


-- Selecting all columns from the 'population' table in the 'pop' database where the 'type' column
-- does not contain specified categories, effectively selecting only the rows that represent countries.
select * from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 
'Development Group', 'Special other', 'Income Group', 'Region', 'Subregion')


-- Selecting the population data for all age groups, but only for rows where the 'type' column 
-- does not include specified categories, effectively filters the results to only include countries.
select location, type, year, zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
twelve, thirteen, forteen, fifteen, sixteen, seventeen, eighteen, nineteen, twenty, twenty_one, twenty_two,
twenty_three, twenty_four, twenty_five, twenty_six, twenty_seven, twenty_eight, twenty_nine, thirty,
thirty_one, thirty_two, thirty_three, thirty_four, thirty_five, thirty_six, thirty_seven, thirty_eight,
thirty_nine, forty, forty_one, forty_two, forty_three, forty_four, forty_five, forty_six, forty_seven,
forty_eight, forty_nine, fifty, fifty_one, fifty_two, fifty_three, fifty_four, fifty_five, fifty_six,
fifty_seven, fifty_eight, fifty_nine, sixty, sixty_one, sixty_two, sixty_three, sixty_four, sixty_five,
sixty_six, sixty_seven, sixty_eight, sixty_nine, seventy, seventy_one, seventy_two, seventy_three, seventy_four,
seventy_five, seventy_six, seventy_seven, seventy_eight, seventy_nine, eighty, eighty_one, eighty_two, eighty_three,
eighty_four, eighty_five, eighty_six, eighty_seven, eighty_eight, eighty_nine, ninety, ninety_one, ninety_two,
ninety_three, ninety_four, ninety_five, ninety_six, ninety_seven, ninety_eight, ninety_nine, hundred_plus
from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')



-- Calculating the total population of each country for each year across all age groups. Results
-- are ordered by location and year.
select location, year, (zero+ one+ two+ three+ four+ five+ six+ seven+ eight+ nine+ ten+ eleven+
twelve+ thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen+ twenty+ twenty_one+ twenty_two+
twenty_three+ twenty_four+ twenty_five+ twenty_six+ twenty_seven+ twenty_eight+ twenty_nine+ thirty+
thirty_one+ thirty_two+ thirty_three+ thirty_four+ thirty_five+ thirty_six+ thirty_seven+ thirty_eight+
thirty_nine+ forty+ forty_one+ forty_two+ forty_three+ forty_four+ forty_five+ forty_six+ forty_seven+
forty_eight+ forty_nine+ fifty+ fifty_one+ fifty_two+ fifty_three+ fifty_four+ fifty_five+ fifty_six+
fifty_seven+ fifty_eight+ fifty_nine+ sixty+ sixty_one+ sixty_two+ sixty_three+ sixty_four+ sixty_five+
sixty_six+ sixty_seven+ sixty_eight+ sixty_nine+ seventy+ seventy_one+ seventy_two+ seventy_three+ seventy_four+
seventy_five+ seventy_six+ seventy_seven+ seventy_eight+ seventy_nine+ eighty+ eighty_one+ eighty_two+ eighty_three+
eighty_four+ eighty_five+ eighty_six+ eighty_seven+ eighty_eight+ eighty_nine+ ninety+ ninety_one+ ninety_two+
ninety_three+ ninety_four+ ninety_five+ ninety_six+ ninety_seven+ ninety_eight+ ninety_nine+ hundred_plus) as 
total_population
from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
order by location, year



-- Calculating the maximum total population for each country for any year between 1950-2021.
-- Results are grouped by location and ordered by maximum total population in descending order.
select location, max(zero+ one+ two+ three+ four+ five+ six+ seven+ eight+ nine+ ten+ eleven+
twelve+ thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen+ twenty+ twenty_one+ twenty_two+
twenty_three+ twenty_four+ twenty_five+ twenty_six+ twenty_seven+ twenty_eight+ twenty_nine+ thirty+
thirty_one+ thirty_two+ thirty_three+ thirty_four+ thirty_five+ thirty_six+ thirty_seven+ thirty_eight+
thirty_nine+ forty+ forty_one+ forty_two+ forty_three+ forty_four+ forty_five+ forty_six+ forty_seven+
forty_eight+ forty_nine+ fifty+ fifty_one+ fifty_two+ fifty_three+ fifty_four+ fifty_five+ fifty_six+
fifty_seven+ fifty_eight+ fifty_nine+ sixty+ sixty_one+ sixty_two+ sixty_three+ sixty_four+ sixty_five+
sixty_six+ sixty_seven+ sixty_eight+ sixty_nine+ seventy+ seventy_one+ seventy_two+ seventy_three+ seventy_four+
seventy_five+ seventy_six+ seventy_seven+ seventy_eight+ seventy_nine+ eighty+ eighty_one+ eighty_two+ eighty_three+
eighty_four+ eighty_five+ eighty_six+ eighty_seven+ eighty_eight+ eighty_nine+ ninety+ ninety_one+ ninety_two+
ninety_three+ ninety_four+ ninety_five+ ninety_six+ ninety_seven+ ninety_eight+ ninety_nine+ hundred_plus) as 
max_total_population
from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
group by location
order by max_total_population desc



-- Calculating the minimum total population for each country for any year between 1950-2021.
-- Results are grouped by location and ordered by minimum total population in ascending order.
select location, min(zero+ one+ two+ three+ four+ five+ six+ seven+ eight+ nine+ ten+ eleven+
twelve+ thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen+ twenty+ twenty_one+ twenty_two+
twenty_three+ twenty_four+ twenty_five+ twenty_six+ twenty_seven+ twenty_eight+ twenty_nine+ thirty+
thirty_one+ thirty_two+ thirty_three+ thirty_four+ thirty_five+ thirty_six+ thirty_seven+ thirty_eight+
thirty_nine+ forty+ forty_one+ forty_two+ forty_three+ forty_four+ forty_five+ forty_six+ forty_seven+
forty_eight+ forty_nine+ fifty+ fifty_one+ fifty_two+ fifty_three+ fifty_four+ fifty_five+ fifty_six+
fifty_seven+ fifty_eight+ fifty_nine+ sixty+ sixty_one+ sixty_two+ sixty_three+ sixty_four+ sixty_five+
sixty_six+ sixty_seven+ sixty_eight+ sixty_nine+ seventy+ seventy_one+ seventy_two+ seventy_three+ seventy_four+
seventy_five+ seventy_six+ seventy_seven+ seventy_eight+ seventy_nine+ eighty+ eighty_one+ eighty_two+ eighty_three+
eighty_four+ eighty_five+ eighty_six+ eighty_seven+ eighty_eight+ eighty_nine+ ninety+ ninety_one+ ninety_two+
ninety_three+ ninety_four+ ninety_five+ ninety_six+ ninety_seven+ ninety_eight+ ninety_nine+ hundred_plus) as 
min_total_population
from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
group by location
order by min_total_population asc



-- Calculating the average total population for each country. Results are grouped by location
-- and ordered by average total population in descending order.
select location, avg(zero+ one+ two+ three+ four+ five+ six+ seven+ eight+ nine+ ten+ eleven+
twelve+ thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen+ twenty+ twenty_one+ twenty_two+
twenty_three+ twenty_four+ twenty_five+ twenty_six+ twenty_seven+ twenty_eight+ twenty_nine+ thirty+
thirty_one+ thirty_two+ thirty_three+ thirty_four+ thirty_five+ thirty_six+ thirty_seven+ thirty_eight+
thirty_nine+ forty+ forty_one+ forty_two+ forty_three+ forty_four+ forty_five+ forty_six+ forty_seven+
forty_eight+ forty_nine+ fifty+ fifty_one+ fifty_two+ fifty_three+ fifty_four+ fifty_five+ fifty_six+
fifty_seven+ fifty_eight+ fifty_nine+ sixty+ sixty_one+ sixty_two+ sixty_three+ sixty_four+ sixty_five+
sixty_six+ sixty_seven+ sixty_eight+ sixty_nine+ seventy+ seventy_one+ seventy_two+ seventy_three+ seventy_four+
seventy_five+ seventy_six+ seventy_seven+ seventy_eight+ seventy_nine+ eighty+ eighty_one+ eighty_two+ eighty_three+
eighty_four+ eighty_five+ eighty_six+ eighty_seven+ eighty_eight+ eighty_nine+ ninety+ ninety_one+ ninety_two+
ninety_three+ ninety_four+ ninety_five+ ninety_six+ ninety_seven+ ninety_eight+ ninety_nine+ hundred_plus) as 
average_total_population
from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
group by location
order by average_total_population desc



-- Calculating the total population for each country from 1950-2021. Results are
-- grouped by location and ordered by total poulation in descending order
select location, sum(zero+ one+ two+ three+ four+ five+ six+ seven+ eight+ nine+ ten+ eleven+
twelve+ thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen+ twenty+ twenty_one+ twenty_two+
twenty_three+ twenty_four+ twenty_five+ twenty_six+ twenty_seven+ twenty_eight+ twenty_nine+ thirty+
thirty_one+ thirty_two+ thirty_three+ thirty_four+ thirty_five+ thirty_six+ thirty_seven+ thirty_eight+
thirty_nine+ forty+ forty_one+ forty_two+ forty_three+ forty_four+ forty_five+ forty_six+ forty_seven+
forty_eight+ forty_nine+ fifty+ fifty_one+ fifty_two+ fifty_three+ fifty_four+ fifty_five+ fifty_six+
fifty_seven+ fifty_eight+ fifty_nine+ sixty+ sixty_one+ sixty_two+ sixty_three+ sixty_four+ sixty_five+
sixty_six+ sixty_seven+ sixty_eight+ sixty_nine+ seventy+ seventy_one+ seventy_two+ seventy_three+ seventy_four+
seventy_five+ seventy_six+ seventy_seven+ seventy_eight+ seventy_nine+ eighty+ eighty_one+ eighty_two+ eighty_three+
eighty_four+ eighty_five+ eighty_six+ eighty_seven+ eighty_eight+ eighty_nine+ ninety+ ninety_one+ ninety_two+
ninety_three+ ninety_four+ ninety_five+ ninety_six+ ninety_seven+ ninety_eight+ ninety_nine+ hundred_plus) as 
sum_total_population
from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
group by location
order by sum_total_population desc



-- Using CTE (Common Table Expression) to find the percent change in
-- total population from previous year for all countries
with percent_change_from_previous_year_total_population (location, year, total_population) as
(
select location, year, (zero+ one+ two+ three+ four+ five+ six+ seven+ eight+ nine+ ten+ eleven+
twelve+ thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen+ twenty+ twenty_one+ twenty_two+
twenty_three+ twenty_four+ twenty_five+ twenty_six+ twenty_seven+ twenty_eight+ twenty_nine+ thirty+
thirty_one+ thirty_two+ thirty_three+ thirty_four+ thirty_five+ thirty_six+ thirty_seven+ thirty_eight+
thirty_nine+ forty+ forty_one+ forty_two+ forty_three+ forty_four+ forty_five+ forty_six+ forty_seven+
forty_eight+ forty_nine+ fifty+ fifty_one+ fifty_two+ fifty_three+ fifty_four+ fifty_five+ fifty_six+
fifty_seven+ fifty_eight+ fifty_nine+ sixty+ sixty_one+ sixty_two+ sixty_three+ sixty_four+ sixty_five+
sixty_six+ sixty_seven+ sixty_eight+ sixty_nine+ seventy+ seventy_one+ seventy_two+ seventy_three+ seventy_four+
seventy_five+ seventy_six+ seventy_seven+ seventy_eight+ seventy_nine+ eighty+ eighty_one+ eighty_two+ eighty_three+
eighty_four+ eighty_five+ eighty_six+ eighty_seven+ eighty_eight+ eighty_nine+ ninety+ ninety_one+ ninety_two+
ninety_three+ ninety_four+ ninety_five+ ninety_six+ ninety_seven+ ninety_eight+ ninety_nine+ hundred_plus) as
total_population

from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *, (((total_population - lag(total_population) over (partition by location order by year, location)) / 
lag(total_population) over (partition by location order by year, location))*100) as percent_change_from_previous_year from
percent_change_from_previous_year_total_population




-- Checking for maximum (overall) percent change in population from previous year of all countries from 1950-2021.
-- Results are grouped by location and order by maximum percent change in population from previous year in
-- descending order
with max_percent_change_from_previous_year_total_population_overall (location, total_population) as
(
select location, (zero + one + two + three + four + five + six + seven + eight + nine + ten + eleven +
    twelve + thirteen + forteen + fifteen + sixteen + seventeen + eighteen + nineteen + twenty + twenty_one +
	twenty_two + twenty_three + twenty_four + twenty_five + twenty_six + twenty_seven + twenty_eight + twenty_nine +
	thirty + thirty_one + thirty_two + thirty_three + thirty_four + thirty_five + thirty_six + thirty_seven + 
	thirty_eight + thirty_nine + forty + forty_one + forty_two + forty_three + forty_four + forty_five + forty_six
	+ forty_seven + forty_eight + forty_nine + fifty + fifty_one + fifty_two + fifty_three + fifty_four + fifty_five
	+ fifty_six + fifty_seven + fifty_eight + fifty_nine + sixty + sixty_one + sixty_two + sixty_three + sixty_four 
	+ sixty_five + sixty_six + sixty_seven + sixty_eight + sixty_nine + seventy + seventy_one + seventy_two + 
	seventy_three + seventy_four + seventy_five + seventy_six + seventy_seven + seventy_eight + seventy_nine + 
	eighty + eighty_one + eighty_two + eighty_three + eighty_four + eighty_five + eighty_six + eighty_seven + 
	eighty_eight + eighty_nine + ninety + ninety_one + ninety_two + ninety_three + ninety_four + ninety_five + 
	ninety_six + ninety_seven + ninety_eight + ninety_nine + hundred_plus) as total_population
from pop..population
where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select location, max(((total_population - lag_total_population) / lag_total_population) * 100) 
as max_percent_change_from_previous_year_overall from (
select location, total_population, lag(total_population) over (partition by location order by location) 
as lag_total_population from max_percent_change_from_previous_year_total_population_overall
) as subquery
group by location
order by max_percent_change_from_previous_year_overall desc




-- Checking for maximum percent change in total population from previous year of all countries for all years.
-- Results are grouped by location and ordered by maximum percent change in population from previous year in
-- descending order
with max_percent_change_from_previous_year_total_population_all_years (location, year, total_population) as
(
select location, year, (zero + one + two + three + four + five + six + seven + eight + nine + ten + eleven +
    twelve + thirteen + forteen + fifteen + sixteen + seventeen + eighteen + nineteen + twenty + twenty_one +
	twenty_two + twenty_three + twenty_four + twenty_five + twenty_six + twenty_seven + twenty_eight + twenty_nine +
	thirty + thirty_one + thirty_two + thirty_three + thirty_four + thirty_five + thirty_six + thirty_seven + 
	thirty_eight + thirty_nine + forty + forty_one + forty_two + forty_three + forty_four + forty_five + forty_six
	+ forty_seven + forty_eight + forty_nine + fifty + fifty_one + fifty_two + fifty_three + fifty_four + fifty_five
	+ fifty_six + fifty_seven + fifty_eight + fifty_nine + sixty + sixty_one + sixty_two + sixty_three + sixty_four 
	+ sixty_five + sixty_six + sixty_seven + sixty_eight + sixty_nine + seventy + seventy_one + seventy_two + 
	seventy_three + seventy_four + seventy_five + seventy_six + seventy_seven + seventy_eight + seventy_nine + 
	eighty + eighty_one + eighty_two + eighty_three + eighty_four + eighty_five + eighty_six + eighty_seven + 
	eighty_eight + eighty_nine + ninety + ninety_one + ninety_two + ninety_three + ninety_four + ninety_five + 
	ninety_six + ninety_seven + ninety_eight + ninety_nine + hundred_plus) as total_population
from pop..population
where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select location, year, max(((total_population - lag_total_population) / lag_total_population) * 100) 
as max_percent_change_from_previous_year_all_years
from (
select location, year, total_population, lag(total_population) over (partition by location order by location, year) 
as lag_total_population from max_percent_change_from_previous_year_total_population_all_years
) as subquery
group by location, year
order by max_percent_change_from_previous_year_all_years desc




-- Checking for minimum percentage change in population from previous year of all countries between 1950-2021.
-- Results are grouped by location and year and ordered by the minimum percentage change in population
-- from previous year.
with min_percent_change_from_previous_year_total_population_all_years (location, year, total_population) as
(
select location, year, (zero + one + two + three + four + five + six + seven + eight + nine + ten + eleven +
    twelve + thirteen + forteen + fifteen + sixteen + seventeen + eighteen + nineteen + twenty + twenty_one +
	twenty_two + twenty_three + twenty_four + twenty_five + twenty_six + twenty_seven + twenty_eight + twenty_nine +
	thirty + thirty_one + thirty_two + thirty_three + thirty_four + thirty_five + thirty_six + thirty_seven + 
	thirty_eight + thirty_nine + forty + forty_one + forty_two + forty_three + forty_four + forty_five + forty_six
	+ forty_seven + forty_eight + forty_nine + fifty + fifty_one + fifty_two + fifty_three + fifty_four + fifty_five
	+ fifty_six + fifty_seven + fifty_eight + fifty_nine + sixty + sixty_one + sixty_two + sixty_three + sixty_four 
	+ sixty_five + sixty_six + sixty_seven + sixty_eight + sixty_nine + seventy + seventy_one + seventy_two + 
	seventy_three + seventy_four + seventy_five + seventy_six + seventy_seven + seventy_eight + seventy_nine + 
	eighty + eighty_one + eighty_two + eighty_three + eighty_four + eighty_five + eighty_six + eighty_seven + 
	eighty_eight + eighty_nine + ninety + ninety_one + ninety_two + ninety_three + ninety_four + ninety_five + 
	ninety_six + ninety_seven + ninety_eight + ninety_nine + hundred_plus) as total_population
from pop..population
where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select location, year, min(((total_population - lag_total_population) / lag_total_population) * 100) 
as min_percent_change_from_previous_year_all_years
from (
select location, year, total_population, lag(total_population) over (partition by location order by location, year) 
as lag_total_population from min_percent_change_from_previous_year_total_population_all_years
) as subquery
group by location, year
order by min_percent_change_from_previous_year_all_years




-- Checking the infant population and its percent change from previous year for all years. 
-- Results are ordered by the number of babies born in any particular year for evaluating
-- the countries with least birth rates 
with infant_population_evaluation (location, year, zero) as
(
select location, year, zero

from pop..population 
  where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *, (((zero - lag(zero) over (partition by location order by year, location)) / 
lag(zero) over (partition by location order by year, location))*100) as infant_percent_change_from_previous_year from
infant_population_evaluation
order by zero




-- Checking the infant population and percent change in infant population from previous year for all years. 
-- Results are then ordered by the percent change in infant population from previous year
with infant_population_evaluation (location, year, zero) as
(
select location, year, zero

from pop..population 
  where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *, (((zero - lag(zero) over (partition by location order by year, location)) / 
lag(zero) over (partition by location order by year, location))*100) as infant_percent_change_from_previous_year from
infant_population_evaluation
order by infant_percent_change_from_previous_year




-- Checking the infant population and percent change in infant population from previous year
-- for US. Results are then ordered by location and year
with infant_population_evaluation (location, year, zero) as
(
select location, year, zero

from pop..population 
  where location = 'United States Of America')

select *, (((zero - lag(zero) over (partition by location order by year, location)) / 
lag(zero) over (partition by location order by year, location))*100) as infant_percent_change_from_previous_year from
infant_population_evaluation
order by location, year




-- Calculating the maximum infant population for all countries and all years.
-- Results are grouped by location and year and ordered by the maximum infant population count in descending order.
select location, year, max (zero) as max_infant_population

from pop..population 
  where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
  group by location, year

order by max_infant_population desc





-- Checking the countries for the maximum infant population in any specific year
select location, max (zero) as max_infant_population

from pop..population 
  where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
  group by location

order by max_infant_population desc




-- Calculating minimum infant population count for all countries and all years.
-- Results are grouped by location and year and ordered by the minimum infant population count in ascending order.
select location, year, min (zero) as min_infant_population
from pop..population 
  where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
  group by location, year
order by min_infant_population



-- Checking the countries with the minimum infant population in any year
select location, min (zero) as min_infant_population
from pop..population 
  where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
  group by location
order by min_infant_population




-- Checking the teenage population and its percent change from previous year for all years
with teenage_population_evaluation (location, year, teenage_population) as
(
select location, year, (thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen) as teenage_population

from pop..population 
  where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *, (((teenage_population - lag(teenage_population) over (partition by location order by year, location)) / 
lag(teenage_population) over (partition by location order by year, location))*100) as teenage_percent_change_from_previous_year from
teenage_population_evaluation





-- Checking what percentage of total population do teens make in any country and ordering by it in descending order
with teenage_population_percent_of_total_population (location, year, teenage_population, total_population) as
(
select location, year, (thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen) as teenage_population,
(zero + one + two + three + four + five + six + seven + eight + nine + ten + eleven +
    twelve + thirteen + forteen + fifteen + sixteen + seventeen + eighteen + nineteen + twenty + twenty_one +
	twenty_two + twenty_three + twenty_four + twenty_five + twenty_six + twenty_seven + twenty_eight + twenty_nine +
	thirty + thirty_one + thirty_two + thirty_three + thirty_four + thirty_five + thirty_six + thirty_seven + 
	thirty_eight + thirty_nine + forty + forty_one + forty_two + forty_three + forty_four + forty_five + forty_six
	+ forty_seven + forty_eight + forty_nine + fifty + fifty_one + fifty_two + fifty_three + fifty_four + fifty_five
	+ fifty_six + fifty_seven + fifty_eight + fifty_nine + sixty + sixty_one + sixty_two + sixty_three + sixty_four 
	+ sixty_five + sixty_six + sixty_seven + sixty_eight + sixty_nine + seventy + seventy_one + seventy_two + 
	seventy_three + seventy_four + seventy_five + seventy_six + seventy_seven + seventy_eight + seventy_nine + 
	eighty + eighty_one + eighty_two + eighty_three + eighty_four + eighty_five + eighty_six + eighty_seven + 
	eighty_eight + eighty_nine + ninety + ninety_one + ninety_two + ninety_three + ninety_four + ninety_five + 
	ninety_six + ninety_seven + ninety_eight + ninety_nine + hundred_plus) as total_population

from pop..population 
  where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *, ((teenage_population/total_population)*100) as teenage_population_percent_of_total_pop from
teenage_population_percent_of_total_population
order by teenage_population_percent_of_total_pop desc




-- Checking for under twenty population and the percentage change in it from previous year
with under_twenty_population_change_from_previous_year (location, year, under_twenty_population) as
(
select location, year, (zero+ one+ two+ three+ four+ five+ six+ seven+ eight+ nine+ ten+ eleven+
twelve+ thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen) as under_twenty_population

from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *, (((under_twenty_population - lag(under_twenty_population)
over (partition by location order by year, location)) / 
lag(under_twenty_population) over (partition by location order by year, location))*100) as
under_twenty_population_percent_change_from_previous_year from
under_twenty_population_change_from_previous_year





-- Checking for 20-40 population and the percentage change in it from previous year
with twenty_to_forty_population_change_from_previous_yr (location, year, twenty_to_forty_population) as
(
select location, year, (twenty+ twenty_one+ twenty_two+
twenty_three+ twenty_four+ twenty_five+ twenty_six+ twenty_seven+ twenty_eight+ twenty_nine+ thirty+
thirty_one+ thirty_two+ thirty_three+ thirty_four+ thirty_five+ thirty_six+ thirty_seven+ thirty_eight+
thirty_nine+ forty) as twenty_to_forty_population

from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *, (((twenty_to_forty_population - lag(twenty_to_forty_population)
over (partition by location order by year, location)) / 
lag(twenty_to_forty_population) over (partition by location order by year, location))*100) as
twenty_to_forty_population_percent_change_from_previous_year from
twenty_to_forty_population_change_from_previous_yr




-- Checking for 41-60 population and the percentage change in it from previous year
with forty_one_to_sixty (location, year, forty_one_to_sixty_population) as
(
select location, year, (forty_one+ forty_two+ forty_three+ forty_four+ forty_five+ forty_six+ forty_seven+
forty_eight+ forty_nine+ fifty+ fifty_one+ fifty_two+ fifty_three+ fifty_four+ fifty_five+ fifty_six+
fifty_seven+ fifty_eight+ fifty_nine+ sixty) as forty_one_to_sixty_population

from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *, (((forty_one_to_sixty_population - lag(forty_one_to_sixty_population) over 
(partition by location order by year, location)) / lag(forty_one_to_sixty_population) over 
(partition by location order by year, location))*100) as
forty_one_to_sixty_population_percent_change_from_previous_year from forty_one_to_sixty




-- Checking for 61-80 population and the percentage change in it from previous year
with sixty_one_to_eighty (location, year, sixty_one_to_eighty_population) as
(
select location, year, (sixty_one+ sixty_two+ sixty_three+ sixty_four+ sixty_five+
sixty_six+ sixty_seven+ sixty_eight+ sixty_nine+ seventy+ seventy_one+ seventy_two+ seventy_three+ seventy_four+
seventy_five+ seventy_six+ seventy_seven+ seventy_eight+ seventy_nine+ eighty) as sixty_one_to_eighty_population

from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *, (((sixty_one_to_eighty_population - lag(sixty_one_to_eighty_population) over 
(partition by location order by year, location)) / lag(sixty_one_to_eighty_population) over 
(partition by location order by year, location))*100) as
sixty_one_to_eighty_population_percent_change_from_previous_year from sixty_one_to_eighty



-- Checking for 81-100+ population and the percentage change in it from previous year
with eighty_one_to_hundred_plus (location, year, eighty_one_to_hundred_plus_population) as
(
select location, year, (eighty_one+ eighty_two+ eighty_three+
eighty_four+ eighty_five+ eighty_six+ eighty_seven+ eighty_eight+ eighty_nine+ ninety+ ninety_one+ ninety_two+
ninety_three+ ninety_four+ ninety_five+ ninety_six+ ninety_seven+ ninety_eight+ ninety_nine+ hundred_plus) 
as eighty_one_to_hundred_plus_population

from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *, (((eighty_one_to_hundred_plus_population - lag(eighty_one_to_hundred_plus_population) over 
(partition by location order by year, location)) / lag(eighty_one_to_hundred_plus_population) over 
(partition by location order by year, location))*100) as
eighty_one_to_hundred_plus_population_percent_change_from_previous_year from eighty_one_to_hundred_plus





-- Checking population by income groups
drop table if exists #total_population_wrt_income_groups_table
create table #total_population_wrt_income_groups_table
(location varchar(100), year numeric,
total_population_wrt_income_groups decimal(20,4))

insert into #total_population_wrt_income_groups_table

select location, year,
(zero+ one+ two+ three+ four+ five+ six+ seven+ eight+ nine+ ten+ eleven+
twelve+ thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen+ twenty+ twenty_one+ twenty_two+
twenty_three+ twenty_four+ twenty_five+ twenty_six+ twenty_seven+ twenty_eight+ twenty_nine+ thirty+
thirty_one+ thirty_two+ thirty_three+ thirty_four+ thirty_five+ thirty_six+ thirty_seven+ thirty_eight+
thirty_nine+ forty+ forty_one+ forty_two+ forty_three+ forty_four+ forty_five+ forty_six+ forty_seven+
forty_eight+ forty_nine+ fifty+ fifty_one+ fifty_two+ fifty_three+ fifty_four+ fifty_five+ fifty_six+
fifty_seven+ fifty_eight+ fifty_nine+ sixty+ sixty_one+ sixty_two+ sixty_three+ sixty_four+ sixty_five+
sixty_six+ sixty_seven+ sixty_eight+ sixty_nine+ seventy+ seventy_one+ seventy_two+ seventy_three+ seventy_four+
seventy_five+ seventy_six+ seventy_seven+ seventy_eight+ seventy_nine+ eighty+ eighty_one+ eighty_two+ eighty_three+
eighty_four+ eighty_five+ eighty_six+ eighty_seven+ eighty_eight+ eighty_nine+ ninety+ ninety_one+ ninety_two+
ninety_three+ ninety_four+ ninety_five+ ninety_six+ ninety_seven+ ninety_eight+ ninety_nine+ hundred_plus) as 
total_population
from pop..population where type = 'Income Group'

select *, (((total_population_wrt_income_groups - lag(total_population_wrt_income_groups) over (partition by location order by year, location)) / 
lag(total_population_wrt_income_groups) over (partition by location order by year, location))*100) as pop_percent_change_from_previous_year from
#total_population_wrt_income_groups_table





-- Checking max population by income groups and arranging in descending order
select location, max
(zero+ one+ two+ three+ four+ five+ six+ seven+ eight+ nine+ ten+ eleven+
twelve+ thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen+ twenty+ twenty_one+ twenty_two+
twenty_three+ twenty_four+ twenty_five+ twenty_six+ twenty_seven+ twenty_eight+ twenty_nine+ thirty+
thirty_one+ thirty_two+ thirty_three+ thirty_four+ thirty_five+ thirty_six+ thirty_seven+ thirty_eight+
thirty_nine+ forty+ forty_one+ forty_two+ forty_three+ forty_four+ forty_five+ forty_six+ forty_seven+
forty_eight+ forty_nine+ fifty+ fifty_one+ fifty_two+ fifty_three+ fifty_four+ fifty_five+ fifty_six+
fifty_seven+ fifty_eight+ fifty_nine+ sixty+ sixty_one+ sixty_two+ sixty_three+ sixty_four+ sixty_five+
sixty_six+ sixty_seven+ sixty_eight+ sixty_nine+ seventy+ seventy_one+ seventy_two+ seventy_three+ seventy_four+
seventy_five+ seventy_six+ seventy_seven+ seventy_eight+ seventy_nine+ eighty+ eighty_one+ eighty_two+ eighty_three+
eighty_four+ eighty_five+ eighty_six+ eighty_seven+ eighty_eight+ eighty_nine+ ninety+ ninety_one+ ninety_two+
ninety_three+ ninety_four+ ninety_five+ ninety_six+ ninety_seven+ ninety_eight+ ninety_nine+ hundred_plus) as 
max_total_population_wrt_income_groups
from pop..population where type = 'Income Group'
group by location
order by max_total_population_wrt_income_groups desc





-- Checking max population by income groups and arranging in descending order.
-- Also checking the year for the max population

select location, year, max
(zero+ one+ two+ three+ four+ five+ six+ seven+ eight+ nine+ ten+ eleven+
twelve+ thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen+ twenty+ twenty_one+ twenty_two+
twenty_three+ twenty_four+ twenty_five+ twenty_six+ twenty_seven+ twenty_eight+ twenty_nine+ thirty+
thirty_one+ thirty_two+ thirty_three+ thirty_four+ thirty_five+ thirty_six+ thirty_seven+ thirty_eight+
thirty_nine+ forty+ forty_one+ forty_two+ forty_three+ forty_four+ forty_five+ forty_six+ forty_seven+
forty_eight+ forty_nine+ fifty+ fifty_one+ fifty_two+ fifty_three+ fifty_four+ fifty_five+ fifty_six+
fifty_seven+ fifty_eight+ fifty_nine+ sixty+ sixty_one+ sixty_two+ sixty_three+ sixty_four+ sixty_five+
sixty_six+ sixty_seven+ sixty_eight+ sixty_nine+ seventy+ seventy_one+ seventy_two+ seventy_three+ seventy_four+
seventy_five+ seventy_six+ seventy_seven+ seventy_eight+ seventy_nine+ eighty+ eighty_one+ eighty_two+ eighty_three+
eighty_four+ eighty_five+ eighty_six+ eighty_seven+ eighty_eight+ eighty_nine+ ninety+ ninety_one+ ninety_two+
ninety_three+ ninety_four+ ninety_five+ ninety_six+ ninety_seven+ ninety_eight+ ninety_nine+ hundred_plus) as 
max_total_population_wrt_income_groups
from pop..population where type = 'Income Group'
group by location, year
order by max_total_population_wrt_income_groups desc



-- Checking teen population and percentage change in teen population from previous year by income groups.
-- Arranging the results in descending order.

drop table if exists #teenage_population_table_wrt_income_groups
create table #teenage_population_table_wrt_income_groups
(location varchar(100), year numeric, teenage_population_wrt_income_groups decimal(20,4))

insert into #teenage_population_table_wrt_income_groups

select location, year,
(thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen) as 
teenage_population_wrt_income_groups
from pop..population
  where type = 'Income Group'

select *, (((teenage_population_wrt_income_groups - lag(teenage_population_wrt_income_groups)
over (partition by location order by year, location)) / 
lag(teenage_population_wrt_income_groups) over (partition by location order by year, location))*100)
as teenage_percent_change_wrt_income_groups_from_previous_year from
#teenage_population_table_wrt_income_groups
order by teenage_population_wrt_income_groups desc




-- Checking infant population and percentage change in infant population from previous year by income groups.
-- Arranging the results in descending order.
drop table if exists #infant_population_wrt_income_groups_table
create table #infant_population_wrt_income_groups_table
(location varchar(100), year numeric, infant_population_wrt_income_groups decimal(20,4))

insert into #infant_population_wrt_income_groups_table

select location, year, zero as infant_population_wrt_income_groups
from pop..population 
  where type = 'Income Group'

select *, (((infant_population_wrt_income_groups - lag(infant_population_wrt_income_groups)
over (partition by location order by year, location)) / 
lag(infant_population_wrt_income_groups) over (partition by location order by year, location))*100) as
infant_percent_change_wrt_income_groups_from_previous_year from
#infant_population_wrt_income_groups_table
order by infant_percent_change_wrt_income_groups_from_previous_year desc





-- Checking under twenty population and percentage change in under twenty population from previous year
-- by income groups. Arranging the results in descending order.
select location, sum (zero+ one+ two+ three+ four+ five+ six+ seven+ eight+ nine+ ten+ eleven+
twelve+ thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen) as under_twenty_population
from pop..population where type = 'Income Group'
group by location
order by under_twenty_population desc

drop table if exists #twenty_to_forty_population_table
create table #twenty_to_forty_population_table
(location varchar(100), year numeric, twenty_to_forty_population decimal(20,4))





-- Checking 20-40 population and percentage change in 20-40 population from previous year
-- by income groups. Arranging the results in descending order.
insert into #twenty_to_forty_population_table

select location, year, (twenty+ twenty_one+ twenty_two+
twenty_three+ twenty_four+ twenty_five+ twenty_six+ twenty_seven+ twenty_eight+ twenty_nine+ thirty+
thirty_one+ thirty_two+ thirty_three+ thirty_four+ thirty_five+ thirty_six+ thirty_seven+ thirty_eight+
thirty_nine+ forty) as twenty_to_forty_population
from pop..population where type = 'Income Group'

select *, (((twenty_to_forty_population - lag(twenty_to_forty_population) over (partition by location order by year, 
location)) / lag(twenty_to_forty_population) over (partition by location order by year, location))*100) 
as twenty_to_forty_population_population_percent_change_from_previous_year from
#twenty_to_forty_population_table





-- Checking 41-60 population and percentage change in 41-60 population from previous year
-- by income groups. Arranging the results in descending order.
drop table if exists #forty_one_to_sixty_population_table
create table #forty_one_to_sixty_population_table
(location varchar(100), year numeric, forty_one_to_sixty_population decimal(20,4))

insert into #forty_one_to_sixty_population_table

select location, year, (forty_one+ forty_two+ forty_three+ forty_four+ forty_five+ forty_six+ forty_seven+
forty_eight+ forty_nine+ fifty+ fifty_one+ fifty_two+ fifty_three+ fifty_four+ fifty_five+ fifty_six+
fifty_seven+ fifty_eight+ fifty_nine+ sixty) as forty_one_to_sixty_population
from pop..population where type = 'Income Group'

select *, (((forty_one_to_sixty_population - lag(forty_one_to_sixty_population) over 
(partition by location order by year, location)) / lag(forty_one_to_sixty_population) over 
(partition by location order by year, location))*100) 
as forty_one_to_sixty_population_percent_change_from_previous_year from
#forty_one_to_sixty_population_table





-- Finding the maximum population count for the age group 61-80 among different income groups.
-- Results are grouped by location.
select location, max (sixty_one+ sixty_two+ sixty_three+ sixty_four+ sixty_five+
sixty_six+ sixty_seven+ sixty_eight+ sixty_nine+ seventy+ seventy_one+ seventy_two+ seventy_three+ seventy_four+
seventy_five+ seventy_six+ seventy_seven+ seventy_eight+ seventy_nine+ eighty) as max_sixty_one_to_eighty_population

from pop..population where type = 'Income Group'
group by location 





-- Calculating the total population for the age group 61-80 for each location
-- and year among different income groups. Results are grouped by location and year, and
-- ordered by the population count in the age group 61-80 in descending order.
select location, year, sum(eighty_one+ eighty_two+ eighty_three+
eighty_four+ eighty_five+ eighty_six+ eighty_seven+ eighty_eight+ eighty_nine+ ninety+ ninety_one+ ninety_two+
ninety_three+ ninety_four+ ninety_five+ ninety_six+ ninety_seven+ ninety_eight+ ninety_nine+ hundred_plus)
as sixty_one_to_eighty_population
from pop..population where type = 'Income Group'
group by location, year
order by sixty_one_to_eighty_population desc






-- Calculating the percentage change in total population for each location over a five-year interval.
drop table if exists #population_change_five_years_table
create table #population_change_five_years_table
(location varchar(100), year numeric, total_population_five_years decimal(20,4))

insert into #population_change_five_years_table
select location, year,
(zero+ one+ two+ three+ four+ five+ six+ seven+ eight+ nine+ ten+ eleven+
twelve+ thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen+ twenty+ twenty_one+ twenty_two+
twenty_three+ twenty_four+ twenty_five+ twenty_six+ twenty_seven+ twenty_eight+ twenty_nine+ thirty+
thirty_one+ thirty_two+ thirty_three+ thirty_four+ thirty_five+ thirty_six+ thirty_seven+ thirty_eight+
thirty_nine+ forty+ forty_one+ forty_two+ forty_three+ forty_four+ forty_five+ forty_six+ forty_seven+
forty_eight+ forty_nine+ fifty+ fifty_one+ fifty_two+ fifty_three+ fifty_four+ fifty_five+ fifty_six+
fifty_seven+ fifty_eight+ fifty_nine+ sixty+ sixty_one+ sixty_two+ sixty_three+ sixty_four+ sixty_five+
sixty_six+ sixty_seven+ sixty_eight+ sixty_nine+ seventy+ seventy_one+ seventy_two+ seventy_three+ seventy_four+
seventy_five+ seventy_six+ seventy_seven+ seventy_eight+ seventy_nine+ eighty+ eighty_one+ eighty_two+ eighty_three+
eighty_four+ eighty_five+ eighty_six+ eighty_seven+ eighty_eight+ eighty_nine+ ninety+ ninety_one+ ninety_two+
ninety_three+ ninety_four+ ninety_five+ ninety_six+ ninety_seven+ ninety_eight+ ninety_nine+ hundred_plus) as 
total_population_five_years
from pop..population where type = 'Development Group'
and year in (1950, 1955, 1960, 1965, 1970, 1975, 1980, 1985, 1990, 1995, 2000, 2005, 2010, 2015, 2020)

select *, (((total_population_five_years - lag(total_population_five_years) over (partition by location order by 
year, location)) / lag(total_population_five_years) over (partition by location order by year, location))*100)
as pop_percent_change_from_previous_year_five_years
from #population_change_five_years_table






-- Calculating the maximum total infant population for each development group over a five-year interval.
-- Results are grouped by location and ordered by the maximum infant population in descending order
select location, max (zero) as max_infant_total_population_five_years
from pop..population where type = 'Development Group'
and year in (1950, 1955, 1960, 1965, 1970, 1975, 1980, 1985, 1990, 1995, 2000, 2005, 2010, 2015, 2020)
group by location
order by max_infant_total_population_five_years desc





-- Calculating the minimum total teen population for each development group over a five-year interval.
-- Results are grouped by location & year and ordered by the minimum total teen population
select location, year, min(thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen)
as min_teenage_total_population_five_years
from pop..population where type = 'Development Group'

and year in (1950, 1955, 1960, 1965, 1970, 1975, 1980, 1985, 1990, 1995, 2000, 2005, 2010, 2015, 2020)
group by location, year
order by min_teenage_total_population_five_years





-- Calculating the total teen population and percentage change in teen
-- population from previous period for all countries over a five-year interval.
drop table if exists #teenage_population_change_five_years_table
create table #teenage_population_change_five_years_table
(location varchar(100), year numeric, teenage_total_population_five_years decimal(20,4))

insert into #teenage_population_change_five_years_table

select location, year, (thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen)
as teenage_total_population_five_years
from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
and year in (1950, 1955, 1960, 1965, 1970, 1975, 1980, 1985, 1990, 1995, 2000, 2005, 2010, 2015, 2020)

select *, (((teenage_total_population_five_years - lag(teenage_total_population_five_years) over 
(partition by location order by year, location)) / lag(teenage_total_population_five_years) over 
(partition by location order by year, location))*100) as teenage_pop_percent_change_from_previous_year_five_years
from #teenage_population_change_five_years_table





-- Calculating the total under twenty population and percentage change in under twenty
-- population from previous period for all countries over a five-year interval.
drop table if exists #under_twenty_population_change_five_years_table
create table #under_twenty_population_change_five_years_table
(location varchar(100), year numeric, under_twenty_population_five_years decimal(20,4))

insert into #under_twenty_population_change_five_years_table
select location, year, (zero+ one+ two+ three+ four+ five+ six+ seven+ eight+ nine+ ten+ eleven+
twelve+ thirteen+ forteen+ fifteen+ sixteen+ seventeen+ eighteen+ nineteen)
as under_twenty_population_five_years
from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
and year in (1950, 1955, 1960, 1965, 1970, 1975, 1980, 1985, 1990, 1995, 2000, 2005, 2010, 2015, 2020)

select *, (((under_twenty_population_five_years - lag(under_twenty_population_five_years) over 
(partition by location order by year, location)) / lag(under_twenty_population_five_years) over 
(partition by location order by year, location))*100) as under_twenty_population_change_five_years
from #under_twenty_population_change_five_years_table





-- Calculating the total population in age group 20-40 and percentage change in it from previous period
-- for all countries over a five-year interval.
drop table if exists #twenty_to_forty_population_change_five_years_table
create table #twenty_to_forty_population_change_five_years_table
(location varchar(100), year numeric, twenty_to_forty_population_five_years decimal(20,4))

insert into #twenty_to_forty_population_change_five_years_table
select location, year, (twenty+ twenty_one+ twenty_two+
twenty_three+ twenty_four+ twenty_five+ twenty_six+ twenty_seven+ twenty_eight+ twenty_nine+ thirty+
thirty_one+ thirty_two+ thirty_three+ thirty_four+ thirty_five+ thirty_six+ thirty_seven+ thirty_eight+
thirty_nine+ forty)
as twenty_to_forty_population_five_years
from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
and year in (1950, 1955, 1960, 1965, 1970, 1975, 1980, 1985, 1990, 1995, 2000, 2005, 2010, 2015, 2020)

select *, (((twenty_to_forty_population_five_years - lag(twenty_to_forty_population_five_years) over 
(partition by location order by year, location)) / lag(twenty_to_forty_population_five_years) over 
(partition by location order by year, location))*100) as twenty_to_forty_population_change_five_years
from #twenty_to_forty_population_change_five_years_table








-- Calculating the total population in age group 41-60 and percentage change in it from previous period
-- for all countries over a five-year interval.
drop table if exists #forty_one_to_sixty_population_change_five_years_table
create table #forty_one_to_sixty_population_change_five_years_table
(location varchar(100), year numeric, forty_one_to_sixty_population_five_years decimal(20,4))

insert into #forty_one_to_sixty_population_change_five_years_table
select location, year, (forty_one+ forty_two+ forty_three+ forty_four+ forty_five+ forty_six+ forty_seven+
forty_eight+ forty_nine+ fifty+ fifty_one+ fifty_two+ fifty_three+ fifty_four+ fifty_five+ fifty_six+
fifty_seven+ fifty_eight+ fifty_nine+ sixty)
as forty_one_to_sixty_population_five_years
from pop..population where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
and year in (1950, 1955, 1960, 1965, 1970, 1975, 1980, 1985, 1990, 1995, 2000, 2005, 2010, 2015, 2020)

select *, (((forty_one_to_sixty_population_five_years - lag(forty_one_to_sixty_population_five_years) over 
(partition by location order by year, location)) / lag(forty_one_to_sixty_population_five_years) over 
(partition by location order by year, location))*100) as forty_one_to_sixty_population_change_five_years
from #forty_one_to_sixty_population_change_five_years_table



-- Calculating the total population in age group 81-100+ for all countries over a five-year interval.
drop table if exists #eighty_one_to_hundred_plus_max_population_five_years_table
create table #eighty_one_to_hundred_plus_max_population_five_years_table
(location varchar(100), year numeric, eighty_one_to_hundred_plus_max_population_five_years decimal(20, 4))

insert into #eighty_one_to_hundred_plus_max_population_five_years_table
select location, year,
    max(eighty_one + eighty_two + eighty_three + eighty_four + eighty_five + eighty_six + eighty_seven + 
	eighty_eight + eighty_nine + ninety + ninety_one + ninety_two +ninety_three + ninety_four + ninety_five +
	ninety_six + ninety_seven + ninety_eight + ninety_nine + hundred_plus) as 
	eighty_one_to_hundred_plus_max_population_five_years
from pop..population
where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')
and year in (1950, 1955, 1960, 1965, 1970, 1975, 1980, 1985, 1990, 1995, 2000, 2005, 2010, 2015, 2020)
group by location, year

select * from #eighty_one_to_hundred_plus_max_population_five_years_table
order by eighty_one_to_hundred_plus_max_population_five_years desc






-- Calculating the total population in age group 81-100+ and percentage change in it from previous period
-- for all countries over a five-year interval.
drop table if exists #eighty_one_to_hundred_plus_population_change_table
create table #eighty_one_to_hundred_plus_population_change_table
(location varchar(100), year numeric, eighty_one_to_hundred_plus_population decimal(20, 4))

insert into #eighty_one_to_hundred_plus_population_change_table
select location, year, (eighty_one + eighty_two + eighty_three + eighty_four + eighty + eighty_six + 
eighty_seven+ eighty_eight + eighty_nine + ninety + ninety_one + ninety_two + ninety_three + ninety_four + 
ninety + ninety_six+ ninety_seven + ninety_eight + ninety_nine + hundred_plus) as 
eighty_one_to_hundred_plus_population

from pop..population
where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion')

select *,
    (((eighty_one_to_hundred_plus_population - lag(eighty_one_to_hundred_plus_population) 
    over (order by year)) / lag(eighty_one_to_hundred_plus_population) 
    over (order by year)) * 100) as eighty_one_to_hundred_plus_population_change
from #eighty_one_to_hundred_plus_population_change_table
order by eighty_one_to_hundred_plus_population_change desc








---------------------------------------------------------------------------------------------------------------

-- moving to the mortality dataset

-- Calculating the total deaths per country for all years, grouping by location and arranging in descending order
select location, sum(zero_mort+ one_mort+ two_mort+ three_mort+ four_mort+ five_mort+ six_mort+ seven_mort+ 
eight_mort+ nine_mort+ ten_mort+ eleven_mort+ twelve_mort+ thirteen_mort+ forteen_mort+
fifteen_mort+ sixteen_mort+ seventeen_mort+ eighteen_mort+ nineteen_mort+ twenty_mort+ twenty_one_mort+
twenty_two_mort+ twenty_three_mort+ twenty_four_mort+ twenty_five_mort+ twenty_six_mort+ twenty_seven_mort+
twenty_eight_mort+ twenty_nine_mort+ thirty_mort+ thirty_one_mort+ thirty_two_mort+ thirty_three_mort+
thirty_four_mort+ thirty_five_mort+ thirty_six_mort+ thirty_seven_mort+ thirty_eight_mort+ thirty_nine_mort+
forty_mort+ forty_one_mort+ forty_two_mort+ forty_three_mort+ forty_four_mort+ forty_five_mort+ 
forty_six_mort+ forty_seven_mort+ forty_eight_mort+ forty_nine_mort+ fifty_mort+ fifty_one_mort+
fifty_two_mort+ fifty_three_mort+ fifty_four_mort+ fifty_five_mort+ fifty_six_mort+ fifty_seven_mort+
fifty_eight_mort+ fifty_nine_mort+ sixty_mort+ sixty_one_mort+ sixty_two_mort+ sixty_three_mort+ 
sixty_four_mort+ sixty_five_mort+ sixty_six_mort+ sixty_seven_mort+ sixty_eight_mort+ sixty_nine_mort+
seventy_mort+ seventy_one_mort+ seventy_two_mort+ seventy_three_mort+ seventy_four_mort+ seventy_five_mort+
seventy_six_mort+ seventy_seven_mort+ seventy_eight_mort+ seventy_nine_mort+ eighty_mort+ 
eighty_one_mort+ eighty_two_mort+ eighty_three_mort+ eighty_four_mort+ eighty_five_mort+ eighty_six_mort+
eighty_seven_mort+ eighty_eight_mort+ eighty_nine_mort+ ninety_mort+ ninety_one_mort+ ninety_two_mort+ 
ninety_three_mort+ ninety_four_mort+ ninety_five_mort+ ninety_six_mort+ ninety_seven_mort+ 
ninety_eight_mort+ ninety_nine_mort+ hundred_plus_mort) as total_deaths_per_country
from pop..mortality
where type<>'World' and type<> 'Label/Separator' and type<> 'SDG region'
and type<> 'Development Group' and type<> 'Special other' and type<> 'Income Group' and type<> 'Region' and
type<> 'Subregion'
group by location
order by total_deaths_per_country desc




-- Calculating the average deaths per country for all years collectively,
-- grouping by location and arranging in descending order
select location, avg(zero_mort+ one_mort+ two_mort+ three_mort+ four_mort+ five_mort+ six_mort+ seven_mort+ 
eight_mort+ nine_mort+ ten_mort+ eleven_mort+ twelve_mort+ thirteen_mort+ forteen_mort+
fifteen_mort+ sixteen_mort+ seventeen_mort+ eighteen_mort+ nineteen_mort+ twenty_mort+ twenty_one_mort+
twenty_two_mort+ twenty_three_mort+ twenty_four_mort+ twenty_five_mort+ twenty_six_mort+ twenty_seven_mort+
twenty_eight_mort+ twenty_nine_mort+ thirty_mort+ thirty_one_mort+ thirty_two_mort+ thirty_three_mort+
thirty_four_mort+ thirty_five_mort+ thirty_six_mort+ thirty_seven_mort+ thirty_eight_mort+ thirty_nine_mort+
forty_mort+ forty_one_mort+ forty_two_mort+ forty_three_mort+ forty_four_mort+ forty_five_mort+ 
forty_six_mort+ forty_seven_mort+ forty_eight_mort+ forty_nine_mort+ fifty_mort+ fifty_one_mort+
fifty_two_mort+ fifty_three_mort+ fifty_four_mort+ fifty_five_mort+ fifty_six_mort+ fifty_seven_mort+
fifty_eight_mort+ fifty_nine_mort+ sixty_mort+ sixty_one_mort+ sixty_two_mort+ sixty_three_mort+ 
sixty_four_mort+ sixty_five_mort+ sixty_six_mort+ sixty_seven_mort+ sixty_eight_mort+ sixty_nine_mort+
seventy_mort+ seventy_one_mort+ seventy_two_mort+ seventy_three_mort+ seventy_four_mort+ seventy_five_mort+
seventy_six_mort+ seventy_seven_mort+ seventy_eight_mort+ seventy_nine_mort+ eighty_mort+ 
eighty_one_mort+ eighty_two_mort+ eighty_three_mort+ eighty_four_mort+ eighty_five_mort+ eighty_six_mort+
eighty_seven_mort+ eighty_eight_mort+ eighty_nine_mort+ ninety_mort+ ninety_one_mort+ ninety_two_mort+ 
ninety_three_mort+ ninety_four_mort+ ninety_five_mort+ ninety_six_mort+ ninety_seven_mort+ 
ninety_eight_mort+ ninety_nine_mort+ hundred_plus_mort) as avg_deaths
from pop..mortality
where type<>'World' and type<> 'Label/Separator' and type<> 'SDG region'
and type<> 'Development Group' and type<> 'Special other' and type<> 'Income Group' and type<> 'Region' and
type<> 'Subregion'
group by location
order by avg_deaths desc





-- Calculating the maximum deaths per country for all years collectively,
-- grouping by location and arranging in descending order
select location, max(zero_mort+ one_mort+ two_mort+ three_mort+ four_mort+ five_mort+ six_mort+ seven_mort+ 
eight_mort+ nine_mort+ ten_mort+ eleven_mort+ twelve_mort+ thirteen_mort+ forteen_mort+
fifteen_mort+ sixteen_mort+ seventeen_mort+ eighteen_mort+ nineteen_mort+ twenty_mort+ twenty_one_mort+
twenty_two_mort+ twenty_three_mort+ twenty_four_mort+ twenty_five_mort+ twenty_six_mort+ twenty_seven_mort+
twenty_eight_mort+ twenty_nine_mort+ thirty_mort+ thirty_one_mort+ thirty_two_mort+ thirty_three_mort+
thirty_four_mort+ thirty_five_mort+ thirty_six_mort+ thirty_seven_mort+ thirty_eight_mort+ thirty_nine_mort+
forty_mort+ forty_one_mort+ forty_two_mort+ forty_three_mort+ forty_four_mort+ forty_five_mort+ 
forty_six_mort+ forty_seven_mort+ forty_eight_mort+ forty_nine_mort+ fifty_mort+ fifty_one_mort+
fifty_two_mort+ fifty_three_mort+ fifty_four_mort+ fifty_five_mort+ fifty_six_mort+ fifty_seven_mort+
fifty_eight_mort+ fifty_nine_mort+ sixty_mort+ sixty_one_mort+ sixty_two_mort+ sixty_three_mort+ 
sixty_four_mort+ sixty_five_mort+ sixty_six_mort+ sixty_seven_mort+ sixty_eight_mort+ sixty_nine_mort+
seventy_mort+ seventy_one_mort+ seventy_two_mort+ seventy_three_mort+ seventy_four_mort+ seventy_five_mort+
seventy_six_mort+ seventy_seven_mort+ seventy_eight_mort+ seventy_nine_mort+ eighty_mort+ 
eighty_one_mort+ eighty_two_mort+ eighty_three_mort+ eighty_four_mort+ eighty_five_mort+ eighty_six_mort+
eighty_seven_mort+ eighty_eight_mort+ eighty_nine_mort+ ninety_mort+ ninety_one_mort+ ninety_two_mort+ 
ninety_three_mort+ ninety_four_mort+ ninety_five_mort+ ninety_six_mort+ ninety_seven_mort+ 
ninety_eight_mort+ ninety_nine_mort+ hundred_plus_mort) as max_deaths
from pop..mortality
where type<>'World' and type<> 'Label/Separator' and type<> 'SDG region'
and type<> 'Development Group' and type<> 'Special other' and type<> 'Income Group' and type<> 'Region' and
type<> 'Subregion'
group by location
order by max_deaths desc





-- Calculating the minimum deaths per country for all years collectively,
-- grouping by location and arranging in descending order
select location, min(zero_mort+ one_mort+ two_mort+ three_mort+ four_mort+ five_mort+ six_mort+ seven_mort+ 
eight_mort+ nine_mort+ ten_mort+ eleven_mort+ twelve_mort+ thirteen_mort+ forteen_mort+
fifteen_mort+ sixteen_mort+ seventeen_mort+ eighteen_mort+ nineteen_mort+ twenty_mort+ twenty_one_mort+
twenty_two_mort+ twenty_three_mort+ twenty_four_mort+ twenty_five_mort+ twenty_six_mort+ twenty_seven_mort+
twenty_eight_mort+ twenty_nine_mort+ thirty_mort+ thirty_one_mort+ thirty_two_mort+ thirty_three_mort+
thirty_four_mort+ thirty_five_mort+ thirty_six_mort+ thirty_seven_mort+ thirty_eight_mort+ thirty_nine_mort+
forty_mort+ forty_one_mort+ forty_two_mort+ forty_three_mort+ forty_four_mort+ forty_five_mort+ 
forty_six_mort+ forty_seven_mort+ forty_eight_mort+ forty_nine_mort+ fifty_mort+ fifty_one_mort+
fifty_two_mort+ fifty_three_mort+ fifty_four_mort+ fifty_five_mort+ fifty_six_mort+ fifty_seven_mort+
fifty_eight_mort+ fifty_nine_mort+ sixty_mort+ sixty_one_mort+ sixty_two_mort+ sixty_three_mort+ 
sixty_four_mort+ sixty_five_mort+ sixty_six_mort+ sixty_seven_mort+ sixty_eight_mort+ sixty_nine_mort+
seventy_mort+ seventy_one_mort+ seventy_two_mort+ seventy_three_mort+ seventy_four_mort+ seventy_five_mort+
seventy_six_mort+ seventy_seven_mort+ seventy_eight_mort+ seventy_nine_mort+ eighty_mort+ 
eighty_one_mort+ eighty_two_mort+ eighty_three_mort+ eighty_four_mort+ eighty_five_mort+ eighty_six_mort+
eighty_seven_mort+ eighty_eight_mort+ eighty_nine_mort+ ninety_mort+ ninety_one_mort+ ninety_two_mort+ 
ninety_three_mort+ ninety_four_mort+ ninety_five_mort+ ninety_six_mort+ ninety_seven_mort+ 
ninety_eight_mort+ ninety_nine_mort+ hundred_plus_mort) as min_deaths
from pop..mortality
where type<>'World' and type<> 'Label/Separator' and type<> 'SDG region'
and type<> 'Development Group' and type<> 'Special other' and type<> 'Income Group' and type<> 'Region' and
type<> 'Subregion'
group by location
order by min_deaths






-- Calculating total deaths, infant deaths, teen deaths, under twenty deaths, 20-40 age group deaths,
-- 41-60 age group deaths, 61-80 age group deaths, 81-100+ age group deaths & percentage difference
-- in total deaths, infant deaths, teen deaths, under twenty deaths, 20-40 age group deaths,
-- 41-60 age group deaths, 61-80 age group deaths, 81-100+ age group deaths from previous year for all years
with percentage_deaths (location, year, total_deaths, infant_deaths, teen_deaths, under_twenty_deaths,
twenty_to_forty_deaths, forty_one_to_sixty_deaths, sixty_one_to_eighty_deaths, eighty_one_to_hundred_plus_deaths)
as
(
select location, year, (zero_mort+ one_mort+ two_mort+ three_mort+ four_mort+ five_mort+ six_mort+ seven_mort+ 
eight_mort+ nine_mort+ ten_mort+ eleven_mort+ twelve_mort+ thirteen_mort+ forteen_mort+
fifteen_mort+ sixteen_mort+ seventeen_mort+ eighteen_mort+ nineteen_mort+ twenty_mort+ twenty_one_mort+
twenty_two_mort+ twenty_three_mort+ twenty_four_mort+ twenty_five_mort+ twenty_six_mort+ twenty_seven_mort+
twenty_eight_mort+ twenty_nine_mort+ thirty_mort+ thirty_one_mort+ thirty_two_mort+ thirty_three_mort+
thirty_four_mort+ thirty_five_mort+ thirty_six_mort+ thirty_seven_mort+ thirty_eight_mort+ thirty_nine_mort+
forty_mort+ forty_one_mort+ forty_two_mort+ forty_three_mort+ forty_four_mort+ forty_five_mort+ 
forty_six_mort+ forty_seven_mort+ forty_eight_mort+ forty_nine_mort+ fifty_mort+ fifty_one_mort+
fifty_two_mort+ fifty_three_mort+ fifty_four_mort+ fifty_five_mort+ fifty_six_mort+ fifty_seven_mort+
fifty_eight_mort+ fifty_nine_mort+ sixty_mort+ sixty_one_mort+ sixty_two_mort+ sixty_three_mort+ 
sixty_four_mort+ sixty_five_mort+ sixty_six_mort+ sixty_seven_mort+ sixty_eight_mort+ sixty_nine_mort+
seventy_mort+ seventy_one_mort+ seventy_two_mort+ seventy_three_mort+ seventy_four_mort+ seventy_five_mort+
seventy_six_mort+ seventy_seven_mort+ seventy_eight_mort+ seventy_nine_mort+ eighty_mort+ 
eighty_one_mort+ eighty_two_mort+ eighty_three_mort+ eighty_four_mort+ eighty_five_mort+ eighty_six_mort+
eighty_seven_mort+ eighty_eight_mort+ eighty_nine_mort+ ninety_mort+ ninety_one_mort+ ninety_two_mort+ 
ninety_three_mort+ ninety_four_mort+ ninety_five_mort+ ninety_six_mort+ ninety_seven_mort+ 
ninety_eight_mort+ ninety_nine_mort+ hundred_plus_mort) as total_deaths, zero_mort as infant_deaths,
(thirteen_mort+ forteen_mort+ fifteen_mort+ sixteen_mort+ seventeen_mort+ eighteen_mort+ nineteen_mort)
as teen_deaths, (zero_mort+ one_mort+ two_mort+ three_mort+ four_mort+ five_mort+ six_mort+ seven_mort+ 
eight_mort+ nine_mort+ ten_mort+ eleven_mort+ twelve_mort+ thirteen_mort+ forteen_mort+
fifteen_mort+ sixteen_mort+ seventeen_mort+ eighteen_mort+ nineteen_mort) as under_twenty_deaths,
(twenty_mort+ twenty_one_mort+ twenty_two_mort+ twenty_three_mort+ twenty_four_mort+ twenty_five_mort+ 
twenty_six_mort+ twenty_seven_mort+ twenty_eight_mort+ twenty_nine_mort+ thirty_mort+ thirty_one_mort+ 
thirty_two_mort+ thirty_three_mort+ thirty_four_mort+ thirty_five_mort+ thirty_six_mort+ thirty_seven_mort+ 
thirty_eight_mort+ thirty_nine_mort+ forty_mort) as twenty_to_forty_deaths,
(forty_one_mort+ forty_two_mort+ forty_three_mort+ forty_four_mort+ forty_five_mort+ 
forty_six_mort+ forty_seven_mort+ forty_eight_mort+ forty_nine_mort+ fifty_mort+ fifty_one_mort+
fifty_two_mort+ fifty_three_mort+ fifty_four_mort+ fifty_five_mort+ fifty_six_mort+ fifty_seven_mort+
fifty_eight_mort+ fifty_nine_mort+ sixty_mort) as forty_one_to_sixty_deaths,
(sixty_one_mort+ sixty_two_mort+ sixty_three_mort+  sixty_four_mort+ sixty_five_mort+ sixty_six_mort+ 
sixty_seven_mort+ sixty_eight_mort+ sixty_nine_mort+ seventy_mort+ seventy_one_mort+ seventy_two_mort+ 
seventy_three_mort+ seventy_four_mort+ seventy_five_mort+ seventy_six_mort+ seventy_seven_mort+ seventy_eight_mort+
seventy_nine_mort+ eighty_mort) as sixty_one_to_eighty_deaths,
(eighty_one_mort+ eighty_two_mort+ eighty_three_mort+ eighty_four_mort+ eighty_five_mort+ eighty_six_mort+
eighty_seven_mort+ eighty_eight_mort+ eighty_nine_mort+ ninety_mort+ ninety_one_mort+ ninety_two_mort+ 
ninety_three_mort+ ninety_four_mort+ ninety_five_mort+ ninety_six_mort+ ninety_seven_mort+ 
ninety_eight_mort+ ninety_nine_mort+ hundred_plus_mort) as eighty_one_to_hundred_plus_deaths

from pop..mortality
where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *,
case when lag(total_deaths) over (partition by location order by year, location) <> 0 then
(((total_deaths - lag(total_deaths) over (partition by location order by year, location)) / 
lag(total_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_total_deaths,

case when lag(infant_deaths) over (partition by location order by year, location) <> 0 then
(((infant_deaths - lag(infant_deaths) over (partition by location order by year, location)) / 
lag(infant_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_infant_deaths,

case when lag(teen_deaths) over (partition by location order by year, location) <> 0 then
(((teen_deaths - lag(teen_deaths) over (partition by location order by year, location)) / 
lag(teen_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_teen_deaths,

case when lag(under_twenty_deaths) over (partition by location order by year, location) <> 0 then
(((under_twenty_deaths - lag(under_twenty_deaths) over (partition by location order by year, location)) / 
lag(under_twenty_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_under_twenty_deaths,

case when lag(twenty_to_forty_deaths) over (partition by location order by year, location) <> 0 then
(((twenty_to_forty_deaths - lag(twenty_to_forty_deaths) over (partition by location order by year, location)) / 
lag(twenty_to_forty_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_twenty_to_forty_deaths,

case when lag(forty_one_to_sixty_deaths) over (partition by location order by year, location) <> 0 then
(((forty_one_to_sixty_deaths - lag(forty_one_to_sixty_deaths) over (partition by location order by year, location)) / 
lag(forty_one_to_sixty_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_forty_one_to_sixty_deaths,

case when lag(sixty_one_to_eighty_deaths) over (partition by location order by year, location) <> 0 then
(((sixty_one_to_eighty_deaths - lag(sixty_one_to_eighty_deaths) over (partition by location order by year, location)) / 
lag(sixty_one_to_eighty_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_sixty_one_to_eighty_deaths,

case when lag(eighty_one_to_hundred_plus_deaths) over (partition by location order by year, location) <> 0 then
(((eighty_one_to_hundred_plus_deaths - lag(eighty_one_to_hundred_plus_deaths) over (partition by location order
by year, location)) / 
lag(eighty_one_to_hundred_plus_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_eighty_one_to_hundred_plus_deaths

from percentage_deaths









-- Calculating total deaths, infant deaths, teen deaths, under twenty deaths, 20-40 age group deaths,
-- 41-60 age group deaths, 61-80 age group deaths, 81-100+ age group deaths,
-- percentage difference in total deaths, infant deaths, teen deaths, under twenty deaths,
-- 20-40 age group deaths, 41-60 age group deaths, 61-80 age group deaths, 81-100+ age group
-- deaths from previous year, & infant death percentage of total deaths, teen death percentage of total
-- deaths, under twenty death percentage of total deaths, 20-40 age group death percentage of total
-- deaths, 41-60 age group death percentage of total deaths, 61-80 age group death percentage of total deaths,
-- and 81-100+ age group death percentage of total deaths for all years and countries

with percentage_deaths (location, year, total_deaths, infant_deaths, teen_deaths, under_twenty_deaths,
twenty_to_forty_deaths, forty_one_to_sixty_deaths, sixty_one_to_eighty_deaths, eighty_one_to_hundred_plus_deaths)
as
(
select location, year, (zero_mort+ one_mort+ two_mort+ three_mort+ four_mort+ five_mort+ six_mort+ seven_mort+ 
eight_mort+ nine_mort+ ten_mort+ eleven_mort+ twelve_mort+ thirteen_mort+ forteen_mort+
fifteen_mort+ sixteen_mort+ seventeen_mort+ eighteen_mort+ nineteen_mort+ twenty_mort+ twenty_one_mort+
twenty_two_mort+ twenty_three_mort+ twenty_four_mort+ twenty_five_mort+ twenty_six_mort+ twenty_seven_mort+
twenty_eight_mort+ twenty_nine_mort+ thirty_mort+ thirty_one_mort+ thirty_two_mort+ thirty_three_mort+
thirty_four_mort+ thirty_five_mort+ thirty_six_mort+ thirty_seven_mort+ thirty_eight_mort+ thirty_nine_mort+
forty_mort+ forty_one_mort+ forty_two_mort+ forty_three_mort+ forty_four_mort+ forty_five_mort+ 
forty_six_mort+ forty_seven_mort+ forty_eight_mort+ forty_nine_mort+ fifty_mort+ fifty_one_mort+
fifty_two_mort+ fifty_three_mort+ fifty_four_mort+ fifty_five_mort+ fifty_six_mort+ fifty_seven_mort+
fifty_eight_mort+ fifty_nine_mort+ sixty_mort+ sixty_one_mort+ sixty_two_mort+ sixty_three_mort+ 
sixty_four_mort+ sixty_five_mort+ sixty_six_mort+ sixty_seven_mort+ sixty_eight_mort+ sixty_nine_mort+
seventy_mort+ seventy_one_mort+ seventy_two_mort+ seventy_three_mort+ seventy_four_mort+ seventy_five_mort+
seventy_six_mort+ seventy_seven_mort+ seventy_eight_mort+ seventy_nine_mort+ eighty_mort+ 
eighty_one_mort+ eighty_two_mort+ eighty_three_mort+ eighty_four_mort+ eighty_five_mort+ eighty_six_mort+
eighty_seven_mort+ eighty_eight_mort+ eighty_nine_mort+ ninety_mort+ ninety_one_mort+ ninety_two_mort+ 
ninety_three_mort+ ninety_four_mort+ ninety_five_mort+ ninety_six_mort+ ninety_seven_mort+ 
ninety_eight_mort+ ninety_nine_mort+ hundred_plus_mort) as total_deaths, zero_mort as infant_deaths,
(thirteen_mort+ forteen_mort+ fifteen_mort+ sixteen_mort+ seventeen_mort+ eighteen_mort+ nineteen_mort)
as teen_deaths, (zero_mort+ one_mort+ two_mort+ three_mort+ four_mort+ five_mort+ six_mort+ seven_mort+ 
eight_mort+ nine_mort+ ten_mort+ eleven_mort+ twelve_mort+ thirteen_mort+ forteen_mort+
fifteen_mort+ sixteen_mort+ seventeen_mort+ eighteen_mort+ nineteen_mort) as under_twenty_deaths,
(twenty_mort+ twenty_one_mort+ twenty_two_mort+ twenty_three_mort+ twenty_four_mort+ twenty_five_mort+ 
twenty_six_mort+ twenty_seven_mort+ twenty_eight_mort+ twenty_nine_mort+ thirty_mort+ thirty_one_mort+ 
thirty_two_mort+ thirty_three_mort+ thirty_four_mort+ thirty_five_mort+ thirty_six_mort+ thirty_seven_mort+ 
thirty_eight_mort+ thirty_nine_mort+ forty_mort) as twenty_to_forty_deaths,
(forty_one_mort+ forty_two_mort+ forty_three_mort+ forty_four_mort+ forty_five_mort+ 
forty_six_mort+ forty_seven_mort+ forty_eight_mort+ forty_nine_mort+ fifty_mort+ fifty_one_mort+
fifty_two_mort+ fifty_three_mort+ fifty_four_mort+ fifty_five_mort+ fifty_six_mort+ fifty_seven_mort+
fifty_eight_mort+ fifty_nine_mort+ sixty_mort) as forty_one_to_sixty_deaths,
(sixty_one_mort+ sixty_two_mort+ sixty_three_mort+  sixty_four_mort+ sixty_five_mort+ sixty_six_mort+ 
sixty_seven_mort+ sixty_eight_mort+ sixty_nine_mort+ seventy_mort+ seventy_one_mort+ seventy_two_mort+ 
seventy_three_mort+ seventy_four_mort+ seventy_five_mort+ seventy_six_mort+ seventy_seven_mort+ seventy_eight_mort+
seventy_nine_mort+ eighty_mort) as sixty_one_to_eighty_deaths,
(eighty_one_mort+ eighty_two_mort+ eighty_three_mort+ eighty_four_mort+ eighty_five_mort+ eighty_six_mort+
eighty_seven_mort+ eighty_eight_mort+ eighty_nine_mort+ ninety_mort+ ninety_one_mort+ ninety_two_mort+ 
ninety_three_mort+ ninety_four_mort+ ninety_five_mort+ ninety_six_mort+ ninety_seven_mort+ 
ninety_eight_mort+ ninety_nine_mort+ hundred_plus_mort) as eighty_one_to_hundred_plus_deaths

from pop..mortality
where type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *,
case when lag(total_deaths) over (partition by location order by year, location) <> 0 then
(((total_deaths - lag(total_deaths) over (partition by location order by year, location)) / 
lag(total_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_total_deaths_from_last_year,

case when lag(infant_deaths) over (partition by location order by year, location) <> 0 then
(((infant_deaths - lag(infant_deaths) over (partition by location order by year, location)) / 
lag(infant_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_infant_deaths_from_last_year,

case when lag(teen_deaths) over (partition by location order by year, location) <> 0 then
(((teen_deaths - lag(teen_deaths) over (partition by location order by year, location)) / 
lag(teen_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_teen_deaths_from_last_year,

case when lag(under_twenty_deaths) over (partition by location order by year, location) <> 0 then
(((under_twenty_deaths - lag(under_twenty_deaths) over (partition by location order by year, location)) / 
lag(under_twenty_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_under_twenty_deaths_from_last_year,

case when lag(twenty_to_forty_deaths) over (partition by location order by year, location) <> 0 then
(((twenty_to_forty_deaths - lag(twenty_to_forty_deaths) over (partition by location order by year, location)) / 
lag(twenty_to_forty_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_twenty_to_forty_deaths_from_last_year,

case when lag(forty_one_to_sixty_deaths) over (partition by location order by year, location) <> 0 then
(((forty_one_to_sixty_deaths - lag(forty_one_to_sixty_deaths) over (partition by location order by year, location)) / 
lag(forty_one_to_sixty_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_forty_one_to_sixty_deaths_from_last_year,

case when lag(sixty_one_to_eighty_deaths) over (partition by location order by year, location) <> 0 then
(((sixty_one_to_eighty_deaths - lag(sixty_one_to_eighty_deaths) over (partition by location order by year, location)) / 
lag(sixty_one_to_eighty_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_sixty_one_to_eighty_deaths_from_last_year,

case when lag(eighty_one_to_hundred_plus_deaths) over (partition by location order by year, location) <> 0 then
(((eighty_one_to_hundred_plus_deaths - lag(eighty_one_to_hundred_plus_deaths) over (partition by location order
by year, location)) / 
lag(eighty_one_to_hundred_plus_deaths) over (partition by location order by year, location)) * 100)
else null end as percent_difference_eighty_one_to_hundred_plus_deaths_from_last_year,

((infant_deaths/nullif(total_deaths, 0))*100) as infant_death_percentage_of_total_deaths,

((teen_deaths/nullif(total_deaths, 0))*100) as teenage_death_percentage_of_total_deaths,

((under_twenty_deaths/nullif(total_deaths, 0))*100) as under_twenty_death_percentage_of_total_deaths,

((twenty_to_forty_deaths/nullif(total_deaths, 0))*100) as twenty_to_forty_death_percentage_of_total_deaths,

((forty_one_to_sixty_deaths/nullif(total_deaths, 0))*100) as forty_one_to_sixty_death_percentage_of_total_deaths,

((sixty_one_to_eighty_deaths/nullif(total_deaths, 0))*100) as sixty_one_to_eighty_death_percentage_of_total_deaths,

((eighty_one_to_hundred_plus_deaths/nullif(total_deaths, 0))*100) as eighty_one_to_hundred_plus_death_percentage_of_total_deaths

from percentage_deaths;








--- Joining both dataframes and calculating total population, total deaths & death percentage of
-- total population for all years and countries
with population_versus_deaths (location, year, type, total_population, total_deaths) as
(
select popu.location, popu.year, popu.type, (popu.zero+ popu.one+ popu.two+ popu.three+ popu.four+ popu.five+
popu.six+ popu.seven+ popu.eight+ popu.nine+ popu.ten+ popu.eleven+
popu.twelve+ popu.thirteen+ popu.forteen+ popu.fifteen+ popu.sixteen+ popu.seventeen+ popu.eighteen+ popu.nineteen+ 
popu.twenty+ popu.twenty_one+ popu.twenty_two+
popu.twenty_three+ popu.twenty_four+ popu.twenty_five+ popu.twenty_six+ popu.twenty_seven+ popu.twenty_eight+ 
popu.twenty_nine+ popu.thirty+
popu.thirty_one+ popu.thirty_two+ popu.thirty_three+ popu.thirty_four+ popu.thirty_five+ popu.thirty_six+ 
popu.thirty_seven+ popu.thirty_eight+
popu.thirty_nine+ popu.forty+ popu.forty_one+ popu.forty_two+ popu.forty_three+ popu.forty_four+ popu.forty_five+
popu.forty_six+ popu.forty_seven+ popu.forty_eight+ popu.forty_nine+ popu.fifty+ popu.fifty_one+ popu.fifty_two+
popu.fifty_three+ popu.fifty_four+ popu.fifty_five+ popu.fifty_six+ popu.fifty_seven+ popu.fifty_eight+
popu.fifty_nine+ popu.sixty+ popu.sixty_one+ popu.sixty_two+ popu.sixty_three+ popu.sixty_four+ popu.sixty_five+
popu.sixty_six+ popu.sixty_seven+ popu.sixty_eight+ popu.sixty_nine+ popu.seventy+ popu.seventy_one+
popu.seventy_two+ popu.seventy_three+ popu.seventy_four+
popu.seventy_five+ popu.seventy_six+ popu.seventy_seven+ popu.seventy_eight+ popu.seventy_nine+ popu.eighty+ 
popu.eighty_one+ popu.eighty_two+ popu.eighty_three+ popu.eighty_four+ popu.eighty_five+ popu.eighty_six+
popu.eighty_seven+ popu.eighty_eight+ popu.eighty_nine+ popu.ninety+ popu.ninety_one+ popu.ninety_two+
popu.ninety_three+ popu.ninety_four+ popu.ninety_five+ popu.ninety_six+ popu.ninety_seven+ popu.ninety_eight+
popu.ninety_nine+ popu.hundred_plus) as total_population, (mort.zero_mort+ mort.one_mort+ mort.two_mort+ mort.three_mort+ mort.four_mort+ mort.five_mort+ mort.six_mort+
mort.seven_mort+ mort.eight_mort+ mort.nine_mort+ mort.ten_mort+ mort.eleven_mort+ mort.twelve_mort+ mort.thirteen_mort+
mort.forteen_mort+ mort.fifteen_mort+ mort.sixteen_mort+ mort.seventeen_mort+ mort.eighteen_mort+ mort.nineteen_mort+
mort.twenty_mort+ mort.twenty_one_mort+ mort.twenty_two_mort+ mort.twenty_three_mort+ mort.twenty_four_mort+
mort.twenty_five_mort+ mort.twenty_six_mort+ mort.twenty_seven_mort+ mort.twenty_eight_mort+ mort.twenty_nine_mort+
mort.thirty_mort+ mort.thirty_one_mort+ mort.thirty_two_mort+ mort.thirty_three_mort+
mort.thirty_four_mort+ mort.thirty_five_mort+ mort.thirty_six_mort+ mort.thirty_seven_mort+ mort.thirty_eight_mort+
mort.thirty_nine_mort+ mort.forty_mort+ mort.forty_one_mort+ mort.forty_two_mort+ mort.forty_three_mort+ 
mort.forty_four_mort+ mort.forty_five_mort+ mort.forty_six_mort+ mort.forty_seven_mort+ mort.forty_eight_mort+
mort.forty_nine_mort+ mort.fifty_mort+ mort.fifty_one_mort+ mort.fifty_two_mort+ mort.fifty_three_mort+
mort.fifty_four_mort+ mort.fifty_five_mort+ mort.fifty_six_mort+ mort.fifty_seven_mort+
mort.fifty_eight_mort+ mort.fifty_nine_mort+ mort.sixty_mort+ mort.sixty_one_mort+ mort.sixty_two_mort+
mort.sixty_three_mort+ mort.sixty_four_mort+ mort.sixty_five_mort+ mort.sixty_six_mort+ mort.sixty_seven_mort+
mort.sixty_eight_mort+ mort.sixty_nine_mort+ mort.seventy_mort+ mort.seventy_one_mort+ mort.seventy_two_mort+
mort.seventy_three_mort+ mort.seventy_four_mort+ mort.seventy_five_mort+ mort.seventy_six_mort+
mort.seventy_seven_mort+ mort.seventy_eight_mort+ mort.seventy_nine_mort+ mort.eighty_mort+ 
mort.eighty_one_mort+ mort.eighty_two_mort+ mort.eighty_three_mort+ mort.eighty_four_mort+ mort.eighty_five_mort+
mort.eighty_six_mort+ mort.eighty_seven_mort+ mort.eighty_eight_mort+ mort.eighty_nine_mort+ mort.ninety_mort+
mort.ninety_one_mort+ mort.ninety_two_mort+ mort.ninety_three_mort+ mort.ninety_four_mort+ mort.ninety_five_mort+
mort.ninety_six_mort+ mort.ninety_seven_mort+ mort.ninety_eight_mort+ mort.ninety_nine_mort+
mort.hundred_plus_mort) as total_deaths

from pop..population popu
join pop..mortality mort
	on popu.location = mort.location
	and popu.year = mort.year
	and popu.type = mort.type
where popu.type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *, ((total_deaths/total_population)*100) as death_percentage_of_total_population
from population_versus_deaths
order by location, year, type








-- Joining both dataframes and calculating total population, teen population, under 20 population,
-- 21-40 age group population, 41-60 age group population, 61-80 age group population, 
-- 81-100+ age group population, total deaths, teen deaths, under 20 deaths,
-- 21-40 age group deaths, 41-60 age group deaths, 61-80 age group deaths, 
-- 81-100+ age group deaths, death percentage of total population, death percentage of infant population,
-- death percentage of teen population, death percentage of under 20 population, death percentage
-- of 21-40 age group, death percentage of 41-60 age group, death percentage of 61-80 age group,
-- death percentage of 81-100+ age group, percentage change in total population from previous year,
-- percentage change in infant population from previous year, percentage change in teen population
-- from previous year, percentage change in under 20 population from previous year, percentage change
-- in 21-40 age group population from previous year, percentage change in 41-60 age group population
-- from previous year, percentage change in 61-80 age group population from previous year,
-- percentage change in 81-100+ age group population from previous year,  percentage change
-- in total deaths from previous year, percentage change in infant deaths from previous year,
-- percentage change in teen deaths from previous year, percentage change in under 20 deaths
-- from previous year, percentage change in 21-40 age group deaths from previous year,
-- percentage change in 41-60 age group deaths from previous year, percentage change in
-- 61-80 age group deaths from previous year, percentage change in 81-100+ age group deaths from previous year
-- for all years and countries
with population_versus_deaths (location, year, type, total_population, infant_population, teen_population,
under_twenty_population, twenty_to_forty_population, forty_one_to_sixty_population,
sixty_one_to_eighty_population, eighty_one_to_hundred_plus_population,
total_deaths, infant_deaths, teen_deaths, under_twenty_deaths, twenty_to_forty_deaths, 
forty_one_to_sixty_deaths, sixty_one_to_eighty_deaths, eighty_one_to_hundred_plus_deaths) as
(
select popu.location, popu.year, popu.type, (popu.zero+ popu.one+ popu.two+ popu.three+ popu.four+ popu.five+
popu.six+ popu.seven+ popu.eight+ popu.nine+ popu.ten+ popu.eleven+
popu.twelve+ popu.thirteen+ popu.forteen+ popu.fifteen+ popu.sixteen+ popu.seventeen+ popu.eighteen+ popu.nineteen+ 
popu.twenty+ popu.twenty_one+ popu.twenty_two+
popu.twenty_three+ popu.twenty_four+ popu.twenty_five+ popu.twenty_six+ popu.twenty_seven+ popu.twenty_eight+ 
popu.twenty_nine+ popu.thirty+
popu.thirty_one+ popu.thirty_two+ popu.thirty_three+ popu.thirty_four+ popu.thirty_five+ popu.thirty_six+ 
popu.thirty_seven+ popu.thirty_eight+
popu.thirty_nine+ popu.forty+ popu.forty_one+ popu.forty_two+ popu.forty_three+ popu.forty_four+ popu.forty_five+
popu.forty_six+ popu.forty_seven+ popu.forty_eight+ popu.forty_nine+ popu.fifty+ popu.fifty_one+ popu.fifty_two+
popu.fifty_three+ popu.fifty_four+ popu.fifty_five+ popu.fifty_six+ popu.fifty_seven+ popu.fifty_eight+
popu.fifty_nine+ popu.sixty+ popu.sixty_one+ popu.sixty_two+ popu.sixty_three+ popu.sixty_four+ popu.sixty_five+
popu.sixty_six+ popu.sixty_seven+ popu.sixty_eight+ popu.sixty_nine+ popu.seventy+ popu.seventy_one+
popu.seventy_two+ popu.seventy_three+ popu.seventy_four+
popu.seventy_five+ popu.seventy_six+ popu.seventy_seven+ popu.seventy_eight+ popu.seventy_nine+ popu.eighty+ 
popu.eighty_one+ popu.eighty_two+ popu.eighty_three+ popu.eighty_four+ popu.eighty_five+ popu.eighty_six+
popu.eighty_seven+ popu.eighty_eight+ popu.eighty_nine+ popu.ninety+ popu.ninety_one+ popu.ninety_two+
popu.ninety_three+ popu.ninety_four+ popu.ninety_five+ popu.ninety_six+ popu.ninety_seven+ popu.ninety_eight+
popu.ninety_nine+ popu.hundred_plus) as total_population, popu.zero as infant_population, 
popu.thirteen+ popu.forteen+ popu.fifteen+ popu.sixteen+ popu.seventeen+ popu.eighteen+ popu.nineteen
as teen_population, (popu.zero+ popu.one+ popu.two+ popu.three+ popu.four+ popu.five+
popu.six+ popu.seven+ popu.eight+ popu.nine+ popu.ten+ popu.eleven+
popu.twelve+ popu.thirteen+ popu.forteen+ popu.fifteen+ popu.sixteen+ popu.seventeen+ popu.eighteen+ popu.nineteen)
as under_twenty_population, (popu.twenty+ popu.twenty_one+ popu.twenty_two+
popu.twenty_three+ popu.twenty_four+ popu.twenty_five+ popu.twenty_six+ popu.twenty_seven+ popu.twenty_eight+ 
popu.twenty_nine+ popu.thirty+
popu.thirty_one+ popu.thirty_two+ popu.thirty_three+ popu.thirty_four+ popu.thirty_five+ popu.thirty_six+ 
popu.thirty_seven+ popu.thirty_eight+
popu.thirty_nine+ popu.forty) as twenty_to_forty_population,
(popu.forty_one+ popu.forty_two+ popu.forty_three+ popu.forty_four+ popu.forty_five+
popu.forty_six+ popu.forty_seven+ popu.forty_eight+ popu.forty_nine+ popu.fifty+ popu.fifty_one+ popu.fifty_two+
popu.fifty_three+ popu.fifty_four+ popu.fifty_five+ popu.fifty_six+ popu.fifty_seven+ popu.fifty_eight+
popu.fifty_nine+ popu.sixty) as forty_one_to_sixty_population, 
(popu.sixty_one+ popu.sixty_two+ popu.sixty_three+ popu.sixty_four+ popu.sixty_five+
popu.sixty_six+ popu.sixty_seven+ popu.sixty_eight+ popu.sixty_nine+ popu.seventy+ popu.seventy_one+
popu.seventy_two+ popu.seventy_three+ popu.seventy_four+
popu.seventy_five+ popu.seventy_six+ popu.seventy_seven+ popu.seventy_eight+ popu.seventy_nine+ popu.eighty)
as sixty_one_to_eighty_population, 
(popu.eighty_one+ popu.eighty_two+ popu.eighty_three+ popu.eighty_four+ popu.eighty_five+ popu.eighty_six+
popu.eighty_seven+ popu.eighty_eight+ popu.eighty_nine+ popu.ninety+ popu.ninety_one+ popu.ninety_two+
popu.ninety_three+ popu.ninety_four+ popu.ninety_five+ popu.ninety_six+ popu.ninety_seven+ popu.ninety_eight+
popu.ninety_nine+ popu.hundred_plus) as eighty_one_to_hundred_plus_population,
(mort.zero_mort+ mort.one_mort+ mort.two_mort+ mort.three_mort+ mort.four_mort+ mort.five_mort+ mort.six_mort+
mort.seven_mort+ mort.eight_mort+ mort.nine_mort+ mort.ten_mort+ mort.eleven_mort+ mort.twelve_mort+ mort.thirteen_mort+
mort.forteen_mort+ mort.fifteen_mort+ mort.sixteen_mort+ mort.seventeen_mort+ mort.eighteen_mort+ mort.nineteen_mort+
mort.twenty_mort+ mort.twenty_one_mort+ mort.twenty_two_mort+ mort.twenty_three_mort+ mort.twenty_four_mort+
mort.twenty_five_mort+ mort.twenty_six_mort+ mort.twenty_seven_mort+ mort.twenty_eight_mort+ mort.twenty_nine_mort+
mort.thirty_mort+ mort.thirty_one_mort+ mort.thirty_two_mort+ mort.thirty_three_mort+
mort.thirty_four_mort+ mort.thirty_five_mort+ mort.thirty_six_mort+ mort.thirty_seven_mort+ mort.thirty_eight_mort+
mort.thirty_nine_mort+ mort.forty_mort+ mort.forty_one_mort+ mort.forty_two_mort+ mort.forty_three_mort+ 
mort.forty_four_mort+ mort.forty_five_mort+ mort.forty_six_mort+ mort.forty_seven_mort+ mort.forty_eight_mort+
mort.forty_nine_mort+ mort.fifty_mort+ mort.fifty_one_mort+ mort.fifty_two_mort+ mort.fifty_three_mort+
mort.fifty_four_mort+ mort.fifty_five_mort+ mort.fifty_six_mort+ mort.fifty_seven_mort+
mort.fifty_eight_mort+ mort.fifty_nine_mort+ mort.sixty_mort+ mort.sixty_one_mort+ mort.sixty_two_mort+
mort.sixty_three_mort+ mort.sixty_four_mort+ mort.sixty_five_mort+ mort.sixty_six_mort+ mort.sixty_seven_mort+
mort.sixty_eight_mort+ mort.sixty_nine_mort+ mort.seventy_mort+ mort.seventy_one_mort+ mort.seventy_two_mort+
mort.seventy_three_mort+ mort.seventy_four_mort+ mort.seventy_five_mort+ mort.seventy_six_mort+
mort.seventy_seven_mort+ mort.seventy_eight_mort+ mort.seventy_nine_mort+ mort.eighty_mort+ 
mort.eighty_one_mort+ mort.eighty_two_mort+ mort.eighty_three_mort+ mort.eighty_four_mort+ mort.eighty_five_mort+
mort.eighty_six_mort+ mort.eighty_seven_mort+ mort.eighty_eight_mort+ mort.eighty_nine_mort+ mort.ninety_mort+
mort.ninety_one_mort+ mort.ninety_two_mort+ mort.ninety_three_mort+ mort.ninety_four_mort+ mort.ninety_five_mort+
mort.ninety_six_mort+ mort.ninety_seven_mort+ mort.ninety_eight_mort+ mort.ninety_nine_mort+
mort.hundred_plus_mort) as total_deaths, mort.zero_mort as infant_deaths, (mort.thirteen_mort+
mort.forteen_mort+ mort.fifteen_mort+ mort.sixteen_mort+ mort.seventeen_mort+ mort.eighteen_mort+ mort.nineteen_mort)
as teen_deaths,
(mort.zero_mort+ mort.one_mort+ mort.two_mort+ mort.three_mort+ mort.four_mort+ mort.five_mort+ mort.six_mort+
mort.seven_mort+ mort.eight_mort+ mort.nine_mort+ mort.ten_mort+ mort.eleven_mort+ mort.twelve_mort+ mort.thirteen_mort+
mort.forteen_mort+ mort.fifteen_mort+ mort.sixteen_mort+ mort.seventeen_mort+ mort.eighteen_mort+ mort.nineteen_mort)
as under_twenty_deaths,
(mort.twenty_one_mort+ mort.twenty_two_mort+ mort.twenty_three_mort+ mort.twenty_four_mort+
mort.twenty_five_mort+ mort.twenty_six_mort+ mort.twenty_seven_mort+ mort.twenty_eight_mort+ mort.twenty_nine_mort+
mort.thirty_mort+ mort.thirty_one_mort+ mort.thirty_two_mort+ mort.thirty_three_mort+
mort.thirty_four_mort+ mort.thirty_five_mort+ mort.thirty_six_mort+ mort.thirty_seven_mort+ mort.thirty_eight_mort+
mort.thirty_nine_mort+ mort.forty_mort) as twenty_to_forty_deaths,
(mort.forty_one_mort+ mort.forty_two_mort+ mort.forty_three_mort+ 
mort.forty_four_mort+ mort.forty_five_mort+ mort.forty_six_mort+ mort.forty_seven_mort+ mort.forty_eight_mort+
mort.forty_nine_mort+ mort.fifty_mort+ mort.fifty_one_mort+ mort.fifty_two_mort+ mort.fifty_three_mort+
mort.fifty_four_mort+ mort.fifty_five_mort+ mort.fifty_six_mort+ mort.fifty_seven_mort+
mort.fifty_eight_mort+ mort.fifty_nine_mort+ mort.sixty_mort) as forty_one_to_sixty_deaths,
(mort.sixty_one_mort+ mort.sixty_two_mort+
mort.sixty_three_mort+ mort.sixty_four_mort+ mort.sixty_five_mort+ mort.sixty_six_mort+ mort.sixty_seven_mort+
mort.sixty_eight_mort+ mort.sixty_nine_mort+ mort.seventy_mort+ mort.seventy_one_mort+ mort.seventy_two_mort+
mort.seventy_three_mort+ mort.seventy_four_mort+ mort.seventy_five_mort+ mort.seventy_six_mort+
mort.seventy_seven_mort+ mort.seventy_eight_mort+ mort.seventy_nine_mort+ mort.eighty_mort) as sixty_one_to_eighty_deaths,
(mort.eighty_one_mort+ mort.eighty_two_mort+ mort.eighty_three_mort+ mort.eighty_four_mort+ mort.eighty_five_mort+
mort.eighty_six_mort+ mort.eighty_seven_mort+ mort.eighty_eight_mort+ mort.eighty_nine_mort+ mort.ninety_mort+
mort.ninety_one_mort+ mort.ninety_two_mort+ mort.ninety_three_mort+ mort.ninety_four_mort+ mort.ninety_five_mort+
mort.ninety_six_mort+ mort.ninety_seven_mort+ mort.ninety_eight_mort+ mort.ninety_nine_mort+
mort.hundred_plus_mort) as eighty_one_to_hundred_plus_deaths

from pop..population popu
join pop..mortality mort
	on popu.location = mort.location
	and popu.year = mort.year
	and popu.type = mort.type
where popu.type not in ('World', 'Label/Separator', 'SDG region', 'Development Group', 'Special other', 
  'Income Group', 'Region', 'Subregion'))

select *, ((total_deaths/total_population)*100) as death_percentage_of_total_population,
((infant_deaths/infant_population)*100) as death_percentage_of_infant_population,
((teen_deaths/teen_population)*100) as death_percentage_of_teen_population,
((under_twenty_deaths/under_twenty_population)*100) as death_percentage_of_under_twenty_population,
((twenty_to_forty_deaths/twenty_to_forty_population)*100) as death_percentage_of_twenty_to_forty_population,
((forty_one_to_sixty_deaths/forty_one_to_sixty_population)*100) as death_percentage_of_forty_one_to_sixty_population,
((sixty_one_to_eighty_deaths/sixty_one_to_eighty_population)*100) as death_percentage_of_sixty_one_to_eighty_population,
((eighty_one_to_hundred_plus_deaths/eighty_one_to_hundred_plus_population)*100) as
death_percentage_of_eighty_one_to_hundred_plus_population,

(((total_population - lag(total_population) over (partition by location order by year, location)) / 
lag(total_population) over (partition by location order by year, location))*100) as 
total_population_percent_change_from_previous_year,

(((infant_population - lag(infant_population) over (partition by location order by year, location)) / 
lag(infant_population) over (partition by location order by year, location))*100) as 
infant_population_percent_change_from_previous_year,

(((teen_population - lag(teen_population) over (partition by location order by year, location)) / 
lag(teen_population) over (partition by location order by year, location))*100) as 
teen_population_percent_change_from_previous_year,

(((under_twenty_population - lag(under_twenty_population) over (partition by location order by year, location)) / 
lag(under_twenty_population) over (partition by location order by year, location))*100) as 
under_twenty_population_percent_change_from_previous_year,

(((twenty_to_forty_population - lag(twenty_to_forty_population) over (partition by location order by year, location)) / 
lag(twenty_to_forty_population) over (partition by location order by year, location))*100) as 
twenty_to_forty_population_percent_change_from_previous_year,

(((forty_one_to_sixty_population - lag(forty_one_to_sixty_population) over (partition by location order by year, location)) / 
lag(forty_one_to_sixty_population) over (partition by location order by year, location))*100) as 
forty_one_to_sixty_population_percent_change_from_previous_year,

(((sixty_one_to_eighty_population - lag(sixty_one_to_eighty_population) over (partition by location order by year, location)) / 
lag(sixty_one_to_eighty_population) over (partition by location order by year, location))*100) as 
sixty_one_to_eighty_population_percent_change_from_previous_year,

(((eighty_one_to_hundred_plus_population - lag(eighty_one_to_hundred_plus_population) over (partition by location order by year, location)) / 
lag(eighty_one_to_hundred_plus_population) over (partition by location order by year, location))*100) as 
eighty_one_to_hundred_plus_population_percent_change_from_previous_year,

(((total_deaths - lag(total_deaths) over (partition by location order by year, location)) / 
    CASE WHEN lag(total_deaths) over (partition by location order by year, location) != 0
         THEN lag(total_deaths) over (partition by location order by year, location)
         ELSE 1
    END) * 100) as total_deaths_percent_change_from_previous_year,

(((infant_deaths - lag(infant_deaths) over (partition by location order by year, location)) / 
    CASE WHEN lag(infant_deaths) over (partition by location order by year, location) != 0
         THEN lag(infant_deaths) over (partition by location order by year, location)
         ELSE 1
    END) * 100) as infant_deaths_percent_change_from_previous_year,

(((teen_deaths - lag(teen_deaths) over (partition by location order by year, location)) / 
    CASE WHEN lag(teen_deaths) over (partition by location order by year, location) != 0
         THEN lag(teen_deaths) over (partition by location order by year, location)
         ELSE 1
    END) * 100) as teen_deaths_percent_change_from_previous_year,

(((under_twenty_deaths - lag(under_twenty_deaths) over (partition by location order by year, location)) / 
    CASE WHEN lag(under_twenty_deaths) over (partition by location order by year, location) != 0
         THEN lag(under_twenty_deaths) over (partition by location order by year, location)
         ELSE 1
    END) * 100) as under_twenty_deaths_percent_change_from_previous_year,

(((twenty_to_forty_deaths - lag(twenty_to_forty_deaths) over (partition by location order by year, location)) / 
    CASE WHEN lag(twenty_to_forty_deaths) over (partition by location order by year, location) != 0
         THEN lag(twenty_to_forty_deaths) over (partition by location order by year, location)
         ELSE 1
    END) * 100) as twenty_to_forty_deaths_percent_change_from_previous_year,

(((forty_one_to_sixty_deaths - lag(forty_one_to_sixty_deaths) over (partition by location order by year, location)) / 
    CASE WHEN lag(forty_one_to_sixty_deaths) over (partition by location order by year, location) != 0
         THEN lag(forty_one_to_sixty_deaths) over (partition by location order by year, location)
         ELSE 1
    END) * 100) as forty_one_to_sixty_deaths_percent_change_from_previous_year,

(((sixty_one_to_eighty_deaths - lag(sixty_one_to_eighty_deaths) over (partition by location order by year, location)) / 
    CASE WHEN lag(sixty_one_to_eighty_deaths) over (partition by location order by year, location) != 0
         THEN lag(sixty_one_to_eighty_deaths) over (partition by location order by year, location)
         ELSE 1
    END) * 100) as sixty_one_to_eighty_deaths_percent_change_from_previous_year,

(((eighty_one_to_hundred_plus_deaths - lag(eighty_one_to_hundred_plus_deaths) over (partition by location order by year, location)) / 
    CASE WHEN lag(eighty_one_to_hundred_plus_deaths) over (partition by location order by year, location) != 0
         THEN lag(eighty_one_to_hundred_plus_deaths) over (partition by location order by year, location)
         ELSE 1
    END) * 100) as eighty_one_to_hundred_plus_deaths_percent_change_from_previous_year

from population_versus_deaths


