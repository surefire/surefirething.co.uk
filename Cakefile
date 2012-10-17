fs      = require 'fs'
{print} = require 'util'
{spawn} = require 'child_process'

task 'docs', 'Generate HTML documentation', ->
  docco = spawn './node_modules/.bin/docco', ['lib/*.coffee']
  docco.stdout.on 'data', (data) ->
    print data.toString()
  docco.stderr.on 'data', (data) ->
    print data.toString()
  docco.on 'exit', (status) ->
    callback?() if status is 0
