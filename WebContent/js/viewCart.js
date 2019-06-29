var num =1;

window.addEventListener('load', function() {
	console.log("All assests loaded.");
	var formElement = $("#viewcartform");
	console.log(formElement.serialize());
	$.ajax({
		type : "GET",
		url : "ViewCart",
		data : formElement.serialize(),
		success : function(data) {
			let parsed = JSON.parse(data);
			console.log("Parsed incoming data as " + parsed);
			var i=0;
			while(parsed[i]<parsed.length){
				console.log(parsed[i]);
				$('#response').text="";
			}
				
			
			
			
				
		}
	});
	return false;
});