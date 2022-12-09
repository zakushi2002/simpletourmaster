const form = document.querySelector('.login_form');


// Get elements
const phonenumber = document.querySelector('input[type=text]')
const password = document.querySelector('input[type=password]')

const phone_error = document.getElementById('phone_error');
const pass_error = document.getElementById('pass_error');

// Sự kiện trên username
phonenumber.addEventListener('input',(e)=>{
    if (e.target.value.length < 9) {
		e.target.style.border = "1px solid ";
		phone_error.style.display = "block";
		e.target.focus();
		return false;
	}
    else{
        phone_error.style.display = "none";
        return true;
    }

})

phonenumber.addEventListener("input", function (e) {
    const value = e.target.value;
    const regexUserPhone =/((^(\+84|84|0|0084){1})(3|5|7|8|9))+([0-9]{8})$/;
    if (regexUserPhone.test(value.trim())) {
      e.target.classList.add("valid");
      e.target.classList.remove("invalid");
    } 
    else {
      e.target.classList.add("invalid");
      e.target.classList.remove("valid");
  
    }
  
    if (!value) {
      e.target.classList.remove("invalid");
    }
    if(e.target.classList.contains("invalid")){
      phone_error.style.display = "block";
      phone_error.textContent = "Please enter right format phone";
    }
    if(e.target.classList.contains("valid")){
      phone_error.textContent = "You must enter your phone ";
    }
});

// Sự kiện pass
password.addEventListener('input',(e)=>{
    if (e.target.value.length < 1) {
		e.target.style.border = "1px solid ";
		pass_error.style.display = "block";
		e.target.focus();
		return false;
	}
    else{
        pass_error.style.display = "none";
    }
})

//Sự kiện trên form
form.addEventListener('submit',(e)=>{
    e.preventDefault();
    if(phonenumber.value===''){
        phone_error.style.display = "block";
        
    }
    if(password.value===''){
        pass_error.style.display = "block";
        
    }
    if(phonenumber.value.length >= 9 && password.value.length >= 6 && phonenumber.classList.contains("valid")==true) {
        document.forms["form"].submit();
    }
})




