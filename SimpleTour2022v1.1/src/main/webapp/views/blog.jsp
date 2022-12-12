<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog</title>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./basic/assets/css/reset.css">
    <link rel="stylesheet" href="./basic/font2022.css">
    <link href="./basic/assets/css/blogv3.css" rel="stylesheet" > 
    <link rel="stylesheet" href="./basic/assets/css/logoutButton.css">
    <link rel="stylesheet" href="./basic/assets/css/cartv1.css">
    <link rel="stylesheet" href="https://cdn.leanhduc.pro.vn/utilities/animation/shake-effect/style.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.3/gsap.min.js">
    <link rel="apple-touch-icon" sizes="57x57" href="./basic/assets/img/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="./basic/assets/img/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="./basic/assets/img/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="./basic/assets/img/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="./basic/assets/img/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="./basic/assets/img/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="./basic/assets/img/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="./basic/assets/img/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="./basic/assets/img/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="./basic/assets/img/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./basic/assets/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="./basic/assets/img/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./basic/assets/img/favicon/favicon-16x16.png">
    <link rel="manifest" href="./basic/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
</head>
<body>
  <div id="main">
    <%@include file="/common/web/header.jsp" %>
    <div class="content-width">
      <div class="slideshow">
        <!-- Slideshow Items -->
        <div class="slideshow-items">
          <div class="item">
            <div class="item-image-container">
              <img class="item-image" src="./basic/assets/img/slider/dia-diem-du-lich-da-lat-thang-11.jpg" />
            </div>
            <!-- Staggered Header Elements -->
            <div class="item-header">
              <span class="vertical-part"><b>T</b></span>
              <span class="vertical-part"><b>r</b></span>
              <span class="vertical-part"><b>a</b></span>
              <span class="vertical-part"><b>v</b></span>
              <span class="vertical-part"><b>e</b></span>
              <span class="vertical-part"><b>l</b></span>
            </div>
            <!-- Staggered Description Elements -->
            <div class="item-description">
              <span class="vertical-part">
                <b>With its dizzying metropolises, blissful islands and immense national parks (not to mention a legendary cuisine!), Vietnam tops many travelers’ bucket lists<br>The highlights of the country are innumerable, but there are some spots that simply can’t be skipped.</b>
              </span>
              
            </div>
          </div>
          <div class="item">
            <div class="item-image-container">
              <img class="item-image" src="./basic/assets/img/slider/mon-ngon-truyen-thong-Ha-Noi.jpg" />
            </div>
            <!-- Staggered Header Elements -->
            <div class="item-header">
              <span class="vertical-part"><b>F</b></span>
              <span class="vertical-part"><b>o</b></span>
              <span class="vertical-part"><b>o</b></span>
              <span class="vertical-part"><b>d</b></span>
            </div>
            <!-- Staggered Description Elements -->
            <div class="item-description">
              <span class="vertical-part">
                <b>Vietnamese specialties are memorable with their unique and diverse flavors, imbued with the cultural identity of each region. As a result, Vietnamese cuisine is one of the factors that attract a large number of tourists from all over the world.</b>
              </span>
              
            </div>
          </div>
          <div class="item">
            <div class="item-image-container">
              <img class="item-image" src="./basic/assets/img/slider/kinh-nghiem-du-lich-phu-quoc-17.jpg" />
            </div>
            <!-- Staggered Header Elements -->
            <div class="item-header">
              <span class="vertical-part"><b>W</b></span>
              <span class="vertical-part"><b>e</b></span>
              <span class="vertical-part"><b>a</b></span>
              <span class="vertical-part"><b>t</b></span>
              <span class="vertical-part"><b>h</b></span>
              <span class="vertical-part"><b>e</b></span>
              <span class="vertical-part"><b>r</b></span>
            </div>
            <!-- Staggered Description Elements -->
            <div class="item-description">
              <span class="vertical-part">
                <b>Whilst Vietnam is typically warm and humid, the weather can vary significantly from one region to another due to the country's length. At times there has been snow (yes white snow!) in the mountainous far north whilst the beaches in the south enjoyed 32 °C and sunshine. </b>
              </span>
             
            </div>
          </div>
        </div>
        <div class="controls">
          <ul>
            <li class="control" data-index="0"></li>
            <li class="control" data-index="1"></li>
            <li class="control" data-index="2"></li>
          </ul>
        </div>
      </div>
    </div>
    

    <div id="content">
        <div class="rung">
            <!-- object -->
        </div>
        <!--Contact-->
        <div class="wrap-contact">
            <div class="contact">
                <div class="button-contact">
                    <a rel=preconnect href="https://www.facebook.com/profile.php?id=100088169090483" target="_blank" rel="noopener">
                        <div class="icon">
                            <i class="fa fa-facebook" aria-hidden="true"></i>
                        </div>
                    </a>
                </div>
                <div class="button-contact">
                    <a rel=preconnect href="mailto:20110420@student.hcmute.edu.vn?cc=20110420@student.hcmute.edu.vn">
                        <div class="icon">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </div>
                    </a>
                </div>
    
                <div class="button-contact">
                    <a rel=preconnect href="tel:+84522971778">
                        <div class="icon">
                            <i class="fa fa-phone rung" aria-hidden="true"></i>
                        </div>
                    </a> 
                </div>
            </div>
        </div>
        <!--TRENDING BLOG-->
        <p class="title-trending-blog">Travel experience</p>
        <div class="wrap-treding-blog">
          <div class="trending-blog">
            <i class="fa fa-angle-left trending-blog-prev"></i>
            <ul class="trending-blog-dots">
              <li class="trending-blog-dot-item active" data-index="0"></li>
              <li class="trending-blog-dot-item" data-index="1"></li>
              <li class="trending-blog-dot-item" data-index="2"></li>
              <li class="trending-blog-dot-item" data-index="3"></li>
              <li class="trending-blog-dot-item" data-index="4"></li>
            </ul>
            <div class="trending-blog-wrapper">
              <div class="trending-blog-main">
                <div class="trending-blog-item">
                  <a href="about">
                    <img
                    src="./basic/assets/img/slider/Blogging-1.jpg"
                    alt=""
                    />
                  </a>
                </div>
                <div class="trending-blog-item">
                  <a href="">
                    <img
                    src="./basic/assets/img/slider/mon-an-duong-pho-viet-nam-wecheckin.jpg"
                    alt=""
                    />
                  </a>
                </div>
                <div class="trending-blog-item">
                  <a href="">
                    <img
                    src="./basic/assets/img/slider/uwgndf4aipe3mzhce2ap.webp"
                    alt=""
                    />
                  </a>
                </div>
                <div class="trending-blog-item">
                  <a href="">
                    <img
                    src="./basic/assets/img/slider/kinh-nghiem-du-lich-cat-ba_1661328677.jpg"
                    alt=""
                  />
                  </a>
                </div>
                <div class="trending-blog-item">
                  <a href="">
                    <img
                    src="./basic/assets/img/slider/qjlgu8hvyzh92izevdfg.webp"
                    alt=""
                  />
                  </a>
                </div>
              </div>
            </div>
            <i class="fa fa-angle-right trending-blog-next"></i>
          </div>
        </div>
        <!--END TRENDING BLOG-->
        <!--BLOG-->
        <div class="wrap-blog">
            <!--Các blog về Food-->
            <div class="blog-food">
                <a href="#">
                  <header>
                    <h1 class="title-blog">My Blog</h1>
                </header>
                </a>
                <div class="blog-container">
                    <div class="item-1">
                      <a href="pageblog?indexPageBlog=1" class="card1">
                        <div class="thumb" style="background-image: url(./basic/assets/img/booking/dalat.jpg);"></div>
                        <!--article là phần tử để bao bọc nội dung độc lập, nó có thể là một bài post của diễn đàn, một bài viết của trang, một bài báo, một bình luận ... hoặc bất kỳ một nội dung độc lập nào.-->
                        <article>
                          <h1>Top 5 outstanding tourist attractions in Dalat</h1>
                          <span class="date-submitted">20-10-2022</span>
                          
                        </article>
                      </a>
                    </div>
                    <div class="item-2">
                      <a href="pageblog?indexPageBlog=2" class="card1">
                        <div class="thumb" style="background-image: url(./basic/assets/img/booking/dalat.jpg);"></div>
                        <article>
                          <h1>TOP 7 Da Lat specialties and delicious</h1>
                          <span class="date-submitted">20-10-2022</span>
                          
                        </article>
                      </a>
                    </div>
                    <div class="item-3">
                      <a href="pageblog?indexPageBlog=3" class="card1">
                        <div class="thumb" style="background-image: url(./basic/assets/img/booking/bienNhaTrang.jpg);"></div>
                        <article>
                          <h1>Top 5 famous beautiful Nha Trang tourist attractions</h1>
                          <p>Com - The beauty of Nha Trang's long-standing culinary culture </p>
                          <span class="date-submitted">20-10-2022</span>
                        </article>
                      </a>
                    </div>
                    <div class="item-4">
                      <a href="pageblog?indexPageBlog=4" class="card1">
                        <div class="thumb" style="background-image: url(./basic/assets/img/slider/mon-an-duong-pho-viet-nam-wecheckin.jpg);"></div>
                        <article>
                          <h1>Top Vietnamese food</h1>
                          <p>Not having eaten all these 5 delicious dishes in Viet Nam is considered as not worthy of the title "real god"!</p>
                          <span class="date-submitted">20-10-2022</span>
                        </article>
                      </a>
                    </div>
                    <div class="item-5">
                      <a href="pageblog?indexPageBlog=5" class="card1">
                        <div class="thumb" style="background-image: url(./basic/assets/img/slider/Blogging-1.jpg);"></div>
                        <article>
                          <h1>Top 4 most beautiful landscapes in Vietnam</h1>
                          <span class="date-submitted">20-10-2022</span>
                        </article>
                      </a>
                    </div>
                    <div class="item-6">
                      <a href="pageblog?indexPageBlog=6" class="card1">
                        <div class="thumb" style="background-image: url(./basic/assets/img/slider/kinh-nghiem-du-lich-phu-quoc-17.jpg);"></div>
                        <article>
                          <h1>Top 5 Delicacies of Phu Quoc Night Market for Foodies</h1>
                  
                          <span class="date-submitted">20-10-2022</span>
                        </article>
                      </a>
                    </div>
                    <div class="item-7">
                      <a href="pageblog?indexPageBlog=7" class="card1">
                        <div class="thumb" style="background-image: url(./basic/assets/img/slider/308504450_1514054059044586_3100865352089192362_n.jpg);"></div>
                        <article>
                          <h1>4 Japanese dishes that are loved by young people in Ha Thanh</h1>
                  
                          <span class="date-submitted">20-10-2022</span>
                        </article>
                      </a>
                    </div>
                    <div class="item-8">
                      <a href="pageblog?indexPageBlog=8" class="card1">
                        <div class="thumb" style="background-image: url(./basic/assets/img/booking/bienVungTau.jpg);"></div>
                        <article>
                          <h1>The rendezvous points of Vung Tau</h1>
                  
                          <span class="date-submitted">20-10-2022</span>
                        </article>
                      </a>
                    </div>
                    <div class="item-9">
                      <a href="pageblog?indexPageBlog=9" class="card1">
                        <div class="thumb" style="background-image: url(./basic/assets/img/slider/m1zvjjk8v1fz5hvgcnex.webp);"></div>
                        <article>
                          <h1>The Best Things To Do In Da Nang </h1>
                  
                          <span class="date-submitted">20-10-2022</span>
                        </article>
                      </a>
                    </div>
                  </div>
            </div>
            <!--Kết thúc các blog về Food-->
        </div>
        <!--END BLOG-->
    </div>


    <%@include file="/common/web/footer.jsp" %>
</div>
<script src="./basic/javascript/blog.js"></script>
  <script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>
</body>
</html>