module.exports = (grunt) ->

  grunt.initConfig

    watch:
      coffee:
        files: ['src/api/**/*.coffee', 'src/server.coffee','src/api/*.coffee', 'src/require.coffee']
        tasks: 'coffee:compile'
      cson:
        files: 'src/data/**/*.cson'
        tasks: 'copy:data'

    coffee:
      compile:
        options:
          join: true
        files:
          '.build/server.js': ['src/require.coffee','src/server.coffee','src/api/**/*.coffee','src/api/*.coffee']

    nodemon:
      dev:
        script: 'server.js'
        options:
          ext: 'js'
          cwd: '.build'
          watch: ['../.build']

    concurrent:
      dev:
        tasks: ['watch', 'nodemon'],
        options:
          logConcurrentOutput: true

    copy:
      data:
        expand: true
        cwd: 'src/data/'
        src: '**'
        dest: '.build/data'

    clean: [".build"]

  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-nodemon')
  grunt.loadNpmTasks('grunt-concurrent')
  grunt.loadNpmTasks('grunt-contrib-copy')
  grunt.loadNpmTasks('grunt-contrib-clean')

  grunt.registerTask('default', ['clean', 'coffee:compile', 'copy:data','concurrent'])
