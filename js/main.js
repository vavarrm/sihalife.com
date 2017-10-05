function getCookieJson ()
{
		var temp_ary =[];
		var cookie_temp = unescape($.cookie('shopCar')).split('|');
		$.each(cookie_temp,function(i,e){
			if (typeof e === 'string') {
				var obj = JSON.parse(e);
				console.log(obj);
				temp_ary.push(obj); 
			}
			
		})
		return temp_ary; 
}

$(function() {
	
    // $( "#dialog" ).dialog();
 
	
	$('#nav-login').bind('click', function(e){
		e.preventDefault();
		$( "#dialog" ).dialog({
			width:'auto',
			resizable: false,
			modal: true,}
		).removeClass('hidden');
		// dialog.dialog( "open" );
	})

});