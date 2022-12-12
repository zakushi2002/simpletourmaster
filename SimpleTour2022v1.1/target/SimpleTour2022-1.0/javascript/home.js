/*Tab search*/
const tabLink = document.getElementsByClassName("tab-link");
const tabContent = document.getElementsByClassName("tab-content");
tabLink[0].classList.add('active')
tabContent[0].classList.add('active')
function openTab(e,tabId) {
    console.log(tabLink);
    for(let i = 0; i < tabLink.length;i++){
        tabLink[i].classList.remove('active')
        tabContent[i].classList.remove('active')
        if(+e.target.dataset.tab === +tabLink[i].dataset.tab){
            tabLink[i].classList.add('active')
            tabContent[i].classList.add('active')
        }
    }
}
/*Check-in/out-date*/
let today = new Date().toISOString().substring(0, 10);
document.querySelector("#today").value = today;
/*Chat box*/
let more = document.querySelectorAll('.more');
for (let i = 0; i<more.length; i++){
    more[i].addEventListener('click', function(){
        more[i].parentNode.classList.toggle('active');
    });
}
//Option
const citis_1 = document.getElementById("city_1");
const citis_2 = document.getElementById("city_2");
citis_1.addEventListener('click',(e)=> {
    const http = new XMLHttpRequest();
    http.open('GET','https://raw.githubusercontent.com/madnh/hanhchinhvn/master/dist/tinh_tp.json',true);
    http.onload = function() {
        if(this.status == 200){
            const city = JSON.parse(this.responseText);
            for(let i in city){
                const namecity = city[i].name;               
                citis_1.options[citis_1.options.length] = new Option(namecity);
            }
            
        }
    }
    http.send();
})
citis_2.addEventListener('click',(e)=> {
    const http = new XMLHttpRequest();
    http.open('GET','https://raw.githubusercontent.com/madnh/hanhchinhvn/master/dist/tinh_tp.json',true);
    http.onload = function() {
        if(this.status == 200){
            const city = JSON.parse(this.responseText);
            for(let i in city){
                const namecity = city[i].name;               
                citis_2.options[citis_2.options.length] = new Option(namecity);
            }
            
        }
    }
    http.send();
})
//CMT
const next = document.querySelector('.next')
const prev = document.querySelector('.prev')
const comment = document.querySelector('#list-comment')
const commentItem = document.querySelectorAll('#list-comment .item')
var translateY = 0
var count = commentItem.length

next.addEventListener('click', function (event) {
  event.preventDefault()
  if (count == 1) {
    // Xem hết bình luận
    return false
  }
  translateY += -400
  comment.style.transform = `translateY(${translateY}px)`
  count--
})

prev.addEventListener('click', function (event) {
  event.preventDefault()
  if (count == 3) {
    // Xem hết bình luận
    return false
  }
  translateY += 400
  comment.style.transform = `translateY(${translateY}px)`
  count++
})