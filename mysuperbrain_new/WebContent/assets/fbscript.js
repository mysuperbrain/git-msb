window.fbAsyncInit = function() {
	FB.init({
		appId : '1162642317128373',
		cookie : true, // enable cookies to allow the server to access
		oauth : true, // the session
	//	xfbml : true, // parse social plugins on this page
		version : 'v2.1' // use version 2.1
	});

};
(function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id))
		return;
	js = d.createElement(s);
	js.id = id;
	js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.1";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
	function fb_login() {
	
	FB.login(function(response) {

		if (response.authResponse) {
			
			var user_email=null;
			FB.api('/me', function(response) {
				
				if (response.email == undefined) {
								
						var mail = bootbox.prompt("Please enter your mail","example@mail.com");
						user_email = mail;
					
				} else {
					user_email = response.email;
				}
				if(user_email.length>0){
					
					voteEntryViaFB(user_email);
				
				}else{
					bootbox.alert("invalid email");
				}
			});
			
		} else {
			bootbox.alert('User cancelled login or did not fully authorize.');

		}
	}, {
		scope : 'publish_actions,email'
	});
}
