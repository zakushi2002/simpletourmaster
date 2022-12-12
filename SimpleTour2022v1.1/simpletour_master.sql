-- Database Simple Tour
-- create database simpletour_master;
create table simpletour_master.category(
	categoryID int NOT NULL AUTO_INCREMENT,
    categoryName nvarchar(30),
    statusCategory int,
    constraint pk_category_categoryID primary key clustered (categoryID asc)
);
-- category table - data
-- insert into simpletour_master.category(categoryName, image, statusCategory) values(?,?);
-- update simpletour_master.category set categoryName = ?, statusCategory = ?;
insert into simpletour_master.category(categoryName, statusCategory) values('Hà Nội',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Hà Giang',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Cao Bằng',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Bắc Kạn',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Tuyên Quang',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Lào Cai',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Điện Biên',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Lai Châu',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Sơn La',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Yên Bái',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Hoà Bình',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Thái Nguyên',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Lạng Sơn',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Quảng Ninh',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Bắc Giang',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Phú Thọ',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Vĩnh Phúc',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Bắc Ninh',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Hải Dương',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Hải Phòng',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Hưng Yên',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Thái Bình',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Hà Nam',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Nam Định',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Ninh Bình',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Thanh Hóa',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Nghệ An',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Hà Tĩnh',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Quảng Bình',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Quảng Trị',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Thừa Thiên Huế',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Đà Nẵng',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Quảng Nam',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Quảng Ngãi',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Bình Định',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Phú Yên',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Khánh Hòa',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Ninh Thuận',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Bình Thuận',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Kon Tum',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Gia Lai',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Đắk Lắk',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Đắk Nông',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Lâm Đồng',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Bình Phước',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Tây Ninh',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Bình Dương',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Đồng Nai',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Bà Rịa - Vũng Tàu',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Hồ Chí Minh',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Long An',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Tiền Giang',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Bến Tre',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Trà Vinh',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Vĩnh Long',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Đồng Tháp',1);
insert into simpletour_master.category(categoryName, statusCategory) values('An Giang',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Kiên Giang',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Cần Thơ',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Hậu Giang',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Sóc Trăng',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Bạc Liêu',1);
insert into simpletour_master.category(categoryName, statusCategory) values('Cà Mau',1);
-- END Category

create table simpletour_master.useraccount(
	phoneAccount nvarchar(12),
    passwordAccount nvarchar(64),
    emailAccount nvarchar(64),
    nameAccount nvarchar(64),
    avatarAccount nvarchar(255),
    roleAccount int,
    createdDate date,
    statusAccount int,
    constraint pk_useraccount_phone primary key clustered (phoneAccount asc),
    constraint ck_useraccount_email check (emailAccount like '%_@%_._%')
);
-- useraccount table data
-- insert into simpletour_master.useraccount(phoneAccount, passwordAccount, emailAccount, nameAccount, avatarAccount, roleAccount, createdDate, statusAccount) values(?,?,?,?,?,?,?,?);
insert into simpletour_master.useraccount(phoneAccount, passwordAccount, emailAccount, nameAccount, avatarAccount, roleAccount, createdDate, statusAccount) values('0703679239', 'bame18082002@', 'toannguyenit239@gmail.com', 'Nguyen Huynh Thanh Toan', 'https://iili.io/H2dTNYF.md.png', 1, '2022-10-25',1); -- 1997 
insert into simpletour_master.useraccount(phoneAccount, passwordAccount, emailAccount, nameAccount, avatarAccount, roleAccount, createdDate, statusAccount) values('0522971778', 'taioccho123', '20110354@student.hcmute.edu.vn', 'Bui Ngoc Anh', 'https://iili.io/H2dTOkg.png', 1, '2022-1-7',1);
insert into simpletour_master.useraccount(phoneAccount, passwordAccount, emailAccount, nameAccount, avatarAccount, roleAccount, createdDate, statusAccount) values('0703311217', 'namok12345', '20110383@student.hcmute.edu.vn', 'Nguyen Hoang Nhat Nam', 'https://iili.io/HKvkYba.md.png', 1,'2022-11-24',1);
insert into simpletour_master.useraccount(phoneAccount, passwordAccount, emailAccount, nameAccount, avatarAccount, roleAccount, createdDate, statusAccount) values('0798913674', 'cursekid', '20110010@student.hcmute.edu.vn', 'Nguyen Hoang Nhan', 'https://iili.io/HKvS6mX.jpg', 0, '2022-7-21',1);
insert into simpletour_master.useraccount(phoneAccount, passwordAccount, emailAccount, nameAccount, avatarAccount, roleAccount, createdDate, statusAccount) values('0365844202', '11111111', '20110390@student.hcmute.edu.vn', 'Vu Trong Nhan', 'https://iili.io/HKvUwa2.png', 0, '2022-11-30',1);
insert into simpletour_master.useraccount(phoneAccount, passwordAccount, emailAccount, nameAccount, avatarAccount, roleAccount, createdDate, statusAccount) values('0234567890', '11111111', '20110030@student.hcmute.edu.vn', 'Le Hoang Lam', 'https://iili.io/HKvkYba.md.png', 0, '2022-12-2',1);
insert into simpletour_master.useraccount(phoneAccount, passwordAccount, emailAccount, nameAccount, avatarAccount, roleAccount, createdDate, statusAccount) values('0345678901', '11111111', '20110384@student.hcmute.edu.vn', 'Ta Hoai Nam', 'https://iili.io/HKvkYba.md.png', 0, '2022-12-1',0);


-- select * from simpletour_master.useraccount;
-- Admin
-- update simpletour_master.useraccount set passwordAccount = ?, nameAccount = ?, statusAccount = ? where phoneAccount = ?;
-- update simpletour_master.useraccount set passwordAccount = '22222222', nameAccount = 'Nhat Nam', statusAccount = 0 where phoneAccount = '0703311217';
-- User
-- update simpletour_master.useraccount set passwordAccount = '22222222', nameAccount = 'Ta Hoai Nam', avatarAccount = 'https://iili.io/HKvkYba.md.png', statusAccount = 1 where phoneAccount = '0345678901';
-- END USERACCOUNT


create table simpletour_master.tour(
	idTour int NOT NULL AUTO_INCREMENT,
    titleTour nvarchar(128),
    codeTour nvarchar(500),
    categoryID int,
    contentTour text,
    scheduleTour text,
    priceTour double,
    dateStart date,
    dateEnd date,
    travelTime int as (dateEnd - dateStart + 1),
    amount int,
    stockSeat int,
    maxSeat int,
    startingGate nvarchar(64),
    pathPhotoTour nvarchar(1024),
    saleOff double,
    salePrice double as (priceTour - priceTour * (saleOff/100)),
    statusTour int,
    constraint pk_Tour_id primary key clustered (idTour asc),
    constraint maxSeate_for_currentSeat check (stockSeat <= maxSeat),
    constraint fk_id_categoryid foreign key (categoryID) references category(categoryID) on update cascade
);

-- tour table data
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Kiên Giang - Phú Quốc','',58,'Phu Quocs gleaming white sand beaches have earned it the nickname "Pearl Island", but the islands environmental conservation efforts and cultural heritage deserve as much attention as its picturesque sand and surf. Fishing and agriculture remain primary industries, and more than half the laid-back island has been protected by a UNESCO Biosphere Reserve since 2006.','',5490000,'2022-12-5','2022-12-7',12,2,20,'Hồ Chí Minh','https://iili.io/HCVd6hJ.jpg',10,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Khánh Hòa - Nha Trang','',37,'Binh Hung Island Tourism - Binh Hung Island is located in Cam Binh commune, Cam Ranh city, Khanh Hoa province. Nestled at the foot of the pass of the Binh Tien - Vinh Hy sea route, this place is famous for its fine white sand beaches and clear blue water. Binh Hung Island has not been exploited for tourism much, so it still retains many attractive wild features for visitors who register for Binh Hung Island tour.','',2040000,'2022-12-5','2022-12-6',24,14,20,'Ninh Thuận','https://iili.io/HCVdas4.jpg',15,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('An Giang - Châu Đốc','',57,'Can Tho An Giang tour 2 days 2 night takes you to many famous landmarks of the Mekong delta, typical of the river region. can tho tourism visit Cai Rang floating market, Binh Thuy ancient house, visit fruit garden. An Giang tourism explores the wild Tra Su melaleuca forest, come to the pilgrimage center of the South - Chau Doc to visit ba chua xu temple on sam mountain, visit Tay An pagoda... especially in this western tour you have the opportunity to learn about the simple life of the gentle people of the southwest region and hospitable.','',2191000,'2022-12-5','2022-12-6',49,19,25,'Hồ Chí Minh','https://iili.io/HCVd012.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Lào Cai - Sapa','',6,'As a highland district of Lao Cai province, Sapa is located on a mountain ridge 1,500–1,600 meters above sea level, between the Hoang Lien Son and Con Voi mountain ranges to the northwest. This special terrain gives sapa an advantage: in one day, displacement believers will enjoy the climate of 4 springs, summers, autumns and winters. Thats not to mention, every season of the year, Sapa has its own unique scenery. Reconciling natural beauty and unique national culture, Sapa becomes a tourist destination suitable for all audiences.','',3050000,'2022-12-7','2022-12-8',50,30,40,'Hà Nội','https://iili.io/HCVdlql.gif',5,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Đà Nẵng - Hội An','',32,'Traveling to Da Nang - Hoi An will be an experience-filled trip if you make a detailed schedule to fully explore these lands. Here, visitors can freely visit many beautiful landscapes, many famous check-in points, along with a rich culinary culture, special festivals that will make you not want to miss.','',2780000,'2022-12-5','2022-12-7',20,30,40,'Hồ Chí Minh','https://iili.io/HCVdYXf.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Khánh Hòa - Nha Trang','',37,'Nha Trang tourism - the coastal city of Nha Trang is famous for its beautiful natural landscapes that "fascinate" people, annually attracting hundreds of thousands of "both domestic and foreign" tourists to visit the resort. If you are looking for a true vacation resort, then Nha Trang tour is a great choice for you. Coming to the coastal city of Nha Trang, you will be able to visit the scenery with many famous scenic spots, try to experience shrimp fishing on a boat when the sun has set,... Enjoy a lot of steamed dishes guide, with cool climate,... Promise this will be an interesting and meaningful vacation for you.','',2821000,'2022-12-9','2022-12-11',50,20,20,'Hồ Chí Minh','https://iili.io/HCVd1gS.gif',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Bình Định - Quy Nhơn','',35,'Central highlands tourism stands out with the image of the majestic plateau, with thousands of mountains and forests. The destination of the central highlands tour is the villages of ethnic minorities with stilt houses and can wine, learn about the culture of the ede people, listen to gong music to understand all about the beauty of the region. The land and the people here with many interesting and attractive attractions, Tay Nguyen tour promises to be a unique choice for tourists vacation travel itinerary.','',3590000,'2022-12-8','2022-12-11',50,30,40,'Hồ Chí Minh','https://iili.io/HCVdM79.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Bình Định - Quy Nhơn','',35,'','',4390000,'2022-12-10','2022-12-13',14,4,15,'Hồ Chí Minh','https://iili.io/HCVdVee.jpg',0,0);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Bình Thuận - Phan Thiết','',39,'','',3551000,'2022-12-5','2022-12-7',80,20,20,'Hồ Chí Minh','https://iili.io/HCVdWmu.gif',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Lâm Đồng - Đà Lạt','',44,'','',1850000,'2022-12-10','2022-12-12',50,30,40,'Hồ Chí Minh','https://iili.io/HCVdhzb.jpg',5,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Bà Rịa - Vũng Tàu','',49,'','',2480000,'2022-12-9','2022-12-10',150,20,35,'Hồ Chí Minh','https://iili.io/HCVdjXj.jpg',0,0);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('An Giang - Châu Đốc','',57,'','',2090000,'2022-12-18','2022-12-20',75,15,25,'Hồ Chí Minh','https://iili.io/HCVd012.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Hồ Chí Minh','',50,'','',730000,'2022-12-10','2022-12-10',55,30,35,'Hồ Chí Minh','https://iili.io/HCVdOqQ.jpg',0,0);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Tiền Giang - Cái Bè','',52,'','',2520000,'2022-12-25','2022-12-26',30,15,40,'Hồ Chí Minh','https://iili.io/HCVde1V.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Tiền Giang - Mỹ Tho','',52,'','',2799000,'2022-12-25','2022-12-27',0,0,20,'Hồ Chí Minh','https://iili.io/HCVdkrB.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Kiên Giang - Nam Giang','',58,'','',1790000,'2022-12-5','2022-12-6',58,18,26,'Hồ Chí Minh','https://iili.io/HCVd8dP.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Cà Mau','',63,'','',2200000,'2022-12-23','2022-12-24',69,19,30,'Hồ Chí Minh','https://iili.io/HCVdgmg.jpg',0,0);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Đồng Tháp','',56,'','',700000,'2022-12-28','2022-12-28',76,16,20,'Cần Thơ','https://iili.io/HCVdS71.jpg',0,0);

insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Ninh Bình','',25,'Unlike Da Nang, there are two distinct seasons: rainy and sunny. traveling to Ninh Binh you can go all year round and each season has its own beauty. many famous landmarks of Ninh Binh are exploited for tourism all year round, creating a ninh binh that is always full of tourists.','<p>DAY 1:  TRANG AN &ndash;  HOA LU &ndash;  MUA CAVE</p>',800000,'2022-12-10','2022-12-10',69,19,30,'Hà Nội','http://cdn.tgdd.vn/Files/2022/03/27/1422550/kinh-nghiem-du-lich-hoa-lu-ninh-binh-cho-nguoi-lan-dau-moi-di-202203270203388706.jpg',10,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Củ Chi','',50,'Join the funniest history lesson ever! Learn about Vietnams guerrilla warfare by climbing into the underground tunnels that played a vital role in the war. m and explore with this Cu Chi Tunnels Tour. Built by local fighters during the Indochina conflict, the Cu Chi tunnels were the base of the Viet Cong, the National Liberation Front. It included almost everything needed for life in the Viet Cong, where local soldiers and commoners ate, slept, worked, cooked, and even attended school.','<p>DAY 1:  HCM CITY &ndash;  CU CHI TUNNELS</p>',500000,'2022-12-10','2022-12-10',76,16,20,'Hồ Chí Minh','https://res.klook.com/image/upload/c_fill,w_816,h_460/w_80,x_15,y_15,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/kzznsscv2siw9xvn0zwy.webp',20,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Lâm Đồng – Bảo Lộc','',44,'When it comes to Bao Loc city, the impression of tourists is always poetic and romantic. In the past year, this is a popular tourist destination, chosen by many people to relax.','<p>DAY 1:  HCMC &ndash; MADAGUI &ndash; DAMBRI WATER &ndash; BAO LOC<br><br>DAY 2: BAO LOC &ndash; DAK NONG &ndash;  HCMC',500000,'2022-12-10','2022-12-11',44,24,40,'Hồ Chí Minh','https://media.travel.com.vn/tour/tfd_211109012343_442956.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Đắk Lắk – Buôn Ma Thuột','',42,'As the largest city in Dak Lak, Buon Ma Thuot has the typical beauty of the Central Highlands, convenient transportation and many unique tourist attractions, the land of coffee attracts tourists to explore.','<p>DAY 1:  HCMC &ndash; DAK LAK &ndash; BUON MA THUOT<br><br>DAY 2: BUON MA THUOT &ndash; CORRECTION OF THE FOUR DISCLOSURES &ndash;  ETHONOLOGY MUSEUM &ndash;  HCMC</p>',2500000,'2022-12-10','2022-12-11',53,23,30,'Hồ Chí Minh','https://dulichviet.com.vn/images/bandidau/2019-NOI-DIA/MIEN-TRUNG/TAY-NGUYEN/du-lich-tay-nguyen-tour-tham-quan-dray-nur-2019.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Khánh Hòa – Cam Ranh','',37,'Not as noisy and bustling as Saigon, or with an ancient breath like Hoi An, Cam Ranh tourism gives you a sense of peace, familiarity, and the hospitality and sincerity of the people here. Lets pocket Cam Ranh travel experiences to make your trip more wonderful!','<p>DAY 1:  HCMC &ndash; CAM RANH<br><br>DAY 2: NINH CHU &ndash; HCMC</p>',1500000,'2022-12-10','2022-12-11',56,16,30,'Hồ Chí Minh','https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2021/04/top-10-vung-vinh-dep-nhat-nen-den-trong-mua-he-20216.jpg',10,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Khánh Hòa – Nha Trang','',37,'Nha Trang is known as Vietnams sea tourism paradise, famous for its romantic islands and blue beaches that attract tourists from all over the world.','<p>NIGHT DAY 1:  HCM &ndash; NHA TRANG &ndash;  PONAGAR TOWER <br><br>DAY 2: VINWONDERS &ndash;  YENS VILLAGE &ndash; DAM MARKET<br><br>DAY 3: HON CHONG &ndash; NHA TRANG MINERAL FIRE &ndash; HCMC</p>',1700000,'2022-12-10','2022-12-12',87,37,40,'Hồ Chí Minh','https://tindulichkhanhhoa.com/wp-content/uploads/2020/09/kinh-nghiem-du-lic-nha-trang-1.jpg',5,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Lâm Đồng – Đà Lạt','',44,'Da Lat is also called by many other names: the city of thousands of flowers, the land of fog, etc. Because the characteristic here is a very cool climate with many virtual and poetic mists, many plots of land are planted. so many flowers in poetic and extremely beautiful.','<p>DAY 1:  HCM &ndash; DA LAT &ndash;  EXPLORE DA LAT CITY &ndash;  TRUC LAM Zen Monastery<br><br>DAY 2: GOLDEN BRIDGE DA LAT VERSION &ndash;  DOMAIN CHURCH &ndash; PUPPIES FARM<br><br>DAY 3: PONGOUR WATER &ndash; HCMC</p>',1700000,'2022-12-10','2022-12-12',29,19,20,'Hồ Chí Minh','https://www.vietnambooking.com/wp-content/uploads/2022/11/tour-da-lat-3-ngay-3-dem-13.jpg',10,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Đà Nẵng','',32,'Bay Mau coconut forest in Cam Thanh commune, Hoi An city (Quang Nam) has more than 20 hectares of water coconut area, has long become an interesting place to visit and experience for tourists who want to explore. explore new lands, with thousands of visitors every year.','<p>DAY 1:  DA NANG &ndash; HOI AN &ndash; BAY MAU COCONUT FOREST<br><br>DAY 2: BAY MAU COCONUT FOREST&ndash;  GOODBYE IN DA NANG</p>',1000000,'2022-12-10','2022-12-11',10,10,20,'Đà Nẵng','http://hanoimoi.com.vn/Uploads/images/quangcao2/2022/08/24/30CAFAF7-8C70-4463-B1AF-A71FDF7DC680.png',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Thừa Thiên Huế','',31,'Da Lat is also called by many other names: the city of thousands of flowers, the land of fog, etc. Because the characteristic here is a very cool climate with many virtual and poetic mists, many plots of land are planted. so many flowers in poetic and extremely beautiful.','<p>DAY 1:  DA NANG &ndash; LANG CO BAY &ndash;  PHA TAM GIANG &ndash;  TOMB OF KING KHAI DINH</p>',1700000,'2022-12-10','2022-12-12',24,14,20,'Đà Nẵng','https://statics.vinpearl.com/du-lich-hue-3-ngay-2-dem-0_1627396083.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Phú Quốc','',58,'Explore the paradise of Phu Quoc with many famous places. Visitors will discover Pepper, experience how to grow pepper in the garden, extremely realistic and memorable. Not only can they try planting, visitors can also buy pepper at the garden as gifts for relatives and friends. Visit Ham Ninh fishing village, the ancient fishing village of the people on the island. Where visitors can buy dried seafood, fresh, souvenirs here at very cheap prices. With Phu Quoc, anything at this place visitors want to bring back as a gift, because everything is very fresh and natural. Continuing the journey, visitors will discover Ngoc Island, the largest island in Vietnam with fresh air, clear blue sea color. Lie in a hammock, rest and relax to fully enjoy the beautiful beauty of Pearl Island. Sunbathe at Sao beach, a beautiful beach with fine white sand, long straight, immersed in the cool blue sea. Phu Quoc Prison is one of the famous historical landmarks, where more than 40,000 prisoners were held during the resistance wars against France and the US. Admire the statues, the images engraved in the mind of the visitor, where the legend is still mentioned. The journey to discover the paradise of Phu Quoc cannot but mention the North Island. Visit Phu Quoc National Forest, the only remaining primeval forest of the South with more than 10km of forest roads with rich and diverse flora and fauna. Seeing the scenery in this national forest, visitors seem to be immersed in the majestic nature.','<p>DAY 1:  HA TIEN &ndash; PHU QUOC<br><br>DAY 2: THIEN DUONG DIA TRUNG HAI &ndash; 4 ISLANDTOUR  &ndash; HON THOM &ndash; SUNSET SANATO<br><br>DAY 3: PHU QUOC &ndash; HA TIEN &ndash; CAN THO</p>',2290000,'2022-12-10','2022-12-12',5,5,20,'Cần Thơ','https://puolotrip.com/wp-content/uploads/2015/08/dinh-c-u-ph%C3%BA-qu-c.jpg',0,1);

-- update simpletour_master.tour set titleTour = ?, categoryID = ?, contentTour = ?, scheduleTour = ?, priceTour = ?, dateStart = ?, dateEnd = ?, maxSeat = ?, startingGate = ?, pathPhotoTour = ?, saleOff = ?, statusTour = ? where idTour = ?;
-- select count(*) from simpletour_master.tour;
-- select * from simpletour_master.tour order by idTour desc limit 0,6;
-- select * from simpletour_master.tour where (startingGate = 'Hồ Chí Minh' or dateStart = '2022-12-5') and statusTour = 1 and stockSeat < maxSeat  order by dateStart asc, amount desc limit 3;
-- select distinct reTour.* from (select * from simpletour_master.tour where dateStart = '2022-12-5' and statusTour = 1 and stockSeat < maxSeat union distinct select * from simpletour_master.tour where startingGate = 'Hồ Chí Minh' and statusTour = 1 and stockSeat < maxSeat) as reTour left outer join (select * from simpletour_master.tour where idTour = 3) as exTour on reTour.idTour = exTour.idTour where exTour.idTour is null order by dateStart asc, amount desc limit 3;
-- select distinct reTour.* from (select * from simpletour_master.tour where dateStart = ? and statusTour = 1 and stockSeat < maxSeat union distinct select * from simpletour_master.tour where startingGate = ? and statusTour = 1 and stockSeat < maxSeat) as reTour left outer join (select * from simpletour_master.tour where idTour = ?) as exTour on reTour.idTour = exTour.idTour where exTour.idTour is null order by dateStart asc, amount desc limit 3;
-- SELECT * FROM simpletour_master.tour order by idTour desc limit 9;
-- select * from simpletour_master.tour where saleOff > 0 and statusTour = 1 order by saleOff desc limit 3;
-- insert into simpletour_master.cart(phoneAccount, buyDate, totalPay, statusCart) values(?,?,?,?);
-- update simpletour_master.cart set totalPay = ?, statusCart =? where idCart;
create table simpletour_master.cart(
	idCart int NOT NULL AUTO_INCREMENT,
    phoneAccount nvarchar(12),
    buyDate datetime,
	totalPay double,
    statusCart int,
    constraint pk_cart_id primary key clustered (idCart asc)
    -- constraint fk_phone_account foreign key (phoneAccount) references useraccount(phoneAccount)
);

-- insert into simpletour_master.cartitem(quantity, unitPrice, idTour, idCart) values(?,?,?,?);
create table simpletour_master.cartitem(
	idCartItem int NOT NULL AUTO_INCREMENT,
    quantity int,
    unitPrice double,
    idTour int,
    idCart int,
    constraint pk_cartitem_id primary key clustered (idCartItem asc)
    -- constraint fk_id_tour foreign key (idTour) references tour(idTour),
    -- constraint fk_id_cart foreign key (idCart) references cart(idCart)
    
);
-- update simpletour_master.cartitem set quantity = ?, unitPrice = ?, idTour = ?, idCart = ?;