%let fullname = Taylor Rodriguez;

proc sort data = TMP2.surveyresults;
	BY SchoolName;
run;

proc sort data = TMP3.api;
	BY SchoolName;
run;

data merged;
  MERGE TMP2.surveyresults TMP3.api;
  BY SchoolName;
run;

data merged;
	SET merged;
	IF q1 = "." THEN DELETE;
run;

proc print data = merged;
	title1 "By &fullname on &sysdate at &systime";
run;
