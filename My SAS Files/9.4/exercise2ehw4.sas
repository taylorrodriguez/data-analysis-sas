proc import out = glaucoma
	datafile = "C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework4/glaucoma.xls"
		dbms = excel replace;
run;

proc sql;
	SELECT type, count (DISTINCT ID) as num_patients
	FROM glaucoma
	GROUP BY type;
quit;
