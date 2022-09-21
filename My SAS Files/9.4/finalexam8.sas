%let fullname = Taylor Rodriguez;

proc sql;
	title1 "By &fullname on &sysdate at &systime";
	SELECT count (DISTINCT region) as num_regions 
	FROM TMP1.snowstationsdata;
quit;
