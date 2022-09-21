%let fullname = Taylor Rodriguez;

proc sql;
	title1 "By &fullname on &sysdate at &systime";
	SELECT count (DISTINCT stationid) as num_stations
	FROM tmp1.snowstationsdata;
quit;
