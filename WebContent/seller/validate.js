console.log("Running Validation Service");

bootstrapValidate('#validationName',
		'max:100:Name cannot be longer than 100 characters!');
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
			
			if(data=="NOT OKAY"){
				console.log("Received FAILURE from Server");
				$('#response').text("There was a problem with your request, please check your inputs and try again");
				document.getElementById("response").style.visibility = 'visible';
				
			}
			else{
				console.log(data);
				console.log("Received SUCCESS from Server");
				$('#response').text("Your product has been added successfully. You can continue to add more products now.");
				document.getElementById("response").style.visibility = 'visible';
				document.getElementById("productForm").reset();
				document.getElementById("SetInputID").value = parseInt(data);
				
			}
		}

		
	});

	return false;
});