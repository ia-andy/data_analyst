/***3. Which fitness area (i.e., tag) has the highest number of completed reservations for February?***/

select
	class_tag,
    COUNT(uniqueidentifier) AS COUNT
from peerfit.all_reservations AS all_reservations
where (CAST(all_reservations.checked_in_at AS DATE) >= '2018-02-01'
		AND CAST(all_reservations.checked_in_at AS DATE) < '2018-03-01')
group by all_reservations.class_tag
order by COUNT(uniqueidentifier) DESC