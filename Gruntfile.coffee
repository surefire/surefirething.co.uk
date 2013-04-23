module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    docco:
      src: './lib/*.coffee'
      options:
       output: 'docs/'

  grunt.loadNpmTasks 'grunt-docco'

  grunt.registerTask 'default', ['docco']
