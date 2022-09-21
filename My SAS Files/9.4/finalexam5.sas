%let fullname = Taylor Rodriguez;

proc sql number;
	title1 "By &fullname on &sysdate at &systime";
	SELECT year, count (stationid) as num_stations
	FROM TMP1.snowstationsdata
	GROUP BY year;
quit;
