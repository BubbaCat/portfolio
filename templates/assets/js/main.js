$(document).ready(function() {

	$('#deletePostImg').click(function (e) {
		e.preventDefault();
		$('#deletePostImgCheckBox').slideDown();
		$('#deleteImgCheckBox')[0].checked = true;
	});

	// CKEDITOR.replace('ckEditor');

var size = 30,
    newsContent= $('.card__title');
    newsContent.forEach(function(){
			 
	  for (i = 0; i < a.length; i++) {
    newsText = newsContent.text();
			if(newsText.length > size){
				newsContent.text(newsText.slice(0, size) + ' ...');
				}
}	

});

});


