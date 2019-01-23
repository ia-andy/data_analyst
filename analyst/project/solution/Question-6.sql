/***6. How many confirmed completed reservations did the member (ID) with the most reserved classes in February have?***/

SELECT
	memberidentifier,
    SUM(checked_in) AS confirmed_classes
FROM	peerfit.all_reservations AS all_reservations
WHERE CAST	(all_reservations.class_time_at AS DATE) >= '2018-02-01' AND CAST(all_reservations.class_time_at AS DATE) < '2018-03-01'
GROUP BY	all_reservations.memberidentifier
ORDER BY	SUM(checked_in) DESC
