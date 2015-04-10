module.exports = (grunt) ->

  grunt.initConfig
    pkg : grunt.file.readJSON 'package.json'





  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-connect'

  grunt.registerTask 'server', ->
    grunt.task.run ''

