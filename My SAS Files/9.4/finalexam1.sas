%let fullname = Taylor Rodriguez;

proc sql;
	title1 "By &fullname on &sysdate at &systime";
	SELECT count (stationid) as num_rows  
	FROM TMP1.snowstationsdata;
quit; 

