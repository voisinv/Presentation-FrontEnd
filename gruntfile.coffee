directory = ''
module.exports = (grunt) ->

  grunt.initConfig
    pkg : grunt.file.readJSON 'package.json'

    connect:
      options:
        hostname: 'localhost'
        livereload: 35729
        port: 3000
      part1:
        options:
          base: ['./angular/part1']
          open: true
          keepalive: true
      part2:
        options:
          base: ['./angular/part2']
          open: true
          keepalive: true
      part3:
        options:
          base: ['./angular/part3']
          open: true
          keepalive: true
      part4:
        options:
          base: ['./angular/part4']
          open: true
          keepalive: true





  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-connect'

  grunt.registerTask 'server', (arg)->
    directory = arg
    console.log directory
    grunt.task.run 'connect:'+arg

  grunt.registerTask 'default', (part) ->
    grunt.task.run 'connect:' +  grunt.option('target')

