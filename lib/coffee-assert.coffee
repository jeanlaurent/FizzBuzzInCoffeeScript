runTest = (testSuite) ->
  try
    i=0;
    for name,test of testSuite
      i++
      console.log "Running #{name}"
      do test 
      console.log "----- ok"
    console.log "#{i} Tests successfull"
  catch error 
    console.log "----- failed"
    console.log "    #{error}"

assertEquals = (value, expected) ->
  if (value != expected) 
    throw "#{value} is not equal to #{expected}"

exports.runTest = runTest
exports.assertEquals = assertEquals
