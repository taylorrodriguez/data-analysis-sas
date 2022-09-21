data knee_data;
input id$ knee_num$ preop oneday oneweek onemonth;
cards;
01           1               0              5                7                 10
02           1               0             10               15                 15
02           2               3              5                8                 10
03           1               0              3                3                  3
03           2               0              6                9                  9
04           1               0              4                10                 10
;
proc format;
	value visits
		1 = 'pre_op'
		2 = 'day 1'
		3 = 'week 1'
		4 = 'month 1'
		;
run;
data knee1_score;
   set knee_data;
        array xx{4} preop oneday oneweek onemonth;
   			do i=1 to 4;

	if knee_num =1;
		vlsit=i;
		score= xx{i};
		output;
	keep id vlsit score;
   end;
run;

data knee2_score;
   set knee_data;
        array xx{4} preop oneday oneweek onemonth;
   			do i=1 to 4;

	if knee_num =2;
		vlsit=i;
		score= xx{i};
		output;
	keep id vlsit score;
   end;
run;

data merged_score (drop = vlsit);
merge knee1_score (rename=(score=score_knee1))
	  knee2_score (rename=(score=score_knee2));
	  visit = put((vlsit),visits.);
by id;


proc print data = merged_score noobs;
var id visit score_knee1 score_knee2;
run;
