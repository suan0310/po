$(function() {
  $('.purchaseBtn1').click( function() {
    if( $(this).val() == '취소' ) {
      $(this).val('취소완료');
      $(this)
      .prop("disabled", true);
      $(this)
      .css("background-color", "#badbf9")
      .css("color","white")
    }
  });
});
