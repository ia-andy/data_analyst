/***1. Across all reservation partners for January & February, how many completed reservations occurred?***/

SELECT  SUM(all_reservations.checked_in) AS Completed_Reservations
FROM	peerfit.all_reservations AS all_reservations
WHERE 	CAST(all_reservations.checked_in_at AS DATE) >= '2018-01-01'
		AND CAST(all_reservations.checked_in_at AS DATE) < '2018-03-01'


