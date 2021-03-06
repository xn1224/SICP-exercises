(*
Kevin C. Baird
SICP in Standard ML:
    Exercise 2.7  - Interval Arithmetic
    Exercise 2.8  - Add sub
    Exercise 2.9  - Add width
*)

use "./lib/interval.sml";

val i1 = Interval.make(2.0, 9.0)
val i2 = Interval.make(3.0, 5.0)
val i3 = Interval.add(i1, i2)
val i4 = Interval.mult(i1, i2)
val i5 = Interval.sub(i1, i2)
val w1 = Interval.width(i1)
val w2 = Interval.width(i2)
val i6 = Interval.divide(i1, i1)
val i7 = Interval.divide(i3, i4)
