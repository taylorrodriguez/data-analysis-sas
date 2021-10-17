proc import out=method3
	datafile="C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework1/NBA.xls"
		dbms=excel replace;
run;

proc print data=method3;
run;
