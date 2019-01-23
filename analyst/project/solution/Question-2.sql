/***2. Which studio has the highest rate of reservation abandonment (did not cancel but did not check-in)?***/

select
	studio_key,
    SUM(CASE WHEN cancelled = 0 THEN 1 ELSE 0 END) AS NotCancelled,
    SUM(CASE WHEN checked_in = 0 THEN 1 ELSE 0 END) AS NotChecked_in,
    (SUM(CASE WHEN checked_in = 0 THEN 1 ELSE 0 END))/(SUM(CASE WHEN cancelled = 0 THEN 1 ELSE 0 END)) AS AbandonRate
from peerfit.all_reservations as all_reservations
group by all_reservations.studio_key
order by AbandonRate Desc
