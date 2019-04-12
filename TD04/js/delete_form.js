// document ready in ES6
Document.prototype.ready = callback => {
	if(callback && typeof callback === 'function') {
		document.addEventListener("DOMContentLoaded", () =>  {
			if(document.readyState === "interactive" || document.readyState === "complete") {
				return callback();
			}
		});
	}
};

document.getElementById('button-search').onclick = event => {
	event.preventDefault();
	const form = document.querySelector('#form-movies-create');
	let params = {};
    if(form.id.value)
        params['id'] = form.id.value;
	var body = JSON.stringify(params);
	var request = new XMLHttpRequest();
    request.onreadystatechange = () => {
        if(request.readyState == 4) {
            if(request.status == 200)
            {
                Array.prototype.isArray = true;
                console.log(request);
				var response = JSON.parse(request.responseText);
			}

        }
        else {
            console.log("Erreur");
        }
    }

	request.open("DELETE", "http://localhost/PHP/TD04/api/movies/delete.php",true);
	request.setRequestHeader("Content-Type", "application/json");
    request.send(null);
};
