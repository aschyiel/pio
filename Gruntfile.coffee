module.exports = (grunt) ->

  grunt.initConfig
    coffee:
      default:
        expand: true
        flatten: true
        cwd: 'src'
        src: ['**/*.coffee']
        dest: 'build'
        ext: '.js'
    concat:
      default:
        src: [
          'build/namespace.js'
          'src/js/angular_sorter_ctrl.js'
          'build/default_data.js'
          'build/index.js'
        ]
        dest: 'build/app.js'
    watch:
      app:
        files: '**/*.cofee'
        tasks: ['default']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['coffee', 'concat']

