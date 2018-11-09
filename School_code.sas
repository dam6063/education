data elem;
infile 'C:\Users\jss4431\Desktop\NC Schools\School_data.csv' dsd firstobs=2;
input grade$ num_test pct_crr pct_glp school_code$ subgroup$ subject$ type$ year school_name$ district_name$ County_name$;
run;

/* Overall means are the same for years (2013 2014 2015) for var [num_test, pct_crr, pct_glp] */
proc means data=elem;
class year;
run;

/*As well as means within Counties*/
proc sort data=elem out=elem_sort;
by County_name;
run;
proc means data=elem_sort;
class year;
by County_name;
run;
