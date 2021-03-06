/**
  * Ex1_07.scala
  * Kevin C. Baird
  * SICP in Scala (http://www.scala-lang.org/documentation/)
  *
  * Redefine the tolerance to be a certain fraction
  * of the guess, rather than a constant value.
  */

def sqrt(x: Double) = {
  def sqrtIter(guess: Double, x: Double): Double = {
    def improve(guess: Double, x: Double) = {
      (guess + (x / guess)) / 2.0
    }
    def goodEnough(guess: Double, x: Double) = {
      def square(x: Double)    = { x * x }
      def tolerance(x: Double) = { x * 0.001 }
      (math.abs((square(guess)) - x)) < tolerance(guess)
    }
    goodEnough(guess, x) match {
      case true  => guess
      case false => sqrtIter(improve(guess, x), x)
    }
  }
  sqrtIter(1.0, x)
}

/**
  * execute with
  * scala -i Ex1_07.scala -e "println(sqrt(2.0))"
  * until I figure out a better way
  */

