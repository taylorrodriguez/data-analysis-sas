%let fullname = Taylor Rodriguez;

proc sql;
	title1 "By &fullname on &sysdate at &systime";
	CREATE TABLE newdata

	SELECT * FROM TMP1.snowstationsdata;
	UPDATE newdata
	SET stationname = "ADIN MOUNTAIN"
	WHERE stationname = "ADIN MOUTAIN";

	SELECT DISTINCT stationname FROM newdata;
quit;
