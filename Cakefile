sys = require 'sys'
exec = (require 'child_process').exec

FILENAME = 'sample_map3d'
FILES = [
  'coffee/game.coffee',
  'coffee/map3d.coffee',
]
HTMLFILE = 'index.html'

task 'compile', 'compile Sample_Map3d.', (options) ->
  outputErr = (err, stdout, stderr) ->
    throw err if err
    if stdout or stderr
      console.log "#{stdout} #{stderr}"
  if FILES.length is 1
    exec "coffee -c #{FILENAME}.js #{FILES[0]}", outputErr
  else
    exec "coffee -cj #{FILENAME} #{FILES.join ' '}", outputErr 
