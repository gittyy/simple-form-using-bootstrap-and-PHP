
		function checkout()
		{
			
			var phone = document.getElementById("text4").value;
			var ch1 = true;
			var ch2 = false;;
			
			if (phone.length != 10) {
				ch1 = false;
				console.log("Length Should be 10");
				console.log(phone.length);
			}
			if (phone[0] >= 0 && phone[0] <= 6) {
				ch1 = false;
				console.log("Invalid Start");
			}
			
			for (var x = 0; x < phone.length; x++) {
				if (phone[x] >= '0' && phone[x] <= '9') {
				
				} else {
					ch1 = false;
					console.log("Invalid Character");
					break;
				}
			}
			
			if (ch1 == false) {
				alert("Please Enter Valid Phone Number");
				i = 1;
			}
			
			var pin = document.getElementById("text8").value;
			if (pin.length != 6){
				alert("Please Enter Valid Pincode");
			}
			
			var age=document.getElementById('text2').value;
			// convert age to a number
			age = parseInt(age, 10);

			//check if age is a number or less than or greater than 100
			if (isNaN(age) || age < 1 || age > 100)
			{ 
			  alert("The age must be a number between 1 and 100");
			  return false;
			}
			
			var percent=document.getElementById('text10').value;
			// convert age to a number
			percent = parseInt(percent, 10);

			//check if age is a number or less than or greater than 100
			if (isNaN(percent) || percent < 1 || percent > 100)
			{ 
			  alert("Percentage must be a number between 1 and 100");
			  return false;
			}
			
			var frm = document.getElementsByName('detail_form')[0];
			frm.submit(); // Submit the form
			frm.reset();  // Reset all form data
			return false; // Prevent page refresh
		}