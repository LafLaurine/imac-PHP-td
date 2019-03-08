const button = document.querySelector('#buttonSubmit');

function getAge(dateString) {
    var today = new Date();
    var birthDate = new Date(dateString);
    var age = today.getFullYear() - birthDate.getFullYear();
    var m = today.getMonth() - birthDate.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
        age--;
    }
    return age;
}

button.onclick = event => {
    event.preventDefault();
    const form = document.querySelector('#formulaire');
    let params = {};
    if(form.firstname.value)
        params ['firstname'] = form.firstname.value;
    if(form.lastname.value)
        params['lastname'] = form.lastname.value;
    if(form.birthday.value)
        params['birthday'] = form.birthday.value;
    let url = new URL("/PHP/TD02/exo2/salutation.php", "http://localhost");
    url.search = new URLSearchParams(params);
    console.log(url);

    var request = new XMLHttpRequest();
    request.onreadystatechange = () => {
        if(request.readyState == 4) {
            if(request.status == 200)
            {
                var response = JSON.parse(request.responseText);
                console.log(response);
                var node = document.getElementById("result");
                var textnode = document.createTextNode("Bonsoire, je m'appelle " + response.prenom);
                var nom = document.createTextNode(" " + response.nom);
                var birthdate = document.createTextNode(" et j'ai " + getAge(response.birthdate) + " ans");
                node.appendChild(textnode); 
                node.appendChild(nom);                              
                node.appendChild(birthdate);                              
                             
            }

            else {
                console.log("Erreur");
            }
        }

    };
    request.open("GET", url,true);
    request.send();
};