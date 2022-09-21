proc import out = glaucoma
	datafile = "C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework4/glaucoma.xls"
		dbms = excel replace;
run;

proc sql;
	SELECT gender, count (DISTINCT id) as num_patients
	FROM glaucoma
	GROUP BY gender;
quit;
