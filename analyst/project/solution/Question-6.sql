/***6. How many confirmed completed reservations did the member (ID) with the most reserved classes in February have?***/

select 
	memberidentifier,
    SUM(checked_in) AS confirmed_classes
from peerfit.all_reservations AS all_reservations
where CAST(all_reservations.class_time_at AS DATE) >= '2018-02-01' AND CAST(all_reservations.class_time_at AS DATE) < '2018-03-01'
group by all_reservations.memberidentifier
order by SUM(checked_in) DESC
