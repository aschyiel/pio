# see https://github.com/benatkin/grunt-coffee-example/blob/master/Gruntfile.coffee
module.exports = (grunt) ->

  grunt.initConfig
    coffee:
      app:
        expand: true
        cwd: 'src'
        src: ['**/*.coffee']
        dest: 'build'
        ext: '.js'
    watch:
      app:
        files: '**/*.cofee'
        tasks: ['coffee']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['coffee']

