fs = require 'fs'
gulp = require 'gulp'
coffee = require 'coffee-script'

paths =
  coffee: 'src/coffee/**/*.coffee'
  entry: 'src/coffee/app.coffee'

gulp.task 'run', ->
  fs.readFile paths.entry, encoding: 'utf-8', (err, data) ->
    throw err if err
    try
      coffee.run data
    catch err
      console.error err.stack

gulp.task 'watch', ->
  gulp.watch paths.coffee, ['run']

gulp.task 'default', ['watch', 'run']
