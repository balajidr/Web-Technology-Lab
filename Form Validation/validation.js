
function valid(){
    var date = document.getElementById("dob").value;
    var d = new Date();
    if(date>d.getDate()){
        alert("You are not from the future da dubbuku vaaya !");
    }

    
}