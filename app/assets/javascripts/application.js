// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets
//= require dropzone

/*
 *Dropzone.options.dropzone = { // The camelized version of the ID of the form element
 *
 *    url: "/creatives",
 *    paramName: "creative[image]",
 *    autoProcessQueue: false,
 *    uploadMultiple: true,
 *    maxFiles: 1,
 *
 *    // The setting up of the dropzone
 *    init: function() {
 *        var zone = this;
 *
 *        // First change the button to actually tell Dropzone to process the queue.
 *        this.element.querySelector("button[type=submit]").addEventListener("click", function(e) {
 *            // Make sure that the form isn't actually being sent.
 *            e.preventDefault();
 *            e.stopPropagation();
 *            zone.processQueue();
 *        });
 *
 *        // Listen to the sendingmultiple event. In this case, it's the sendingmultiple event instead
 *        // of the sending event because uploadMultiple is set to true.
 *        this.on("sendingmultiple", function() { });
 *        this.on("successmultiple", function(files, response) { });
 *        this.on("errormultiple", function(files, response) { });
 *    }
 *
 *};
 */
$(document).ready(function(){
    $("#creative_image").change(function () {
        $(".filename").text(this.value.split('\\').pop());
    });
});
