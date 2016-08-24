function shareIt(var1){
		if(var1 == 'fb'){
				window.open('https://www.facebook.com/sharer/sharer.php?u=' + encodeURIComponent(location.href),'facebook-share-dialog','width=626,height=436');
		}
		if(var1 == 'twtr'){
				window.open("http://twitter.com/intent/tweet?text=" + document.URL, "", 'width=600,height=400,scrollbars=yes');
			}
	}