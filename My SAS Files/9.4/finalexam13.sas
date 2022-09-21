%let fullname = Taylor Rodriguez;
title1 "By &fullname on &sysdate at &systime";

data total;
	SET input;
	Total = q1 + q2 + (mean(q3a,q3b,q3c,q3d,q3e,q3f,q3g,q3h)) + (4 - q4) + q5 + q6 + (4 - q7) + (mean(q8a,q8b,q8c,q8d,q8e));
run;

proc print data = total;
run;
