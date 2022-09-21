data productinfo;
title "Product Information";
footnote "Updated on &sysdate";
input prodnum $1-4 prodname & $22. manunum $ prodtype & $11. rtlcost comma6.0;
cards;
5009 Dream Machine  500  Workstation  $3,200
4506 Business Machine  450  Workstation  $3,345
2101 Travel Laptop  400  Laptop  $2,760
2212 Analog Cell Phone  230  Phone  $35
4509 Digital Cell Phone  245  Phone  $175
5003 Office Phone  560  Phone  $145
1110 Spreadsheet Software  134  Software  $300
1200 Database Software  113  Software	 $799
3409 Statistical Software  243  Software  $1,899
2102 Wordprocessor Software  245  Software  $345
2200 Graphics Software  246  Software	 $599
;

proc sql;
	INSERT INTO productinfo
	SET prodnum = "3480", prodname = "Desktop Computer", manunum = "780", prodtype = "Workstation", rtlcost = 1799;
	ALTER TABLE productinfo
	MODIFY prodnum label = "Product Number", prodname label = "Product Name", 
        manunum label = "Manufacturer Number", prodtype label = "Product Type", rtlcost label = "Retail Unit Cost" format = dollar9.2;
quit;

proc sql;
	UPDATE productinfo
	SET rtlcost =
		case
			when prodtype = "Software" then (rtlcost*1.2)
				else (rtlcost*0.8)
		end;
 	SELECT *
	FROM productinfo;
quit;

