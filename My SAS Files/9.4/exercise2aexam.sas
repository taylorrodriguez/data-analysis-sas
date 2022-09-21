data mydata;
infile 'C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/Midterm/ExamEx2.dat';
input ID $ A $ B $;
run;
proc freq;
	tables A*B;
run;
