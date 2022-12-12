const form = document.querySelector('.register_form');


// Get elements
const username = document.querySelector('input[type=text]')
const password = document.querySelector('input[type=password]')
const email = document.querySelector('input[name=emailAccount]')
const conpassword = document.querySelector('input[name=passwordAccount]')
const phone = document.querySelector('input[name=phoneAccount]')


const username_error = document.getElementById('username_error');
const pass_error = document.getElementById('pass_error');
const email_error = document.getElementById('email_error');
const conpass_error = document.getElementById('conpass_error');
const phone_error = document.getElementById('phone_error');


// Sự kiện trên username
username.addEventListener('input',(e)=>{
    if (e.target.value.length < 1) {
		e.target.style.border = "1px solid ";
		username_error.style.display = "block";
		e.target.focus();
		return false;
	}
    else{
        username_error.style.display = "none";
        return true;
    }

})
username.addEventListener("input", function (e) {
    const value = e.target.value;
    const regexUserName =/^[a-zA-Z0-9_]+$/;
    if (regexUserName.test(value.trim())) {
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
      username_error.style.display = "block";
      username_error.textContent = "Please do not enter any special characters other than _";
    }
    if(e.target.classList.contains("valid")){
      username_error.textContent = "You must enter all 9 characters";
    }
});

//Pass
const indicator = document.querySelector(".indicator");
const weak = document.querySelector(".weak");
const medium = document.querySelector(".medium");
const strong = document.querySelector(".strong");
const text = document.querySelector(".text");
let regExpWeak = /[a-zA-Z]/;
let regExpMedium = /[0-9]/;
let regExpStrong = /.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/;
password.addEventListener('input',(e)=>{
    if(e.target.value != ""){
        indicator.style.display = "block";
        indicator.style.display = "flex";
        if(e.target.value.length <= 3 && (e.target.value.match(regExpWeak) || e.target.value.match(regExpMedium) || e.target.value.match(regExpStrong)))no=1;
        if(e.target.value.length >= 6 && ((e.target.value.match(regExpWeak) && e.target.value.match(regExpMedium)) || (e.target.value.match(regExpMedium) && e.target.value.match(regExpStrong)) || (e.target.value.match(regExpWeak) && e.target.value.match(regExpStrong))))no=2;
        if(e.target.value.length >= 6 && e.target.value.match(regExpWeak) && e.target.value.match(regExpMedium) && e.target.value.match(regExpStrong))no=3;
        if(no==1){
           weak.classList.add("active");
           text.style.display = "block";
           text.textContent = "Your password is weak, please enter a stronger password";
           text.classList.add("weak");
        }
        if(no==2){
           medium.classList.add("active");
           text.textContent = "Your password is medium, please enter a stronger password";
           text.classList.add("medium");
        }else{
           medium.classList.remove("active");
           text.classList.remove("medium");
        }
        if(no==3){
           weak.classList.add("active");
           medium.classList.add("active");
           strong.classList.add("active");
           text.textContent="Your password is strong";
           text.classList.add("strong");
       }else{
           strong.classList.remove("active");
           text.classList.remove("strong");
       }
   }else{
       indicator.style.display = "none";
       text.style.display = "none";
   }
})

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
// Sự kiện conpass
conpassword.addEventListener('input',(e)=>{
    if (e.target.value.length < 1) {
		e.target.style.border = "1px solid ";
		conpass_error.style.display = "block";
		e.target.focus();
		return false;
	}
    else{
        conpass_error.style.display = "none";
    }
})
conpassword.addEventListener("input", function (e) {
    if (e.target.value == password.value) {
      e.target.classList.add("valid");
      e.target.classList.remove("invalid");
    } 
    else {
      e.target.classList.add("invalid");
      e.target.classList.remove("valid");
  
    }
    if(e.target.classList.contains("invalid")){
      conpass_error.style.display = "block";
      conpass_error.textContent = "Please enter the same password";
    }
    if(e.target.classList.contains("valid")){
      conpass_error.textContent = "You must enter confirm password";
    }
});

//Sự kiện phone
phone.addEventListener('input',(e)=>{
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
phone.addEventListener("input", function (e) {
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

//Sự kiện email
email.addEventListener('input',(e)=>{
    if (e.target.value.length < 9) {
		e.target.style.border = "1px solid ";
		email_error.style.display = "block";
		e.target.focus();
		return false;
	}
    else{
        email_error.style.display = "none";
        return true;
    }

})
email.addEventListener("input", function (e) {
    const value = e.target.value;
    const regexEmail =/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (regexEmail.test(value.trim())) {
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
      email_error.style.display = "block";
      email_error.textContent = "Please enter format gmail";
    }
    if(e.target.classList.contains("valid")){
      email_error.textContent = "You must enter format gmail";
    }
});

form.addEventListener('submit',(e)=>{
    e.preventDefault();
    if(username.value===''){
        username_error.style.display = "block";
        
    }
    if(password.value===''){
        pass_error.style.display = "block";
        
    }
    if(email.value==='' ){
        email_error.style.display = "block";
        
    }
    if(conpassword.value==='' ){
        conpass_error.style.display = "block";
        
    }
    if(phone.value==='' ){
        phone_error.style.display = "block";
        
    }
    if(username.value.length >= 1 && password.value.length >= 6  && text.classList.contains("strong")==true && email.classList.contains("valid")==true && conpassword.classList.contains("valid")==true && phone.value.length >= 9 && phone.classList.contains("valid")==true) {
        document.forms["form"].submit();
    }
})