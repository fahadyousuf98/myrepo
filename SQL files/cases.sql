select person, 
case 
	when id=1 or id=2 or id=3 then 'These are senior IT managers'
	when id between 4 and 6 then 'These are senior sales managers'
end
as employees_profile
from tb
