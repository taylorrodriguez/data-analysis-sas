%let fullname = Taylor Rodriguez;

proc sql;
	title1 "By &fullname on &sysdate at &systime";
	SELECT region, count (stationname) as num_stations
	FROM TMP1.snowstationsdata
	GROUP BY region;
quit;
