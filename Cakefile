{exec} = require "child_process"

printOut = (error, output) ->
  throw error if error
  process.stdout.write output

task "test", ->
  exec "mocha --compilers coffee:coffee-script --require should --colors", printOut

task "watch", ->
  watch = exec "coffee -j build/vector.js -cw src/"
  watch.stdout.on "data", (data) -> process.stdout.write data

task "build", ->
  exec "coffee -j lib/vector.js -c src/vector.coffee", printOut
