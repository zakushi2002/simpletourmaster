/*Check-in/out-date*/
let today = new Date().toISOString().substring(0, 10);
document.querySelector("#today").value = today;
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