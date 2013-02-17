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
  $(".audit:last select").on("change", function() {
    if ($(".audit:last select").val() == "Yes, during the last 6 months") {
      $(".help").show();
    } else {
      $(".help").hide();
    }
  })
}

function configurePage3() {
  $("#a13 input:radio").on("change", function() {
    var val = $("#a13 input:radio:checked").val();
    if (val == undefined || val == "Yes") {
      $("#q14,#a14").show();
      $("#a14 input").addClass("required");
    } else {
      $("#q14,#a14").hide();
      $("#a14 input").removeClass("required")
    }
  });
}
