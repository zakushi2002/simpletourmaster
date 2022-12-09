const username = document.querySelector('input[name=nameAccount]')
const username_error = document.getElementById('username_error');
const password = document.querySelector('input[type=password]')
const pass_error = document.getElementById('pass_error');
const conpassword = document.querySelector('input[name=cpassword]')
const conpass_error = document.getElementById('conpass_error');
// Sự kiện trên username
username.addEventListener('input',(e)=>{
    if (e.target.value.length < 9) {
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
    const regexUserName =/^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\s\W|_]+$/;
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
      username_error.textContent = "Please don't enter any special characters and number";
    }
    if(e.target.classList.contains("valid")){
      username_error.textContent = "You must enter format name";
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
           text.textContent = "please enter a stronger password";
           text.classList.add("weak");
        }
        if(no==2){
           medium.classList.add("active");
           text.textContent = "please enter a stronger password";
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

const accordionHeaders = document.querySelectorAll(".accordion-header");
[...accordionHeaders].forEach((item) =>
  item.addEventListener("click", handleClickAccordion)
);
const activeStr = "is-active";
function handleClickAccordion(e) {
  const content = e.target.nextElementSibling;
  console.log(content.scrollHeight);
  content.style.height = `${content.scrollHeight}px`;
  content.classList.toggle(activeStr);
  if (!content.classList.contains("is-active")) {
    content.style.height = "0px";
  }
}

function chooseFile(fileInput) {
    if(fileInput.files && fileInput.files[0]){
        var reader = new FileReader();
        reader.onload = function(e) {
            $('#image').attr('src',e.target.result);
        }
        reader.readAsDataURL(fileInput.files[0]);
    }
}