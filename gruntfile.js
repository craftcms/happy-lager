module.exports = function(grunt) {
    // Project Configuration
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        watch: {
            sass: {
                files: ['web/assets/css/sass/*.scss'],
                tasks: 'sass'
            },
            concat: {
                files: ['<%= concat.dist.src %>', '<%= concat.dist.dest %>'],
                tasks: 'concat'
            },
            uglify: {
                files: ['<%= uglify.build.src %>', '<%= uglify.build.dest %>'],
                tasks: 'uglify'
            },
            js: {
                files: ['web/assets/js/**', 'src/assets/js/*.js'],
                tasks: ['jshint']
            }
        },
        sass: {
            dist: {
                files: {
                    'web/assets/css/happylager.css': 'web/assets/css/sass/happylager.scss'
                }
            }
        },
        imageoptim: {
              myTask: {
                  src: ['web/assets/site', 'web/assets/images']
              }
        },
        uglify: {
            options: {
                banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
            },
            build: {
                src: 'web/assets/js/master.js',
                dest: 'web/assets/js/master.min.js'
            }
        },
        concat: {
            options: {
                separator: ';'
            },
            dist: {
                src: ['web/assets/js/jquery-1.10.2.js', 'web/assets/js/plugins/*.js', 'web/assets/js/main.js'],
                dest: 'web/assets/js/master.js'
            }
        },
        jshint: {
            all: ['gruntfile.js', 'src/js/main.js']
        }
    });

    //Load NPM tasks
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-imageoptim');

    //Making grunt default to force in order not to break the project.
    grunt.option('force', true);

    // Optimize images.
    grunt.registerTask('img', ['imageoptim']);

    // Default task(s).
    grunt.registerTask('default', ['sass','concat', 'uglify', 'jshint', 'watch']);

};
