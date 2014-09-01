module.exports = function(grunt) {
    grunt.initConfig({

        less: {
            development: {
                options: {},
                files: {
                    "../../../app/assets/stylesheets/compiled/styles.css": "../../../app/assets/stylesheets/less/styles.less"
                }
            }
        },
        watch: {
            less: {
                files: [
                    '../../../app/assets/stylesheets/less/*.less'
                ],
                tasks: 'less'
            }
        }

    });
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.registerTask('default', ['less']);
};
