proc import out = glaucoma
	datafile = "C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework4/glaucoma.xls"
		dbms = excel replace;
run;

proc sql;
	SELECT gender, type, avg(age) as average_age format comma.1
	FROM glaucoma
	GROUP BY gender, type;
quit;
