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

// fill genres from data_genres.php
document.ready( () => {
	fetch("./api/genres/read.php") // à corriger si cela ne fonctionne pas
		.then( response => response.json() )
		.then( data => {
			let genres = document.getElementById('list-genre');
			data.forEach( genre => {
				let radio = document.createElement("input");
				radio.type = "radio";
				radio.name = "genre";
				radio.value = genre;
				radio.id = "input-radio-" + genre.toLowerCase();

				let label = document.createElement("label")
				label.htmlFor = "input-radio-" + genre.toLowerCase();
				label.innerHTML = genre;

				let li  = document.createElement("li");
				li.appendChild(radio);
				li.appendChild(label);

				genres.appendChild(li);
			});
		})
		.catch(error => { console.log(error) });
});


document.getElementById('button-create').onclick = event => {
	event.preventDefault();
	const form = document.querySelector('#form-movies-create');
	let params = {};
    if(form.title.value)
        params ['title'] = form.title.value;
    if(form.date.value)
        params['date'] = form.date.value;
    if(form.genre.value)
		params['genre'] = form.genre.value;
	if(form.director.value)
		params['director'] = form.director.value;
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

	request.open("POST", "http://localhost/PHP/TD04/api/movies/create.php",true);
	request.setRequestHeader("Content-Type", "application/json");
    request.send(body);
};

