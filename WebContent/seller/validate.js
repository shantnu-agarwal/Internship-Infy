console.log("Running Validation Service");

bootstrapValidate('#validationName',
		'max:20:Name cannot be longer than 20 characters!');
bootstrapValidate('#validationName','alphanum:Product Name has to be alpha numeric only!');


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

var form = $('#register');
form.submit(function() {

	$.ajax({
		type : form.attr('method'),
		url : form.attr('action'),
		data : form.serialize(),
		success : function (data) {
			var result=data;
			if(result=="OK"){
				$('#response').text("You have been registered successfully. Please proceed to login!");
				document.getElementById("postRegButton").style.visibility = 'visible';
			}
			else{
				$('#response').text("There was a problem with your registration, please try again");
			}
		}

		
	});

	return false;
});