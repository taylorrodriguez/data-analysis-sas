%let fullname = Taylor Rodriguez;

proc contents data = TMP1.snowstationsdata short;
	title1 "By &fullname on &sysdate at &systime";
run;
