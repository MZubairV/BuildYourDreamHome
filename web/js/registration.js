function validate()
{
    var name = document.frmRegistration.name.value;
    var mobile = document.frmRegistration.mobile.value;
    var country = document.frmRegistration.country.value;
    var state = document.frmRegistration.state.value;
    var district = document.frmRegistration.district.value;
    var place = document.frmRegistration.place.value;
    var email = document.frmRegistration.email.value;
    var pwd1 = document.frmRegistration.pwd1.value;
    var pwd2 = document.frmRegistration.pwd2.value;

    var emailFormat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    var status = true;

    if (name.length < 1) {
        document.getElementById("nameloc").innerHTML = " <img src='images/unchecked.png'/> Please enter name";
        status = false;
    } else {
        document.getElementById("nameloc").innerHTML = " <img src='images/checked.png'/>";
        status = true;
    }



    if (mobile.length < 1) {
        document.getElementById("mobloc").innerHTML =
                " <img src='images/unchecked.png'/> Please enter your mobile number";
        status = false;
    } else {
        document.getElementById("mobloc").innerHTML = " <img src='images/checked.png'/>";
        status = true;
    }



    if (country.length < 1) {
        document.getElementById("countryloc").innerHTML =
                " <img src='images/unchecked.png'/> Please enter your country";
        status = false;
    } else {
        document.getElementById("countryloc").innerHTML = " <img src='images/checked.png'/>";
        status = true;
    }



    if (state.length < 1) {
        document.getElementById("stateloc").innerHTML =
                " <img src='images/unchecked.png'/> Please enter your district";
        status = false;
    } else {
        document.getElementById("stateloc").innerHTML = " <img src='images/checked.png'/>";
        status = true;
    }



    if (district.length < 1) {
        document.getElementById("districtloc").innerHTML =
                " <img src='images/unchecked.png'/> Please enter your place";
        status = false;
    } else {
        document.getElementById("districtloc").innerHTML = " <img src='images/checked.png'/>";
        status = true;
    }

    if (place.length < 1) {
        document.getElementById("placeloc").innerHTML =
                " <img src='images/unchecked.png'/> Please enter your place";
        status = false;
    } else {
        document.getElementById("placeloc").innerHTML = " <img src='images/checked.png'/>";
        status = true;
    }


    if (email.length < 1) {
        document.getElementById("emailloc").innerHTML =
                " <img src='images/unchecked.png'/> Please enter your email";
        status = false;
    } else if (!email.value.match(emailFormat)) {
        document.getElementById("emailloc").innerHTML =
                " <img src='images/unchecked.png'/> Please enter email in correct format";
        status = false;
    } else {
        document.getElementById("emailloc").innerHTML = " <img src='images/checked.png'/>";
        status = true;
    }

    if (pwd1.length < 1) {
        document.getElementById("pwdloc").innerHTML =
                " <img src='images/unchecked.png'/> Password must be same";
        status = false;
    } else if (pwd1 != pwd2) {
        document.getElementById("pwdloc").innerHTML =
                " <img src='images/unchecked.png'/> Password must be same";
        status = false;
    } else {
        document.getElementById("pwdloc").innerHTML = " <img src='images/checked.png'/>";
        status = true;
    }
    return status;
}


