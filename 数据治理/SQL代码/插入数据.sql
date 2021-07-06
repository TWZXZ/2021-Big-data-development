

--地址
insert into "tangweihw".address  values (0,'广东省','广州市','番禺');
insert into "tangweihw".address  values (1,'广东省','广州市','黄埔');
insert into "tangweihw".address  values (2,'广东省','深圳市','鹅城');
insert into "tangweihw".address  values (3,'江西省','上饶市','信州');
insert into "tangweihw".address  values (4,'江西省','上饶市','广丰');
insert into "tangweihw".address  values (5,'江西省','上饶市','铅山');
insert into "tangweihw".address  values (6,'江西省','南昌市','新建');
insert into "tangweihw".address  values (7,'江苏省','无锡市','江阴');
insert into "tangweihw".address  values (8,'江苏省','无锡市','新吴');

--买家
insert into "tangweihw".buyer values (0,'userA',0,'18270151257','password1','abcdefg@qq.com','1',21,to_date('20210702','yyyymmdd'),'2020-01');
insert into "tangweihw".buyer values (1,'userB',1,'18270151256','password1','abcdefg@qq.com','0',20,to_date('20210702','yyyymmdd'),'2020-02');
insert into "tangweihw".buyer values (2,'userC',2,'18270151258','password1','abcdefg@qq.com','1',19,to_date('20210602','yyyymmdd'),'2020-03');
insert into "tangweihw".buyer values (3,'userD',3,'18270151259','password1','abcdefg@qq.com','1',19,to_date('20210502','yyyymmdd'),'2020-04');
insert into "tangweihw".buyer values (4,'userE',4,'18270151259','password1','abcdefg@qq.com','0',18,to_date('20210502','yyyymmdd'),'2020-05');
insert into "tangweihw".buyer values (5,'userG',5,'1827015125','password1','abcdefg@qq.com','1',20,to_date('20210502','yyyymmdd'),'2020-06');
insert into "tangweihw".buyer values (6,'userJ',6,'18270151250','password1','abcdefg@qq','0',32,to_date('20210502','yyyymmdd'),'2020-07');
insert into "tangweihw".buyer values (7,'userL',7,'18270151253','password1','abcdefg@qq.com','0',16,to_date('20210502','yyyymmdd'),'2020-08');

--商家
insert into "tangweihw".seller values (0,'seller0',5,'13712345678','password1','abcdefg@qq.com','1',21,to_date('20210502','yyyymmdd'),'2021-05');
insert into "tangweihw".seller values (1,'seller1',8,'13712345678','password1','abcdefg@qq.com','1',23,to_date('20210502','yyyymmdd'),'2021-05');
insert into "tangweihw".seller values (2,'seller1',6,'1371234567','password1','abcdefg@qq','1',16,to_date('20210502','yyyymmdd'),'2021-05');
--商品类别
insert  into "tangweihw".cate values(0,'手机');
insert  into "tangweihw".cate values(1,'电脑');
insert  into "tangweihw".cate values(2,'鞋子');
insert  into "tangweihw".cate values(3,'手机');
insert  into "tangweihw".cate values(4,'眼镜');
insert  into "tangweihw".cate values(5,'书');


--商品
insert  into "tangweihw".sku values(0,0,0,0,100);
insert  into "tangweihw".sku values(1,0,0,1,200);
insert  into "tangweihw".sku values(2,0,1,0,150);
insert  into "tangweihw".sku values(3,0,2,1,100);
insert  into "tangweihw".sku values(4,0,2,0,150);
insert  into "tangweihw".sku values(5,1,0,0,100);
insert  into "tangweihw".sku values(6,1,0,1,200);
insert  into "tangweihw".sku values(7,1,1,0,150);
insert  into "tangweihw".sku values(8,1,2,1,100);
insert  into "tangweihw".sku values(9,1,2,0,150);


--订单
insert  into "tangweihw"."order"  values(0,0,1,100,to_date('20210102','yyyymmdd'),0,0,1,'2021-01');
insert  into "tangweihw"."order"  values(1,1,1,100,to_date('20210102','yyyymmdd'),0,0,1,'2021-01');
insert  into "tangweihw"."order"  values(2,1,1,100,to_date('20210202','yyyymmdd'),1,1,2,'2021-02');
insert  into "tangweihw"."order"  values(3,0,1,100,to_date('20210302','yyyymmdd'),3,3,3,'2021-03');
insert  into "tangweihw"."order"  values(4,3,1,100,to_date('20210402','yyyymmdd'),2,2,0,'2021-04');
insert  into "tangweihw"."order"  values(5,3,1,100,to_date('20210102','yyyymmdd'),0,0,1,'2021-01');
insert  into "tangweihw"."order"  values(6,0,1,100,to_date('20210302','yyyymmdd'),3,1,1,'2021-03');
insert  into "tangweihw"."order"  values(7,0,1,100,to_date('20210102','yyyymmdd'),1,1,1,'2021-01');
