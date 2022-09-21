%let fullname = Taylor Rodriguez;
title1 "By &fullname on &sysdate at &systime";

proc sort data = total;
	BY DESCENDING API; /* Highest API at top*/
run;

proc print data = total (firstobs = 1 obs = 10);
	format total 5.3; /*for 3 decimal places*/
run;
