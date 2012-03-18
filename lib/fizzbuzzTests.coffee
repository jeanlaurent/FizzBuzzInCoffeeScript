test = require("./coffee-assert")
fizzbuzz = require("./fizzbuzz")

tests = {
  "One return one": -> test.assertEquals fizzbuzz.as(1) , "1"
  "three return fizz" : -> test.assertEquals fizzbuzz.as(3),"fizz"
  "five return buzz" : -> test.assertEquals fizzbuzz.as(5),"buzz"
  "15 return fizzbuzz" : -> test.assertEquals fizzbuzz.as(15),"fizzbuzz"
}

runAllTest = -> test.runTest tests

exports.runAllTest = runAllTest