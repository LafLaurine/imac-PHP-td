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
				radio.type = "checkbox";
				radio.name = "movie-genre";
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


document.getElementById('button-search').onclick = event => {
	event.preventDefault();
	const form = document.querySelector('#form-movies-create');
    let url = "http://localhost/PHP/TD02/fil_rouge/api/movies/create.php";
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

    request.open("POST", url,true);
    request.send();
};
