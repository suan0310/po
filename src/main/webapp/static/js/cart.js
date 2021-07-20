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
function selDelete(){
	var frm =  document.cart;
	frm.action="/user/delete";
	frm.method="post";
	frm.submit();
	}
  
 function selOrder(){
 	var frm = document.cart;
 	frm.action="/user/goOrder";
 	frm.method="get";
 	frm.submit();
 	}