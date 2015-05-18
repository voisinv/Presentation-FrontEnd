directory = ''
module.exports = (grunt) ->

  grunt.initConfig
    pkg : grunt.file.readJSON 'package.json'

    connect:
      options:
        hostname: 'localhost'
        livereload: 35729
        port: 3000
      start:
        options:
          base: ['./angular/start']
          open: true
          keepalive: true
      service:
        options:
          base: ['./angular/service']
          open: true
          keepalive: true
      formulaire:
        options:
          base: ['./angular/formulaire']
          open: true
          keepalive: true
      textangular:
        options:
          base: ['./angular/textangular']
          open: true
          keepalive: true
      router:
        options:
          base: ['./angular/router']
          open: true
          keepalive: true






  grunt.loadNpmTasks 'grunt-contrib-connect'

  grunt.registerTask 'server', (arg)->
    directory = arg
    console.log directory
    grunt.task.run 'connect:'+arg

  grunt.registerTask 'default', (part) ->
    grunt.task.run 'connect:' +  grunt.option('target')

