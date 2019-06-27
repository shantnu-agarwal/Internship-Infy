console.log("Running Validation Service");

bootstrapValidate('#validationName',
		'max:20:Name cannot be longer than 20 characters!');
bootstrapValidate('#validationName',
'regex:^[0-9,A-Z,a-z ,.\'-]+$:Your name must consist of letters only!');

bootstrapValidate('#validationPrice',
		'numeric:You can only enter a numeric value!');
bootstrapValidate('#validationPrice',
		'max:6:Your product price cannot exceed 9,99,999!');

bootstrapValidate('#validationDescription',
		'max:1000:Product description cannot be longer than 1000 characters!');
bootstrapValidate('#validationDescription',
		'min:10:Please provide a reasonably long description to your product');

function foo(val){
	var op = document.getElementById("validationCategory");
	
	console.log(val + " selected, of Category: " + op.options[op.selectedIndex].value);
	
	/*if(op.options[op.selectedIndex].value == "Electronics"){
		console.log("inside elec if");
		bootstrapValidate('#validationSubCategory', 'inArray:(Air Conditioner, Television, Refrigerator):Please choose the correct combination of Category and Sub Category');
	}
	
	if(op.options[op.selectedIndex].value == "Books"){
		bootstrapValidate('#validationSubCategory','inArray:(study,novel):Please choose the correct combination of Category and Sub Category');
	}*/
		
	
}

bootstrapValidate(
		'#validationQuantity',
		'max:2:You cannot have more than 99 items of the same type in stock at the same time.');

var form = $('#productForm');
form.submit(function() {

	$.ajax({
		type : form.attr('method'),
		url : form.attr('action'),
		data : form.serialize(),
		success : function (data) {
			var result=data;
			if(result=="NOT OK"){
				console.log("Received FAILURE from Server");
				$('#response').text("There was a problem with your request, please check your inputs and try again");
				document.getElementById("response").style.visibility = 'visible';
				
			}
			else{
				console.log(result);
				console.log("Received SUCCESS from Server");
				$('#response').text("Your product has been added successfully. You can continue to add more products now.");
				document.getElementById("response").style.visibility = 'visible';
				document.getElementById("productForm").reset();
				
			}
		}

		
	});

	return false;
});