function removeClass() {
	$("#main, #wrapper").removeClass();
}

function handleOpenEvent(data) {
	document.getElementById('main').style.display = 'block';
	position = data.position;
	title = data.title;
	message = data.message;
	color = data.color;
	help = '[Backspace] Close';
	$('#title').html(title);
	$('#message').html(message);
	$('#help').html(help);

	$('#ui').css({ 'left': '', 'right': '1%' }).removeClass('hideright').addClass('showright');

	if (['blue', 'green', 'red', 'grey'].includes(data.color)) {
		removeClass();
		$('#wrapper').addClass(`${data.color} ${data.color}-border`);
	}
}

function handleCloseEvent() {
	$('#ui').removeClass('hideleft showleft showright').addClass('hideright');
	setTimeout(() => {
		document.getElementById('main').style.display = 'none';
		
	}, 500);
}

window.addEventListener('message', function(event) {
	if (event.data.action == 'open') {
		handleOpenEvent(event.data);
	} else if (event.data.action == 'close') {
		handleCloseEvent();
	}
});
