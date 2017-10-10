//= require iCheck/icheck.min.js
//= require steps/jquery.steps.min.js
//= require validate/jquery.validate.min.js
//= require dropzone/dropzone.js
//= require summernote/summernote.min.js
//= require colorpicker/bootstrap-colorpicker.min.js
//= require cropper/cropper.min.js
//= require datapicker/bootstrap-datepicker.js
//= require ionRangeSlider/ion.rangeSlider.min.js
//= require jasny/jasny-bootstrap.min.js
//= require jsKnob/jquery.knob.js
//= require nouslider/jquery.nouislider.min.js
//= require switchery/switchery.js
//= require chosen/chosen.jquery.js
//= require fullcalendar/moment.min.js
//= require clockpicker/clockpicker.js
//= require daterangepicker/daterangepicker.js
//= require select2/select2.full.min.js
//= require touchspin/jquery.bootstrap-touchspin.min.js
//= require bootstrap-markdown/bootstrap-markdown.js
//= require bootstrap-markdown/markdown.js
//= require bootstrap-tagsinput/bootstrap-tagsinput.js
//= require dualListbox/jquery.bootstrap-duallistbox.js
//= require typehead/bootstrap3-typeahead.min.js
//= require codemirror/codemirror.js
//= require codemirror/mode/javascript/javascript.js

// datepicker formating for Ruby
$('.datepicker').datepicker(
	{format: 'yy-mm-dd'}
	);

// wizard initialization  
$(function(){
	$("#wizard").steps();
  $("#form").steps({
      bodyTag: "fieldset",
      onStepChanging: function (event, currentIndex, newIndex) {
          // Always allow going backward even if the current step contains invalid fields!
          if (currentIndex > newIndex) {
              return true;
          }

          // Forbid suppressing "Warning" step if the user is to young
          if (newIndex === 3 && Number($("#age").val()) < 18) {
              return false;
          }

          var form = $(this);

          // Clean up if user went backward before
          if (currentIndex < newIndex) {
              // To remove error styles
              $(".body:eq(" + newIndex + ") label.error", form).remove();
              $(".body:eq(" + newIndex + ") .error", form).removeClass("error");
          }

          // Disable validation on fields that are disabled or hidden.
          form.validate().settings.ignore = ":disabled,:hidden";

          // Start validation; Prevent going forward if false
          return form.valid();
      },
      onStepChanged: function (event, currentIndex, priorIndex) {
          // Suppress (skip) "Warning" step if the user is old enough.
          if (currentIndex === 2 && Number($("#age").val()) >= 18) {
              $(this).steps("next");
          }

          // Suppress (skip) "Warning" step if the user is old enough and wants to the previous step.
          if (currentIndex === 2 && priorIndex === 3) {
              $(this).steps("previous");
          }
      },
      onFinishing: function (event, currentIndex) {
          var form = $(this);

          // Disable validation on fields that are disabled.
          // At this point it's recommended to do an overall check (mean ignoring only disabled fields)
          form.validate().settings.ignore = ":disabled";

          // Start validation; Prevent form submission if false
          return form.valid();
      },
      onFinished: function (event, currentIndex) {
          var form = $(this);

          // Submit form input
          form.submit();
      }
  }).validate({
              errorPlacement: function (error, element) {
                  element.before(error);
              },
              rules: {
                  confirm: {
                      equalTo: "#password"
                  }
              }
          });

  });

