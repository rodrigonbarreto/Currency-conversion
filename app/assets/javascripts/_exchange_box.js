$(document).ready(function(){
var currency = $("#currency");
var currency_destination = $("#currency_destination");
  $(document).on("click", "#changevalue", function () {
    var aux =  currency.val();
    currency.val(currency_destination.val());
    currency_destination.val(aux);
    $('form').submit();
  });
})
