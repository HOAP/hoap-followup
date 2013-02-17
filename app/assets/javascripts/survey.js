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
