/***1. Across all reservation partners for January & February, how many completed reservations occurred?***/

select  SUM(all_reservations.checked_in) AS Completed_Reservations
from	peerfit.all_reservations as all_reservations
where 	CAST(all_reservations.checked_in_at AS DATE) >= '2018-01-01'
		AND CAST(all_reservations.checked_in_at AS DATE) < '2018-03-01'


