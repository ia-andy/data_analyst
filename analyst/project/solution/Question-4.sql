/***4. How many members completed at least 1 reservation and had no more than 1 cancelled reservation in January?***/

SELECT
	all_reservations.memberidentifier,
    nestedreservations.completed_reservations,
    nestedreservations.cancelled_reservations
FROM	peerfit.all_reservations AS all_reservations
	LEFT JOIN (select
				memberidentifier,
                SUM((CASE WHEN CAST(checked_in_at AS DATE) >= '2018-01-01' AND CAST(checked_in_at AS DATE) < '2018-02-01' THEN 1 ELSE 0 END)) AS completed_reservations,
                SUM((CASE WHEN CAST(class_time_at AS DATE) >= '2018-01-01' AND CAST(class_time_at AS DATE) < '2018-02-01' AND cancelled = 1 THEN 1 ELSE 0 END )) AS cancelled_reservations
				FROM	peerfit.all_reservations AS reservations
                GROUP BY	reservations.memberidentifier)
			AS nestedreservations ON all_reservations.memberidentifier = nestedreservations.memberidentifier
WHERE	(nestedreservations.completed_reservations >= 1 AND nestedreservations.cancelled_reservations <=1)
GROUP BY	all_reservations.memberidentifier
