$(document).ready(function() {
	$("#login_username").attr('placeholder', 'User Name');
	$("#login_username").attr('autocomplete', 'off');
	$("#login_password").attr('placeholder', 'Password');
	$("#login_password").attr('autocomplete', 'off');
	$("#login_username").attr('required', 'true');
	$("#login_password").attr('required', 'true');
	$("#name").attr('placeholder', 'Your Name');
	$("#reg_username").attr('placeholder', 'Your User Name');
	$("#reg_username").attr('autocomplete', 'off');
	$("#reg_password").attr('placeholder', 'Password');
	$("#cpassword").attr('placeholder', 'ConfirmPasswrod');
	$("#dob").attr('placeholder', 'Date Of Birth');
	$("#school").attr('placeholder', 'Your School Name');
	$("#zip").attr('placeholder', 'Your area zipcode');
	$("#state").attr('placeholder', 'Your State');
	$("#city").attr('placeholder', 'Your city');
	$("#country").attr('required', 'true');
	$("#phone").attr('placeholder', 'Your Phone Number');
	$("#name").attr('required', 'true');
	$("#reg_username").attr('required', 'true');
	$("#gender").attr('required', 'true');
	$("#reg_password").attr('required', 'true');
	$("#cpassword").attr('required', 'true');
	$("#dob").attr('required', 'true');
	$("#school").attr('required', 'true');

	$("#phone").attr('required', 'true');

	$("#email").attr('placeholder', 'Your EMail Address');
	$("#email").attr('required', 'true');

	$('form').attr('autocomplete', 'off');
	$("#dob").datepicker({
		changeMonth : true,
		changeYear : true,
		yearRange : "1970:<%=Calendar.getInstance().get(Calendar.YEAR)  %>",
		altFormat : "yyyy/mm/dd",

	});
	$('#email').keyup(function() {
		var email = $('#email').val();
		if (validateEmail(email)) {
			$(this).css('background-color', 'white');
		} else {
			$(this).css('background-color', 'red');
		}
	});
	function validateEmail(email) {
		var filter = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
		if (filter.test(email)) {
			return true;
		} else {
			return false;
		}
	}
	$('#phone').keypress(function(key) {
		if (key.charCode < 48 || key.charCode > 57)
			return false;
		if ($('#phone').val().length > 9)
			return false;
	});
	$('#paypal').hide();
});

function check_username_availability(username) {

	$.ajax({
		type : "post",
		url : "usercheck.jsp",
		data : "usernameToCheck=" + username,
		cache : false,
		success : function(result) {
			var available = username + ' is available';
			var unavailable = username + ' is not Available';

			if (result == 0) {
				$('#check_username').css({
					"color" : "blue"
				});
				$('#check_username').css({
					"font-size" : "small"
				});
				$('#check_username').text(available);

			} else {
				$('#check_username').css({
					"color" : ""
				});
				$('#check_username').css({
					"color" : "red"
				});
				$('#check_username').text(unavailable);

			}
		},

	});

}
function changePaymentMode(country) {
	
	if (country == 'United Arab Emirates') {
		$('#paymentLabel').hide();
		$('#free').hide();
		$('#netBanking').hide();
		$('#card').hide();
		$('#paypal').show();
	}else{
		
		$('#paypal').hide();
		$('#free').show();
		$('#netBanking').show();
		$('#card').show();
		$('#paymentLabel').show();
	
	}
}
