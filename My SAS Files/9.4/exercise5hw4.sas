data pets;
infile 'C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework4/pets.dat';
input gender $ pet $ npets @@;
cards;

proc format;
value $petfmt
 'cockatie' = 'C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework4/cockatiel.jpg'
	'rabbit' = 'C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework4/rabbit.jpg'
	'turtle' = 'C:/Users/terod/OneDrive/Documents/Applied Statistics MS/Courses/STAT475/homework4/turtle.jpg';
run;

proc tabulate;
	title 'Number of Cute Pets Owned by Families of 3rd Graders';
	class gender pet;
	classlev pet/s = [postimage = $petfmt. background = green foreground = white];
	classlev gender/s = [background = purple just = r foreground = white];
	var npets;
	table gender = {s=[background = blue foreground = white]}, pet={s=[background = pink foreground = white]}*npets = ' ' *sum/box = '# of Pets';
	keylabel sum = ' ';
run; 
