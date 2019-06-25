console.log("Running Validation Service");
bootstrapValidate('#validationName',
		'max:25:Name cannot be longer than 25 characters!');
bootstrapValidate('#validationName',
		'min:5:Name must be longer than 5 characters!');
bootstrapValidate('#validationName',
		'regex:^[a-z ,.\'-]+$:Your name must consist of small letters only!');
bootstrapValidate('#validationEmail', 'email:Enter a valid email address');
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
		'#validationConfirmPassword',
		'matches:#validationPassword:Please check that your password matches in both the fields');


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
