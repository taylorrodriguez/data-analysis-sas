%let fullname = Taylor Rodriguez;

proc sql number;
	title1 "By &fullname on &sysdate at &systime";
	SELECT stationname, max(MaxSWEinches) as highest_max_swe
	FROM TMP1.snowstationsdata 
	GROUP BY stationname;
quit;
