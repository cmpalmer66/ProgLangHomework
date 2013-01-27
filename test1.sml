(* should be false *)
is_older((2012,12,1),(2010,3,2));
(* true *)
is_older((2010,3,2),(2012,12,1));
(* false *)
is_older((2012,3,10),(2012,3,9));
(* true *)
is_older((2012,3,9),(2012,3,10));
(* false *)
is_older((2012,3,13),(2012,3,13));

val d1 = (1983,5,28);
    val d2 = (1983,9,12);
    val d3 = (1983,9,10);
    val d4 = (1980,10,1);
    val ds = [d1,d2,d3,d4];
    val ms1 = [5,9];
    val ms2 = [9,11,6];
    val ms3 = [1,2,3,4,6,7,8];
    val ms4 = [10,5];

    val check11 = is_older(d1,d2)=true;
    val check12 = is_older(d2,d1)=false;
    val check13 = is_older(d1,d1)=false;
    val check14 = is_older(d3,d2)=true;
    val check15 = is_older(d2,d3)=false;
    val check16 = is_older(d4,d1)=true;

    val check21 = number_in_month(ds,5)=1;
    val check22 = number_in_month(ds,9)=2;
    val check23 = number_in_month(ds,7)=0;

    val check31 = number_in_months(ds,ms1)=3;
    val check32 = number_in_months(ds,ms2)=2;
    val check33 = number_in_months(ds,ms3)=0;

    val check41 = dates_in_month(ds,5)=[d1];
    val check42 = dates_in_month(ds,9)=[d2,d3];
    val check43 = dates_in_month(ds,7)=[];

    val check51 = dates_in_months(ds,ms1)=[d1,d2,d3];
    val check52 = dates_in_months(ds,ms2)=[d2,d3];
    val check53 = dates_in_months(ds,ms3)=[];
    val check54 = dates_in_months(ds,ms4)=[d4,d1];

    val ss1 = ["one","two","three","four","five"];
    val check61 = get_nth(ss1,2)="two";
    val check62 = get_nth(ss1,1)="one";

    val check71 = date_to_string(d1)="May 28, 1983";
    val check72 = date_to_string(d2)="September 12, 1983";
    val check73 = date_to_string(d3)="September 10, 1983";
    val check74 = date_to_string(d4)="October 1, 1980";

    val numbers = [1, 6, 9, 4, 2, 19];
    val check81 = number_before_reaching_sum (8, numbers)=2;
    val check82 = number_before_reaching_sum (17, numbers)=3;
    val check83 = number_before_reaching_sum (21, numbers)=4;
    val check84 = number_before_reaching_sum (1, numbers)=0;

    val check91 = what_month (10)=1;
    val check92 = what_month (360)=12;
    val check93 = what_month (150)=5;
    val check94 = what_month (290)=10;
    val check95 = what_month (60)=3; (* no leap years *)

    val check101= month_range(29,34)=[1,1,1,2,2,2];
    val check102= month_range(20,19)=[];
    val check103= month_range(101,101)=[4];
    val check104= month_range(304,305)=[10,11];

    val check111= oldest([])=NONE;
    val check112= oldest([d2])=SOME(d2);
    val check113= oldest(ds)=SOME(d4);

