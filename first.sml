
(* This is a comment. This is our first program. *)

val x = 34; (* int *)
(* static environment: x : int because 34 is an int *)
(* dynamic environment: x --> 34 *)

val y = 17;
(* static env type check *)
(* dynamic environment: x --> 34, y --> 17 *)

(* Each of these are BINDINGS *)

val z = (x + y) + (y + 2);
(* Type check says int + int yields int and 2 is int - static environment *)
(* static env doesn't evaluation, just passes through and checks types *)

val q = z + 1;
(* You can't use later bindings - must be predefined *)

val abs_of_z = if z < 0 then 0 - z else z;

val abs_of_z_simpler = abs z; (* calling a function *)
