%let fullname = Taylor Rodriguez;
%let lastname = %scan(&fullname, 2);
%let i = 1;
%let count = %eval(&i+&i);
%put &count;

data pointsScored;
	input id$ game1 game2 game3 game4 final;
cards;
1267 12 22 19 16 10 22
1268 32 12 25 33 20 23
1269 7 5 11 4  16 16
1270 0 0 5 3 0 2
;

%macro printmacro (data);
	title1 "This assignment is completed by &lastname on &sysday, &sysdate, at &systime";
	title2 "&i + &i = &count";
	options nodate;
	proc print data = &data;
	run;
%mend;

%printmacro(pointsScored)
