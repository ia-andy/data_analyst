/***5. At what time of day do most users book classes? Attend classes? (Morning = 7-11 AM, Afternoon = 12-4 PM, Evening = 5-10 PM)***/

/*Attending Classes**/
select
    CASE WHEN CAST(class_time_at AS TIME) >= '07:00:00' AND CAST(class_time_at AS TIME) < '12:00:00' THEN 'Morning'
		 WHEN CAST(class_time_at AS TIME) >= '12:00:00' AND CAST(class_time_at AS TIME) < '17:00:00' THEN 'Afternoon'
         WHEN CAST(class_time_at AS TIME) >= '17:00:00' AND CAST(class_time_at AS TIME) < '22:00:00' THEN 'Evening'
			ELSE 'Off-Hours' END AS Check_In_Times,
	COUNT(uniqueidentifier) AS COUNT
from peerfit.all_reservations AS all_reservations
group by CASE WHEN CAST(class_time_at AS TIME) >= '07:00:00' AND CAST(class_time_at AS TIME) < '12:00:00' THEN 'Morning'
		 WHEN CAST(class_time_at AS TIME) >= '12:00:00' AND CAST(class_time_at AS TIME) < '17:00:00' THEN 'Afternoon'
         WHEN CAST(class_time_at AS TIME) >= '17:00:00' AND CAST(class_time_at AS TIME) < '22:00:00' THEN 'Evening'
			ELSE 'Off-Hours' END
		 
         
   /**Booking Classes**/      
select
    CASE WHEN CAST(reserved_at AS TIME) >= '07:00:00' AND CAST(reserved_at AS TIME) < '12:00:00' THEN 'Morning'
		 WHEN CAST(reserved_at AS TIME) >= '12:00:00' AND CAST(reserved_at AS TIME) < '17:00:00' THEN 'Afternoon'
         WHEN CAST(reserved_at AS TIME) >= '17:00:00' AND CAST(reserved_at AS TIME) < '22:00:00' THEN 'Evening'
         WHEN reserved_at IS NULL THEN NULL
			ELSE 'Off-Hours' END AS Reserved_At_Times,
	COUNT(uniqueidentifier) AS COUNT
from peerfit.all_reservations AS all_reservations
group by CASE WHEN CAST(reserved_at AS TIME) >= '07:00:00' AND CAST(reserved_at AS TIME) < '12:00:00' THEN 'Morning'
		 WHEN CAST(reserved_at AS TIME) >= '12:00:00' AND CAST(reserved_at AS TIME) < '17:00:00' THEN 'Afternoon'
         WHEN CAST(reserved_at AS TIME) >= '17:00:00' AND CAST(reserved_at AS TIME) < '22:00:00' THEN 'Evening'
         WHEN reserved_at IS NULL THEN NULL
			ELSE 'Off-Hours' END




		
