/***Total Reservations Across Both Data Sets & #7 on Questionnaire***/

DROP TABLE all_reservations;

CREATE TABLE all_reservations AS
select  *
from	(select
            concat("mindbody",id) as uniqueidentifier,
            "mindbody" AS location,
			id,
			member_id,
			studio_key,
			studio_address_street,
			studio_address_city,
			studio_address_state,
			studio_address_zip,
			class_tag,
			viewed_at,
			NULL AS instructor_full_name,
			reserved_at,
			NULL AS level,
			canceled_at,
			CASE WHEN canceled_at IS NULL THEN 0
				ELSE 1 END AS cancelled,
			NULL AS reserved_for,
			class_time_at,
			checked_in_at,
            CASE WHEN checked_in_at IS NULL THEN 0
				ELSE 1 END AS checked_in
		from peerfit.mindbody_reservations

		UNION ALL

		select
			concat("clubready",id) as uniqueidentifier,
            "clubready" AS location,
			id,
			member_id,
			studio_key,
			NULL AS studio_address_street,
			NULL AS studio_address_city,
			NULL AS studio_address_state,
			NULL AS studio_address_zip,
			class_tag,
			NULL AS viewed_at,
			instructor_full_name,
			NULL AS reserved_at,
			level,
            NULL AS canceled_at,
			CASE WHEN canceled = 't' THEN 1
				ELSE 0 END AS canceled,
			reserved_for,
			NULL AS class_time_at,
			signed_in_at,
            CASE WHEN signed_in_at IS NULL THEN 0
				ELSE 1 END AS checked_in
		from peerfit.clubready_reservations)
	AS all_reservations
    

 
 
 

