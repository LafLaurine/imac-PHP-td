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

function isEmpty(obj) {
    for(var key in obj) {
        if(obj.hasOwnProperty(key))
            return false;
    }
    return true;
}


document.getElementById('button-search').onclick = event => {
	event.preventDefault();
	const form = document.querySelector('#form-movies');
    let params = {};
    if(form.title.value)
        params ['title'] = form.title.value;
    if(form.date.value)
        params['date'] = form.date.value;
    if(form.genre.value)
		params['genre'] = form.genre.value;
	if(form.director.value)
		params['director'] = form.director.value;

    let url = new URL("/PHP/TD02/fil_rouge/api/movies/search.php", "http://localhost");
    url.search = new URLSearchParams(params);
    console.log(url);

    var request = new XMLHttpRequest();
    request.onreadystatechange = () => {
        if(request.readyState == 4) {
            if(request.status == 200)
            {
				Array.prototype.isArray = true;
				var response = JSON.parse(request.responseText);
							
				if(isEmpty(params)) {
					console.log("ok");
					console.log(response);
				}

				else {
				var node = document.getElementById("section-movies");
			
				for(var i = 0; i < response.length; i++) {
					var title = document.createElement('h3');
					title.setAttribute('class','movie-title');
					node.appendChild(title);
					title.innerHTML = response[i].title;

					var textnodeDate = document.createTextNode(response[i].date + " ");
					node.appendChild(textnodeDate);
					if(response[i].genre.isArray) {
						for(var j = 0; j < response[i].genre.length; j++) {
							var textnodeGenre = document.createTextNode(response[i].genre[j] + " ");
							node.appendChild(textnodeGenre);
						} 
					}	
					else {
						var textnodeGenre = document.createTextNode(response[i].genre + " ");
						node.appendChild(textnodeGenre);					
					}
					
					if(response[i].director.isArray) {
						for(var j = 0; j < response[i].director.length; j++) {
							var textnodeDirector = document.createTextNode(response[i].director[j] + " ");
							node.appendChild(textnodeDirector);
						} 
					}	
					else {
						var textnodeDirector = document.createTextNode(response[i].director + " ");
						node.appendChild(textnodeDirector);	
					}	
				}
			}
				
            }

            else {
                console.log("Erreur");
            }
        }

    };
    request.open("GET", url,true);
    request.send();
};
