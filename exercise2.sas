data method4;
 do counter= 1 to 93;
 length group $11;
  group='surgical';
  response='yes';
  output;
 end;

 do counter= 1 to 1034;
  group='surgical';
  response='no';
  output;
 end;

 do counter= 1 to 21;
  group='nonsurgical';
  response='yes';
  output;
 end;

 do counter= 1 to 768;
  group='nonsurgical';
  response='no';
  output;
 end;

run;

proc print data=method4;
run;
