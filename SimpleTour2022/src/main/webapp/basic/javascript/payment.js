//Reduce quantity by 1 if clicked
// document.getElementsByClassName("fa fa-chevron-left").on("click", ".product-quantity-subtract", function(e){
//     var value = $("#product-quantity-input").val();
//     //console.log(value);
//     var newValue = parseInt(value) - 1;
//     if(newValue < 0) newValue=0;
//     $("#product-quantity-input").val(newValue);
//     CalcPrice(newValue);
//   });
  
// //Increase quantity by 1 if clicked
// document.getElementsByClassName("fa fa-chevron-right").on("click", ".product-quantity-add", function(e){
//     var value = $("#product-quantity-input").val();
//     //console.log(value);
//     var newValue = parseInt(value) + 1;
//     $("#product-quantity-input").val(newValue);
//     CalcPrice(newValue);
//   });
  
//   $(document).on("blur", "#product-quantity-input", function(e){
//     var value = $("#product-quantity-input").val();
//     //console.log(value);
//     CalcPrice(value);
//   });
  

// CHOOSE METHOD
const method = document.querySelectorAll(".method-detail");
method.forEach((check) => 
  check.addEventListener("click",(e) => {
    const checktick = e.target.querySelector(".icon");
    checktick.style.display = "block";
  })
);
//Number
const counterNumber = document.querySelector(".counter-number");
const counterAdd = document.querySelector(".person-quantity-add");
const counterMinus = document.querySelector(".person-quantity-subtract");
let counterValue = parseInt(counterNumber.textContent);
counterAdd.addEventListener("click", function () {
  counterValue++;
  counterNumber.textContent = counterValue;
});
counterMinus.addEventListener("click", function () {
  if (counterValue <= 0) return 0;
  counterValue--;
  counterNumber.textContent = counterValue;
});
