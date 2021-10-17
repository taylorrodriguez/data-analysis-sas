data method2;
infile 'C:/Users/terod/OneDrive/Documents/My SAS Files/9.4/exercise1b.dat';
input Team & $12. Attendance Price;
run;

proc print data=method2;
run;
