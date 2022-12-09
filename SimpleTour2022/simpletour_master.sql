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
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Kiên Giang - Phú Quốc','',58,'','',5490000,'2022-12-5','2022-12-7',50,30,40,'Hồ Chí Minh','https://iili.io/HCVd6hJ.jpg',10,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Khánh Hòa - Nha Trang','',37,'','',2040000,'2022-12-5','2022-12-6',50,30,40,'Ninh Thuận','https://iili.io/HCVdas4.jpg',15,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('An Giang - Châu Đốc','',57,'','',2191000,'2022-12-5','2022-12-6',50,30,40,'Hồ Chí Minh','https://iili.io/HCVd012.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Lào Cai - Sapa','',6,'','',3050000,'2022-12-7','2022-12-8',50,30,40,'Hà Nội','https://iili.io/HCVdlql.gif',5,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Đà Nẵng - Hội An','',32,'','',2780000,'2022-12-5','2022-12-7',50,30,40,'Hồ Chí Minh','https://iili.io/HCVdYXf.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Khánh Hòa - Nha Trang','',37,'','',2821000,'2022-12-9','2022-12-11',50,30,40,'Hồ Chí Minh','https://iili.io/HCVd1gS.gif',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Bình Định - Quy Nhơn','',35,'','',3590000,'2022-12-8','2022-12-11',50,30,40,'Hồ Chí Minh','https://iili.io/HCVdM79.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Bình Định - Quy Nhơn','',35,'','',4390000,'2022-12-10','2022-12-13',50,30,40,'Hồ Chí Minh','https://iili.io/HCVdVee.jpg',0,0);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Bình Thuận - Phan Thiết','',39,'','',3551000,'2022-12-5','2022-12-7',50,30,40,'Hồ Chí Minh','https://iili.io/HCVdWmu.gif',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Lâm Đồng - Đà Lạt','',44,'','',1850000,'2022-12-10','2022-12-12',50,30,40,'Hồ Chí Minh','https://iili.io/HCVdhzb.jpg',5,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Bà Rịa - Vũng Tàu','',49,'','',2480000,'2022-12-9','2022-12-10',50,30,40,'Hồ Chí Minh','https://iili.io/HCVdjXj.jpg',0,0);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('An Giang - Châu Đốc','',57,'','',2090000,'2022-12-18','2022-12-20',50,30,40,'Hồ Chí Minh','https://iili.io/HCVd012.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Hồ Chí Minh','',50,'','',730000,'2022-12-10','2022-12-10',50,30,40,'Hồ Chí Minh','https://iili.io/HCVdOqQ.jpg',0,0);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Tiền Giang - Cái Bè','',52,'','',2520000,'2022-12-25','2022-12-26',50,30,40,'Hồ Chí Minh','https://iili.io/HCVde1V.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Tiền Giang - Mỹ Tho','',52,'','',2799000,'2022-12-25','2022-12-27',50,30,40,'Hồ Chí Minh','https://iili.io/HCVdkrB.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Kiên Giang - Nam Giang','',58,'','',1790000,'2022-12-5','2022-12-6',50,30,40,'Hồ Chí Minh','https://iili.io/HCVd8dP.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Cà Mau','',63,'','',2200000,'2022-12-23','2022-12-24',0,0,20,'Hồ Chí Minh','https://iili.io/HCVdgmg.jpg',0,0);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Đồng Tháp','',56,'','',700000,'2022-12-28','2022-12-28',50,30,40,'Cần Thơ','https://iili.io/HCVdS71.jpg',0,0);

insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Ninh Bình','',25,'','',800000,'2022-12-10','2022-12-10',69,19,30,'Hà Nội','http://cdn.tgdd.vn/Files/2022/03/27/1422550/kinh-nghiem-du-lich-hoa-lu-ninh-binh-cho-nguoi-lan-dau-moi-di-202203270203388706.jpg',10,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Củ Chi','',50,'','',500000,'2022-12-10','2022-12-10',76,16,20,'Hồ Chí Minh','https://res.klook.com/image/upload/c_fill,w_816,h_460/w_80,x_15,y_15,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/kzznsscv2siw9xvn0zwy.webp',20,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Lâm Đồng – Bảo Lộc','',44,'','',500000,'2022-12-10','2022-12-11',44,24,40,'Hồ Chí Minh','https://media.travel.com.vn/tour/tfd_211109012343_442956.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Đắk Lắk – Buôn Ma Thuột','',42,'','',2500000,'2022-12-10','2022-12-11',53,23,30,'Hồ Chí Minh','https://dulichviet.com.vn/images/bandidau/2019-NOI-DIA/MIEN-TRUNG/TAY-NGUYEN/du-lich-tay-nguyen-tour-tham-quan-dray-nur-2019.jpg',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Khánh Hòa – Cam Ranh','',37,'','',1500000,'2022-12-10','2022-12-11',56,16,30,'Hồ Chí Minh','https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2021/04/top-10-vung-vinh-dep-nhat-nen-den-trong-mua-he-20216.jpg',10,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Khánh Hòa – Nha Trang','',37,'','',1700000,'2022-12-10','2022-12-12',87,37,40,'Hồ Chí Minh','https://tindulichkhanhhoa.com/wp-content/uploads/2020/09/kinh-nghiem-du-lic-nha-trang-1.jpg',5,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Lâm Đồng – Đà Lạt','',44,'','',1700000,'2022-12-10','2022-12-12',29,19,20,'Hồ Chí Minh','https://www.vietnambooking.com/wp-content/uploads/2022/11/tour-da-lat-3-ngay-3-dem-13.jpg',10,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Đà Nẵng','',32,'','',1000000,'2022-12-10','2022-12-11',10,10,20,'Đà Nẵng','http://hanoimoi.com.vn/Uploads/images/quangcao2/2022/08/24/30CAFAF7-8C70-4463-B1AF-A71FDF7DC680.png',0,1);
insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values('Thừa Thiên Huế','',31,'','',1700000,'2022-12-10','2022-12-12',24,14,20,'Đà Nẵng','https://statics.vinpearl.com/du-lich-hue-3-ngay-2-dem-0_1627396083.jpg',0,1);
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
    -- constraint fk_phone_account foreign key (phoneAccount) references useraccount(phoneAccount) on update cascade
);

-- insert into simpletour_master.cartitem(quantity, unitPrice, idTour, idCart) values(?,?,?,?);
create table simpletour_master.cartitem(
	idCartItem int NOT NULL AUTO_INCREMENT,
    quantity int,
    unitPrice double,
    idTour int,
    idCart int,
    constraint pk_cartitem_id primary key clustered (idCartItem asc)
    -- constraint fk_id_tour foreign key (idTour) references tour(idTour) on update cascade,
    -- constraint fk_id_cart foreign key (idCart) references cart(idCart) on update cascade
    
);
-- update simpletour_master.cartitem set quantity = ?, unitPrice = ?, idTour = ?, idCart = ?;


