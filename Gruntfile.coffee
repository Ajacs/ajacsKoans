module.exports = (grunt) ->
  grunt.initConfig
    watch:
      koans:
        files: ['spec/**/about_*.coffee']
        tasks: ['jasmine_node']

    jasmine_node:
      koans: ['spec']
      options:
        coffee: true
        matchall: true
        extensions: 'coffee'
        specNameMatcher: 'about_'

  grunt.loadNpmTasks 'grunt-jasmine-node'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['jasmine_node', 'watch']
