// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
//= require jquery_ui_1_10_2
//= require jquery_ui_datepicker_pt_BR

jQuery(function($) {

  $('.best_in_place').best_in_place();

  $('.date').datepicker();

  $('.btn_start_at').click(function(){ $('#retrospective_start_at').datepicker('show'); });
  $('.btn_finish_at').click(function(){ $('#retrospective_finish_at').datepicker('show'); });

  $('#best_in_place_retrospective_2_finish_at input').focus(function(){
    $(this).datepicker('change', { minDate: $('#best_in_place_retrospective_2_start_at').text()});
  });
  $('#retrospective_start_at').change(function(){
    $('#retrospective_finish_at').datepicker('change', { minDate: $(this).val()});
  });
  $('#retrospective_finish_at').change(function(){
    $('#retrospective_start_at').datepicker('change', { maxDate: $(this).val()});
  });

