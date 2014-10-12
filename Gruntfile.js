module.exports = function (grunt) {

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        sass: {
            dist: {
                files: [{
                        expand: true,
                        cwd: 'sass',
                        src: ['*.scss'],
                        dest: 'css',
                        ext: '.css'
                    }]
            }
        },
        watch: {
            files: ['**/*.scss'],
            tasks: ['sass']
        }
    });

    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.registerTask('default', ['sass', 'watch']);

};