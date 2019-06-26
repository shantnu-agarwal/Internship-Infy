//FOR ADMIN TO ADD NEW ACCOUNT

console.log("Running Validation Service");
bootstrapValidate('#validationName',
		'max:25:Name cannot be longer than 25 characters!');
bootstrapValidate('#validationName',
		'regex:^[A-Z,a-z ,.\'-]+$:Your name must consist of letters only!');




bootstrapValidate('#validationMobileNumber',
'numeric:You can only enter numbers for your mobile number!');
bootstrapValidate('#validationMobileNumber',
'min:10:Please check your mobile number!');
bootstrapValidate('#validationMobileNumber',
'max:10:Please check your mobile number!');


bootstrapValidate('#validationUsername',
'max:25:Username cannot be longer than 25 characters!');
bootstrapValidate('#validationUsername',
'min:5:Username must be longer than 5 characters!');
bootstrapValidate('#validationUsername',
'alphanum:Your username cannot consist of special characters and white spaces');

bootstrapValidate(
		'#validationPassword',
		'min:5:Try to make a longer password');
bootstrapValidate(
'#validationConfirmPassword',
'matches:#validationPassword:Please check that your password matches in both the fields');




var form = $('#accountForm');
form.submit(function() {

	$.ajax({
		type : form.attr('method'),
		url : form.attr('action'),
		data : form.serialize(),
		success : function (data) {
			var result=data;
			if(result=="Done!"){
				console.log("Received SUCCESS from Server");
				$('#response').text("The account has been created successfully. You can continue to add more.");
				document.getElementById("response").style.visibility = 'visible';
				document.getElementById("response").style.color = 'green';
				document.getElementById("productForm").reset();
			}
			else{
				console.log("Received FAILURE from Server");
				$('#response').text("There was a problem with your request, please check your inputs and try again");
				document.getElementById("response").style.visibility = 'visible';
				document.getElementById("response").style.color = 'red';
			}
		}

		
	});

	return false;
});