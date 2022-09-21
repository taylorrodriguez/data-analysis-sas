data docvisits; 
 input patientID $ weekday $ score; 
 cards; 
 101 Monday 10
 101 Friday 15
 112 Tuesday 11
 123 Monday 9
 123 Tuesday 10
 123 Friday 9
 104 Friday 23
 104 Saturday 20
 157 Tuesday 10
 157 Thursday 18
 157 Saturday 21
; 
proc sql;
SELECT patientID, count (*) as num_visits
FROM docvisits
GROUP BY patientID;
quit;
