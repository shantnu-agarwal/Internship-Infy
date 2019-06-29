window.addEventListener('load', function() {
	console.log("All assests loaded.");
	var formElement = $("#viewcartform");
	console.log(formElement.serialize());
	$.ajax({
		type : "GET",
		url : "ViewCart",
		data : formElement.serialize(),
		success : function(data) {
			var result;
				
		}
	});
	return false;
});