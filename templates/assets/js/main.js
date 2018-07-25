$(document).ready(function() {

	$('#deletePostImg').click(function (e) {
		e.preventDefault();
		$('#deletePostImgCheckBox').slideDown();
		$('#deleteImgCheckBox')[0].checked = true;
	});

	// CKEDITOR.replace('ckEditor');
var size = 51,
newContent = $('.card__title');
$.each(newContent, function(index, value){
if ($(this).text().length > size) {
		$(this).text($(this).text().slice(0, size) + '...');
}

});
var sizePort = 27	,
newContentPort =  $('.card-portfolio .card__title');
$.each(newContentPort, function(index, value){
if ($(this).text().length > sizePort) {
		$(this).text($(this).text().slice(0, sizePort) + '...');
}

});

});


