module.exports = function(grunt) {
    grunt.initConfig({

        less: {
            development: {
                options: {},
                files: {
                    "../../../app/assets/stylesheets/compiled/styles.css": "../../assets/less/styles.less"
                }
            }
        },
        watch: {
            less: {
                files: [
                    '../../assets/less/*.less'
                ],
                tasks: 'less'
            }
        }

    });
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.registerTask('default', ['less']);
};
