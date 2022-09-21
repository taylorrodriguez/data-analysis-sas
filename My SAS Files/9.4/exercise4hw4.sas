%macro LLN(p,n);

data Bernoulli;
	do time = 1 to &n;
		u = rand("Bernoulli", &p);
		subtotal + u;
		mean_u = subtotal / time;
		output;
		keep mean_u time;
	end;
run; 

symbol value = square interpol = join color = red;

proc gplot data = Bernoulli;
	plot mean_u * time / vref = &p;
	run;
quit;

%mend;

%LLN(0.5, 100);
