(*
author:   "Kevin C. Baird"
purpose:  "SICP in Standard ML: Demonstrate an operator that is a compound procedure (i.e., not known at compile time)."
*)

fun a_plus_abs_b(a, b) =
  let
    val add = fn(x, y)=>x+y
    val sub = fn(x, y)=>x-y
  in
    case (b < 0) of
        true => sub(a, b)
      | _    => add(a, b)
  end;