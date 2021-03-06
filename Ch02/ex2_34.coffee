###
Kevin C. Baird
SICP in CoffeeScript:
  Exercise 2.34 - Horner's Rule
###

car        = require('./lib/lispy').car
cdr        = require('./lib/lispy').cdr
cons       = require('./lib/lispy').cons
accumulate = require('./lib/lispy').accumulate

hornerEval = (x, coefficientSequence) ->
  f = (thisCoeff, higherTerms) ->
    (x * higherTerms) + thisCoeff
  accumulate(f, 0, coefficientSequence)

console.log(hornerEval(1, [1,2,3]))
console.log(hornerEval(2, [1,2,3]))
