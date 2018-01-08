function validateLogin()
{
    var email = document.frmLogin.email.value;
    var pwd = document.frmLogin.pwd.value;
    
    var emailFormat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    var status = true;

    

    if (email.length < 1) {
        document.getElementById("emailloc").innerHTML =
                " <img src='images/unchecked.png'/> Please enter your email";
        status = false;
    } else if (!email.match(emailFormat)) {
        document.getElementById("emailloc").innerHTML =
                " <img src='images/unchecked.png'/> Please enter email in correct format";
        status = false;
    } else {
        document.getElementById("emailloc").innerHTML = " <img src='images/checked.png'/>";
        status = true;
    }

    if (pwd.length < 1) {
        document.getElementById("pwdloc").innerHTML =
                " <img src='images/unchecked.png'/> Enter password";
        status = false;
    } else {
        document.getElementById("pwdloc").innerHTML = " <img src='images/checked.png'/>";
        status = true;
    }
    return status;
}


