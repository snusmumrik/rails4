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

$ ->
  $("a.anchor[href^=#]").click ->
    speed = 500
    href = $(this).attr("href")
    target = $((if href is "#" or href is "" then "html" else href))
    position = target.offset().top
    $("html, body").animate
      scrollTop: position
    , speed, "swing"
    false
