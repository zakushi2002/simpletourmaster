// Master DOManipulator v2 ------------------------------------------------------------
const items = document.querySelectorAll('.item'),
  controls = document.querySelectorAll('.control'),
  headerItems = document.querySelectorAll('.item-header'),
  descriptionItems = document.querySelectorAll('.item-description'),
  activeDelay = .76,
  interval = 5000;

let current = 0;

const slider = {
  init: () => {
    controls.forEach(control => control.addEventListener('click', (e) => { slider.clickedControl(e) }));
    controls[current].classList.add('active');
    items[current].classList.add('active');
  },
  nextSlide: () => { // Increment current slide and add active class
    slider.reset();
    if (current === items.length - 1) current = -1; // Check if current slide is last in array
    current++;
    controls[current].classList.add('active');
    items[current].classList.add('active');
    slider.transitionDelay(headerItems);
    slider.transitionDelay(descriptionItems);
  },
  clickedControl: (e) => { // Add active class to clicked control and corresponding slide
    slider.reset();
    clearInterval(intervalF);

    const control = e.target,
      dataIndex = Number(control.dataset.index);

    control.classList.add('active');
    items.forEach((item, index) => { 
      if (index === dataIndex) { // Add active class to corresponding slide
        item.classList.add('active');
      }
    })
    current = dataIndex; // Update current slide
    slider.transitionDelay(headerItems);
    slider.transitionDelay(descriptionItems);
    intervalF = setInterval(slider.nextSlide, interval); // Fire that bad boi back up
  },
  reset: () => { // Remove active classes
    items.forEach(item => item.classList.remove('active'));
    controls.forEach(control => control.classList.remove('active'));
  },
  transitionDelay: (items) => { // Set incrementing css transition-delay for .item-header & .item-description, .vertical-part, b elements
    let seconds;
    
    items.forEach(item => {
      const children = item.childNodes; // .vertical-part(s)
      let count = 1,
        delay;
      
      item.classList.value === 'item-header' ? seconds = .015 : seconds = .007;

      children.forEach(child => { // iterate through .vertical-part(s) and style b element
        if (child.classList) {
          item.parentNode.classList.contains('active') ? delay = count * seconds + activeDelay : delay = count * seconds;
          child.firstElementChild.style.transitionDelay = `${delay}s`; // b element
          count++;
        }
      })
    })
  },
}

let intervalF = setInterval(slider.nextSlide, interval);
slider.init();

//BLOG TRENDING
window.addEventListener("load",function() {
  const trendingBlog = document.querySelector(".trending-blog");
  const trendingBlogMain = document.querySelector(".trending-blog-main");
  const trendingBlogItem = document.querySelectorAll(".trending-blog-item");
  const nextBtn = document.querySelector(".trending-blog-next");
  const prevBtn = document.querySelector(".trending-blog-prev");
  const dotItems = document.querySelectorAll(".trending-blog-dot-item");
  let positionX = 0;
  let index = 0;
  const trendingBlogItemWidth = trendingBlogItem[0].offsetWidth; //lấy ra chiều rộng của phần tử đầu tiên
  const trendingBlogLength = trendingBlogItem.length;
  nextBtn.addEventListener("click",function() {
    handelChangeSlide(1);
  });

  prevBtn.addEventListener("click",function() {
    handelChangeSlide(-1);
  });
  [ ...dotItems].forEach((item) => 
    item.addEventListener("click", function(e) {
      [ ...dotItems].forEach((el) => el.classList.remove("active"));
      e.target.classList.add("active");
      const trendingBlogIndex = parseInt(e.target.dataset.index);
      index = trendingBlogIndex;
      positionX = -1 * index * trendingBlogItemWidth;
      trendingBlogMain.style = `transform:translateX(${positionX}px)`;
    })
  );
  function handelChangeSlide(direction) {
    if (direction === 1){
      if(index >= trendingBlogLength-1) {
        index = trendingBlogLength - 1 ;
        return ;
      }
      positionX = positionX - trendingBlogItemWidth;
      trendingBlogMain.style = `transform:translateX(${positionX}px)`;
      // console.log("next slide");
      index++;
    }
    else if (direction === -1){
      if(index <= 0) {
        index = 0;
        return;
      }
      positionX = positionX + trendingBlogItemWidth;
      trendingBlogMain.style = `transform:translateX(${positionX}px)`;
      index--;
    }
    [ ...dotItems].forEach((el) => el.classList.remove("active"));
    dotItems[index].classList.add("active");
  }
});
  