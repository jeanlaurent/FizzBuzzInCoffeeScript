run = ->
  console.log(as(x)) for x in [1..100]
    
as = (x) ->
    result = ""
    if multiple(x,3) 
      result += "fizz"
    if multiple(x,5)
      result +="buzz"
    if result != ""
      result
    else
      "#{x}"

multiple = (x,y) -> x % y == 0

tests = {
  "One return one": -> assertEquals as(1) , "1"
  "three return fizz" : -> assertEquals as(3),"fizz"
  "five return buzz" : -> assertEquals as(5),"buzz"
  "15 return fizzbuzz" : -> assertEquals as(15),"fizzbuzz"
}

runTest = ->
  try
    do test for name,test of tests
    console.log "Tests successfull"
  catch error 
    console.log "Test FAILED : "
    console.log "    #{error}"

assertEquals = (value, expected) ->
  if (value != expected) 
    throw "#{value} is not equal to #{expected}"

exports.run = run
exports.runTest = runTest

