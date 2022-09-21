data knee_data;
input ID$ knee_num$ preop oneday oneweek onemonth;
cards;
01           1               0              5                7                 10
02           1               0             10               15                 15
02           2               3              5                8                 10
03           1               0              3                3                  3
03           2               0              6                9                  9
04           1               0              4                10                 10
;
data knee1_score;
   set knee_data;
        array xx{4} preop oneday oneweek onemonth;
   			do i=1 to 4;

	if knee_num =1;
		visit=i;
		score= xx{i};
		output;
	keep id visit score;
   end;
run;

proc print data=knee1_score noobs;
run;
