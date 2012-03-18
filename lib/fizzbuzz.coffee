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

exports.run = run
exports.as = as