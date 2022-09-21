%let fullname = Taylor Rodriguez;
title1 "By &fullname on &sysdate at &systime";

proc gplot data = total;
	plot Total * API;
run;
