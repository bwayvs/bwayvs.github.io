let index = ["4366164", "4560349", "4575352", "4487042"];
let requestnew = new XMLHttpRequest();


(function loop(t, length, resultArr){
    if (t>=length) {
        return;
    }
    let url = "https://api.openweathermap.org/data/2.5/weather?id=" + index[t] + "&units=imperial&APPID=e49a6f6568d868f47ba5cc7a896e646f";
    requestnew.open('GET',url);
    requestnew.onreadystatechange = function(){
        if(requestnew.readyState === XMLHttpRequest.DONE && requestnew.status ===200) {
            let data = JSON.parse(requestnew.responseText);
           document.getElementById(index[t]).innerHTML = "Temperature: " + data.main.temp.toFixed() + '&deg;';
            resultArr.push(data.main.temp.toFixed());
            loop(t+1, length, resultArr);
        }
    }
    requestnew.send();
})(0, index.length, []);
        

//let dcApiURLstring = "https://api.openweathermap.org/data/2.5/weather?id=5585010&units=imperial&APPID=e49a6f6568d868f47ba5cc7a896e646f";
//let dcWeatherRequest = new XMLHttpRequest();
//dcWeatherRequest.open('GET', dcApiURLstring, true);
//dcWeatherRequest.send();

//dcWeatherRequest.onload = function() {
    //let dcWeatherData = JSON.parse(dcWeatherRequest.responseText);
    //document.getElementById("washingtondc").innerHTML = dcWeatherData.main.temp_max.toFixed();
    
//}

