/*------------------------Cart-------------------------------*/
const btn_cart = document.querySelectorAll(".btn-cart")
// console.log(btn_cart)
btn_cart.forEach(function(btn,index){
    btn.addEventListener("click",function(e){{
        var btnItem = e.target;
        var product =btnItem.parentElement;
        var productName = product.querySelector(".title-tour").innerText;
        var productPrice = product.querySelector(".price-tour span").innerText;
        addCart(productName,productPrice);
        
    }})
})
function addCart(productName,productPrice) {
    var addtr = document.createElement("tr");
    var cartItem = document.querySelectorAll("tbody tr");
    //Kiểm tra xem product có trong giỏ hàng chưa?
    // for (let i = 0; i < cartItem.length; i++){
    //     var productT = document.querySelectorAll(".title-product-cart");
    //     if(productT[i].innerHTML == productName) {
    //         alert("Sản phẩm của bạn đã có trong giỏ hàng");
    //         return;
    //     }
    // }
    var trcontent = '<tr><td ><span class="title-product-cart">'+productName+'</span></td><td><p><span class="prices">'+productPrice+'</span></p></td><td><input style="width: 30px;outline:none;" type="number" value="1" min="1"></td><td style="cursor: pointer;"><i class="fa fa-trash"></i></td></tr>';
    addtr.innerHTML = trcontent;
    var cartTable = document.querySelector("tbody");
    cartTable.append(addtr);
    cartTotal();
    deleteCart();
}

function cartTotal(){
    var cartItem = document.querySelectorAll("tbody tr");
    var totalB = 0;
    for (let i = 0; i < cartItem.length; i++){
        var inputValue = cartItem[i].querySelector("input").valueAsNumber;
        var productPrice = cartItem[i].querySelector(".prices").innerHTML;
        var newsProductPrice = productPrice.split('.').join(''); 
        var totalA = inputValue * newsProductPrice ;
        totalB = (totalB + totalA);
        
    }
    var cartTotalA = document.querySelector(".price-total span");
    var cartPrice = document.querySelector(".cart-icon span");
    cartTotalA.innerHTML = totalB.toLocaleString('de-DE') ;
    cartPrice.innerHTML = totalB.toLocaleString('de-DE') ;
    inputChange();
}

function deleteCart() {
    var cartItem = document.querySelectorAll("tbody tr");
    for (let i = 0; i < cartItem.length; i++){
        var productD = document.querySelectorAll("tbody tr i");
        productD[i].addEventListener("click",function(e){
            var cartDelete = e.target;
            var cartitemR = cartDelete.parentElement.parentElement;
            cartitemR.remove();
            cartTotal();
        })
    }
}

function inputChange(){
    var cartItem = document.querySelectorAll("tbody tr");
    for (let i = 0; i < cartItem.length; i++){
        var inputValue = cartItem[i].querySelector(" input");
        inputValue.addEventListener("change",function(e){
            cartTotal();
        })
    }
}

// const btn_close = document.querySelector("#close-cart");
const btnclose = document.querySelector(".fa-times");
const cartshow = document.querySelector(".fa-shopping-cart");
cartshow.addEventListener("click",function(){
    document.querySelector(".cart").style.right = "0%";
})
btnclose.addEventListener("click",function(){
    document.querySelector(".cart").style.right = "-100%";
})