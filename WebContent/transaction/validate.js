console.log("Running Validation Service");

bootstrapValidate('#validationPincode', 'numeric:Enter a valid pincode');
bootstrapValidate('#validationPincode', 'min:6:Enter a valid pincode');
bootstrapValidate('#validationPincode', 'max:6:Enter a valid pincode');
