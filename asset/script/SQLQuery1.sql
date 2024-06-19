WITH bike_share as 
(
	SELECT * FROM bike_share_yr_0
	UNION ALL
	
	SELECT * FROM bike_share_yr_1
)
SELECT 
	dteday,
	season,	
	a.yr,
	weekday,
	hr,
	rider_type,
	riders,
	price,
	COGS,
	price * riders as revenu,
	(price * riders) - COGS as profit

	
FROM bike_share a
LEFT JOIN cost_table b
ON a.yr=b.yr
