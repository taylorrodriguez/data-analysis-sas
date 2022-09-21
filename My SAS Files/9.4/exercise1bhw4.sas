proc import out = grades484
	datafile = "C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework4/grades484.xls"
 		dbms = excel replace;
run;

proc import out = grades550
	datafile = "C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework4/grades550.xls"
 		dbms = excel replace;
run;

proc import out = grades695
 	datafile = "C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework4/grades695.xls"
 		dbms = excel replace;
run;

proc sql NUMBER;
	SELECT a.id, a.grade label = '550 Grade', b.grade label = '695 Grade' 
	FROM grades550 as a, grades695 as b
	WHERE a.id = b.id;
quit;
