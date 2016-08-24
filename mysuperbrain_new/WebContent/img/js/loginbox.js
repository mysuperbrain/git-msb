
		$('.loginBox').hide();
		$('.loginBox').addClass('vsbl');
		$('#openLogin').click(function() {
			$("#username").attr('placeholder', 'Username');
			$("#password").attr('placeholder', 'Password');
			$("#username").attr('required', 'true');
			$("#password").attr('required', 'true');
			if ($('.loginBox').hasClass('vsbl')) {
				$('.loginBox').slideDown();
				$('.loginBox').removeClass('vsbl');
				$('#openLogin i').removeClass('icon-down-dir');
				$('#openLogin i').addClass('icon-up-dir');
			} else {
				$('.loginBox').addClass('vsbl');
				$('.loginBox').slideUp();
				$('#openLogin i').removeClass('icon-up-dir');
				$('#openLogin i').addClass('icon-down-dir');
			}
		});

