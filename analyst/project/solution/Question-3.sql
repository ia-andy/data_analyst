/***3. Which fitness area (i.e., tag) has the highest number of completed reservations for February?***/

SELECT
	class_tag,
    COUNT(uniqueidentifier) AS COUNT
FROM	peerfit.all_reservations AS all_reservations
WHERE	(CAST(all_reservations.checked_in_at AS DATE) > '2018-02-01'
		AND CAST(all_reservations.checked_in_at AS DATE) < '2018-03-01')
GROUP BY	all_reservations.class_tag
ORDER BY COUNT(uniqueidentifier) DESC