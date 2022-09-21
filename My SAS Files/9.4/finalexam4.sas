%let fullname = Taylor Rodriguez;

proc sql number;
	title1 "By &fullname on &sysdate at &systime";
	SELECT stationid, count (year) as num_years
	FROM TMP1.snowstationsdata
	GROUP BY stationid;
quit;
