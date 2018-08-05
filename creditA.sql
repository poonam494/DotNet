-- write your code in PostgreSQL 9.4
Select D.pond_id,happy_ducks  
from
(
Select C.pond_id,count(IsHappy) as happy_ducks 
from 

(
select B.id
,B.tmpMinMax,B.temp_limit,B.temperature,B.pond_id,

CASE WHEN B.tmpMinMax = 'min' and B.temperature > B.temp_limit THEN 'Happy'
WHEN B.tmpMinMax = 'max' and B.temperature <= B.temp_limit THEN 'Happy'
else 'Unhappy' 
END AS IsHappy

from 
(
select A.id,A.name,A.species_id,A.pond_id, 
Case when A.temp_preferences = '+' Then 'min' 
when A.temp_preferences = '-' Then 'max' 
END 
As tmpMinMax
,A.temp_limit,A.temperature

from 
(SELECT d.id,d.name,d.species_id,d.pond_id ,s.temp_preferences,s.temp_limit, p.temperature,p.city from ducks d
inner join 
species s on d.species_id = s.id
inner join 
ponds p on d.pond_id = p.id
) A 

)B

)C

group by C.pond_id,C.IsHappy
having C.IsHappy = 'Happy'
order by C.pond_id asc

) D

right outer join 
ponds p1 
on D.pond_id =  p1.id


