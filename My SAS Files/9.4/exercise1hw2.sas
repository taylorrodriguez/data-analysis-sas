proc import out=mydata 
	datafile="C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework2/Asthma_Ex1.xls" 
	dbms=excel replace;
run;

ods html path="C:\Users\terod\OneDrive\Documents\Applied Statistics MS\Courses\STAT475\homework2\";
	title1 "Asthma Patients";
	title2 "Basic Data Set";
	footnote1 "Data from Medical Records";
	options nonumber nodate;

	proc sort data=mydata out=mydataout;
		by Smoking Patient;
	run;

	proc print data=mydataout noobs;
		var Patient Asthma Age BMI;
		format BMI 5.2;
		by Smoking;
	run;

ods html close;
ods listing;
