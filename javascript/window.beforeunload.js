window.addEventListener("beforeunload", function (e) {
	var confirmationMessage = "\o/";
	e.returnValue = confirmationMessage; // Gecko, Trident, Chrome 34+
	return confirmationMessage; // Gecko, WebKit, Chrome <34
});