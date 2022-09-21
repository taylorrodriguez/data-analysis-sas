%let fullname = Taylor Rodriguez;

proc sql number;
	title1 "By &fullname on &sysdate at &systime";
	CREATE TABLE last50yrs as

	SELECT DISTINCT STATIONID, STATIONNAME, max(maxSWEinches) as TOTAL_MAX_SWE, REGION, ELEVATIONINFEET, LATITUDE, LONGITUDE
	FROM TMP1.snowstationsdata
	WHERE YEARRECORDBEGAN >= 1963 AND YEARRECORDENDS <= 2012;

	SELECT * FROM last50yrs;
quit;
