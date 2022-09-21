proc import out = glaucoma
	datafile = "C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework4/glaucoma.xls"
		dbms = excel replace;
run;

proc sql;
	SELECT DISTINCT ID, timeonmeds, avg(timeonmeds)as avg_time, std(timeonmeds) as std_time, min(timeonmeds) as min_time, max(timeonmeds) as max_time 
	FROM glaucoma
	WHERE nmeds > 0;
quit;
