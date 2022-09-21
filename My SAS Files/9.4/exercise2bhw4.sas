proc import out = glaucoma
	datafile = "C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework4/glaucoma.xls"
		dbms = excel replace;
run;

proc sql;
	SELECT count (DISTINCT ID) as num_patients_on_medication
	FROM glaucoma
	WHERE nmeds > 0;
quit;

proc sql;
	SELECT count (DISTINCT ID) as num_patients_off_medication
	FROM glaucoma
	WHERE nmeds = 0;
quit;
