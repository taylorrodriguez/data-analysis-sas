proc import out=mydata 
datafile="C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/Midterm/ExamEx1.xls"
dbms=excel replace;
run;
ods html path="C:\Users\terod\OneDrive\Documents\Applied Statistics MS\Courses\STAT475\Midterm";
proc means n mean median std min max range maxdec=2;
	class group;
run;
ods html close;
