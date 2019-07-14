let phillyApiURLstring = "https://bwayvs.github.io/temple-inn/js/temple-info.json
phillyContactRequest.open('GET', phillyApiURLstring, true);
phillyContactRequest.send();

phillyContactRequest.onload = function() {
    let phillyContactData = JSON.parse(phillyContactRequest.responseText);
    document.getElementById("phillyaddress").innerHTML = phillyContactData.temples[2].address;
    document.getElementById("phillyphone").innerHTML = phillyContactData.temples[2].phone;
    document.getElementById("phillyemail").innerHTML = phillyContactData.temples[2].email;
}

