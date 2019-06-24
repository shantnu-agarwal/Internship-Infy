console.log("Running Validation Service");
bootstrapValidate('#validationName',
		'max:25:Name cannot be longer than 25 characters!');
bootstrapValidate('#validationName',
		'min:5:Name must be longer than 5 characters!');
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
bootstrapValidate(
		'#validationConfirmPassword',
		'matches:#validationPassword:Please check that your password matches in both the fields');
