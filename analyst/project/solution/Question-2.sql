/***2. Which studio has the highest rate of reservation abandonment (did not cancel but did not check-in)?***/

SELECT
	 studio_key,
    SUM(CASE WHEN cancelled = 0 THEN 1 ELSE 0 END) AS NotCancelled,
    SUM(CASE WHEN checked_in = 0 AND cancelled = 0 THEN 1 ELSE 0 END) AS NotChecked_in,
    (SUM(CASE WHEN checked_in = 0 AND cancelled = 0 THEN 1 ELSE 0 END))/(SUM(CASE WHEN cancelled = 0 THEN 1 ELSE 0 END)) AS AbandonRate
FROM peerfit.all_reservations AS all_reservations
WHERE all_reservations.studio_key IS NOT NULL
GROUP BY all_reservations.studio_key
ORDER BY AbandonRate DESC
