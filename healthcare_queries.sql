
-- drop database if exists healthcare
-- create database healthcare;
-- use healthcare

select * from healthcare_data limit 50;

-- select count(Gender) as number_of_Gender , Gender from healthcare_data 
-- group by Gender


-- select count(Age) / (select count(`Age`) from healthcare_data)
-- * 100 as percentage , `Grp Age` 
-- from healthcare_data
-- group by `Grp Age`

-- select Department , Count(Gender) as count , Gender  from healthcare_data where Department = 'Neurology'
-- group by Department , Gender

-- select Department , Count(Gender) as count  from healthcare_data 
-- group by Department
-- order by count desc

-- select count(`Age`) as count , `Grp Age` from healthcare_data
-- group by `Grp Age`


select count(*) from healthcare_data