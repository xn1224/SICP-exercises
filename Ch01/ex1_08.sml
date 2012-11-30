(*
Kevin C. Baird
SICP in Standard ML:
    Calculate cube roots using Newton's method.
*)

fun cbrt(x) =
    let
        fun square(x)             = x * x;
        fun cube(x)               = x * x * x;
        val tolerance             = 0.001;
        fun good_enough(guess, x) = (Real.abs(cube(guess) - x) < tolerance);
        fun improve(guess, x)     = (x / (square(guess)) + (2.0 * guess)) / 3.0;
        fun cbrt_helper(guess, x) =
            if good_enough(guess, x) then guess
                                     else cbrt_helper(improve(guess, x), x);
    in  cbrt_helper(1.0, x) end
