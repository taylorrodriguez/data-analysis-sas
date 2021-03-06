data mydata;
	input StateName & $20. StateAbbrev $ PostalAbbrev $ Area comma8. Population comma11.;
	cards;
Alabama  Ala.  AL  52,423  4,040,587
Alaska  Alaska  AK  656,424  550,043
Arizona  Ariz.  AZ  114,006  3,665,228
Arkansas  Ark.  AR  53,182  2,350,725
California  Calif.	CA  163,707  29,769,021
Colorado  Colo.	CO  104,100  3,294,394
Connecticut  Conn.	CT  5,544  3,287,116
Delaware  Del.	DE  2,489  666,168
District of Columbia  D.C.	DC  68  606,900
Florida  Fla.  FL  65,756  12,937,926
Georgia  Ga.	GA  59,441  6,478,216
Hawaii  Hawaii	HI  10,932  1,108,229
Idaho  Idaho	ID  83,574  1,006,749
Illinois  Ill.	IL  57,918  11,430,602
Indiana  Ind.	IN  36,420  5,544,159
Iowa  Iowa	IA  56,276  2,776,755
Kansas  Kans.	KS  82,282  2,477,574
Kentucky  Ky.	KY  40,411  3,685,296
Louisiana  La.	LA  51,843  4,219,973
Maine  Maine	ME  35,387  1,227,928
Maryland  Md.	MD  12,407  4,781,468
Massachusetts  Mass.	MA  10,555  6,016,425
Michigan  Mich.	MI  96,705  9,295,297
Minnesota  Minn.	MN  86,943  4,375,099
Mississippi  Miss.	MS  48,434  2,573,216
Missouri  Mo.	MO  69,709  5,117,073
Montana  Mont.  MT  147,046  799,065
Nebraska  Nebr.	NE  77,358  1,578,385
Nevada  Nev.  NV  110,567  1,201,833
New Hampshire  N.H.	NH  9,351  1,109,252
New Jersey  N.J.	NJ  8,722  7,730,188
New Mexico  N.Mex.	NM  121,598  1,515,069
New York  N.Y.	NY  54,471  17,990,455
North Carolina  N.C.	NC  53,821  6,628,637
North Dakota  N.Dak.	ND  70,704  638,800
Ohio  Ohio	OH  44,828  10,847,115
Oklahoma  Okla.	OK  69,903  3,145,585
Oregon  Oreg.	OR  98,386  2,842,321
Pennsylvania  Pa.	PA  46,058  11,881,643
Rhode Island  R.I.	RI  1,545  1,003,464
South Carolina  S.C.	SC  32,008  3,468,703
South Dakota  S.Dak.	SD  77,121  696,004
Tennessee  Tenn.	TN  42,146  4,877,185
Texas  Tex.	TX  268,601  16,986,510
Utah  Utah	UT  84,904  1,722,850
Vermont  Vt.	VT  9,615  562,758
Virginia  Va.	VA  42,777  6,187,358
Washington  Wash.	WA  71,302  4,866,692
West Virginia	W.Va.	WV  24,231  1,793,477
Wisconsin  Wis.	WI  65,499  4,891,769
Wyoming	 Wyo.	WY  97,818  453,588
;

proc report  data=mydata wd headline headskip split='&';
title;
options nonumber nodate;
column StateName StateAbbrev PostalAbbrev Area Population;
define StateName/ 'State Name';
define StateAbbrev/ 'State Abbrev.';
define PostalAbbrev/ 'Postal Abbrev.';
define Area/ 'Area (Sq Mi)' format=comma8.;
define Population/ format=comma11.;
run;
