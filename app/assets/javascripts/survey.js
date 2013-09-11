// Configure events for the AUDIT page (page 2)
function configureAudit() {
  $("#used input:radio").on("change", function() {
    if ($("#used input:radio:checked").val() == "No") {
      $(".audit").hide();
      $(".audit select").removeClass("required");
    } else {
      $(".audit").show();
      $(".audit select").addClass("required");
    }
  });
  $("#q11 select").on("change", function() {
    if ($("#q11 select").val() == "Yes, during the last 6 months") {
      $(".help").show();
      $(".help input").addClass("required")
    } else {
      $(".help").hide();
      $(".help input").removeClass("required")
    }
  });
  $(".help input").on("click", function() {
    if ($(".help input:checked").length > 0) {
      $(".help input").removeClass("required");
      $(".help p").removeClass("error");
    } else {
      $(".help input").addClass("required");
    }
    if ($("#other").prop("checked")) {
      $(".help textarea").addClass("required");
    } else {
      $(".help textarea").removeClass("required");
    }
  });
}

function p4q0() {
  var val = $("#q0 select").val();
  if (val == "Yes") {
    $("#q1").show();
    $("#q1").children("input").addClass("required");
  } else {
    $("#q1").hide();
    $("#q1").children("input").removeClass("required");
  }
}

function p4q1() {
  var val = $("#q1 select").val();
  if (val == "My drinking increased" || val == "My drinking decreased") {
    $("#q2,#q3,#q4,#q5,#q19").show();
    $("#q2,#q3,#q4,#q5").children("input").addClass("required");
  } else {
    $("#q2,#q3,#q4,#q5,#q19").hide();
    $("#q2,#q3,#q4,#q5").children("input").removeClass("required");
  }
}

function configurePage4() {
  p4q0();
  p4q1();
  $("#q0 select").on("change", p4q0);
  $("#q1 select").on("change", p4q1);
}

function p5q0() {
  var val = $("#q0 select").val();
  if (val == undefined || val == "No") {
    $("#q1").show();
    $("#q1 input").addClass("required");
  } else {
    $("#q1").hide();
    $("#q1 input").removeClass("required");
  }
}

function configurePage5() {
  p5q0();
  $("#q0 select").on("change", p5q0);
}

function p6q3() {
  var val = $("#q3 select").val();
  if (val == "Yes") {
    $("#q4,#q5").show();
    $("#q4,#q5").children("input,textarea").addClass("required");
  } else {
    $("#q4,#q5").hide();
    $("#q4,#q5").children("input,textarea").removeClass("required");
  }
}

function configurePage6() {
  p6q3();
  $("#q3 select").on("change", p6q3);
}

function missedAlert(form, validator) {
  var errors = validator.numberOfInvalids();
  if (errors) {
    var message = errors == 1
      ? 'You missed 1 question. It has been highlighted.'
      : 'You missed ' + errors + ' questions. They have been highlighted.<br/>';
    $("#dialog-confirm").html(message);
    $("#dialog-confirm").dialog("open");
    // Make sure dialog in centred after scrolling up to focus on first missed question.
    setTimeout("$('#dialog-confirm').dialog('widget').position({my: 'center', at: 'center', of: window});", 20);
  }
}

function configureCheck() {
  jQuery.validator.messages.required = "";

  $("#dialog-confirm").dialog({
    autoOpen: false,
    resizable: false,
    width: 500,
    modal: true,
    buttons: {
      "Go back to missed questions": function() {
        $( this ).dialog( "close" );
        $("input:blank").first().focus();
      }
    }
  });

  $("form").validate({
    highlight: function(element, errorClass, validClass) {
      $(element).parents("p,tr,ul").addClass(errorClass);
    },
    unhighlight: function(element, errorClass, validClass) {
      $(element).parents("p,tr,ul").removeClass(errorClass);
    },
    focusInvalid: true,
    invalidHandler: missedAlert
  });
}

function configureIndex() {
  jQuery.validator.messages.required = "Invalid participant code - please double check your letter or email and try again.";
  $("form").validate({
    wrapper: "div"
  });
}
