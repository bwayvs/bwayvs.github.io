function renderTime() {

    var today = new Date();
    var DD = today.getDay();
    var dayarray = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
    var dd = today.getDate();
    var mm = today.getMonth() +1;
    var montharray = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
    var yyyy = today.getFullYear();
    var myClock = document.getElementById("clockDisplay");
    
    myClock.innerText = " " +dayarray[DD]+ " " +dd+ " " +montharray[mm]+ " " +yyyy+ " ";
    }
    renderTime();
    
