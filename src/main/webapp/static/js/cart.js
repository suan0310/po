 $('#allCheck').change(()=>{
        if($('#allCheck').prop('checked')){
            $('input[name="RowCheck"]').prop('checked',true);
        }else{
            $('input[name="RowCheck"]').prop('checked',false);
        }
 });  

$(".RowCheck").click(function(){
    $("#allCheck").prop("checked", false);
  });

