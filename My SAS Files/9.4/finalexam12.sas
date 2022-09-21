%let fullname = Taylor Rodriguez;

title1 "By &fullname on &sysdate at &systime";

/* q2 had to be changed to numeric to run correctly*/

data merged;
	SET merged;
	num = input(q2, 3.);
	DROP q2;
	RENAME num = q2;
run;

proc means data = merged mean;
	VAR q2;
	OUTPUT out = output mean = q2mean;
run;
proc print data = output;
run;

data _null_;
	SET output;
	CALL symput("q2mean", q2mean);
run;

%put &q2mean;

data input;
	RETAIN SchoolName q1 q2;
	SET merged;
	IF q2 = '.' THEN q2 = "&q2mean";
run;

proc print data = input;
run;
