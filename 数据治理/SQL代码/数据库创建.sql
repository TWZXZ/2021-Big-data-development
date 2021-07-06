
CREATE TABLE "tangweihw"."sell" ( 
  "year_month"   VARCHAR(10) NOT NULL , 
  "city"         VARCHAR(20) NOT NULL , 
  "sex"          CHAR(1)     NOT NULL , 
  "cate_id"      int         NOT NULL , 
  "payment"      FLOAT4,
PRIMARY KEY ( "year_month" , "city" , "sex" , "cate_id" )
);

COMMENT ON TABLE "tangweihw"."sell" 
IS '销售';

COMMENT ON COLUMN "tangweihw"."sell"."year_month" 
IS '年月';

COMMENT ON COLUMN "tangweihw"."sell"."city"
IS '城市';

COMMENT ON COLUMN "tangweihw"."sell"."sex" 
IS '性别';

COMMENT ON COLUMN "tangweihw"."sell"."cate_id" 
IS '类别id';

COMMENT ON COLUMN "tangweihw"."sell"."payment" 
IS '金额';


CREATE TABLE "tangweihw"."cate" ( 
  "cate_id"    int          NOT NULL , 
  "cate_name"   VARCHAR(100),
  PRIMARY KEY ( "cate_id" ) 
 );

COMMENT ON TABLE "tangweihw"."cate" 
IS '类别';

COMMENT ON COLUMN "tangweihw"."cate"."cate_id" 
IS '类别_id';

COMMENT ON COLUMN "tangweihw"."cate"."cate_name" 
IS '类别名_name';


CREATE TABLE "tangweihw"."sku" ( 
"sku_id" int NOT NULL ,
"seller_id" int NOT NULL , 
"cate_id" int NOT NULL , 
"spu_id" int, 
"price" FLOAT4,
PRIMARY KEY ( "sku_id" ) 
);

COMMENT ON TABLE "tangweihw"."sku"
IS 'sku';

COMMENT ON COLUMN "tangweihw"."sku"."sku_id" 
IS 'sku_id';

COMMENT ON COLUMN "tangweihw"."sku"."seller_id" 
IS '商家id';

COMMENT ON COLUMN "tangweihw"."sku"."cate_id"
IS '类别id';

COMMENT ON COLUMN "tangweihw"."sku"."spu_id"
IS 'spu_id';

COMMENT ON COLUMN "tangweihw"."sku"."price" 
IS '价格';


CREATE TABLE "tangweihw"."address" ( 
"address_id" int NOT NULL , 
"province" VARCHAR(20), 
"city" VARCHAR(20),
"detail_address" VARCHAR(100),
PRIMARY KEY ( "address_id" ) 
);


COMMENT ON TABLE "tangweihw"."address" 
IS '地址';

COMMENT ON COLUMN "tangweihw"."address"."address_id" 
IS '地址id';

COMMENT ON COLUMN "tangweihw"."address"."province"
IS '省份';

COMMENT ON COLUMN "tangweihw"."address"."city"
IS '市';

COMMENT ON COLUMN "tangweihw"."address"."detail_address" 
IS '具体地址';

CREATE TABLE "tangweihw"."order" (
"order_id" int NOT NULL ,
"sku_id" int, 
"number" int, 
"total_payment" FLOAT4, 
"order_time" DATE, 
"buyer_id" int, 
"address_id" int, 
"order_state" int,
"year_month" VARCHAR(10),
PRIMARY KEY ( "order_id" )
);

COMMENT ON TABLE "tangweihw"."order" 
IS '订单';

COMMENT ON COLUMN "tangweihw"."order"."order_id" 
IS 'order_id';

COMMENT ON COLUMN "tangweihw"."order"."sku_id"
IS 'sku_id';

COMMENT ON COLUMN "tangweihw"."order"."number" 
IS 'number';

COMMENT ON COLUMN "tangweihw"."order"."total_payment" 
IS 'total_payment';

COMMENT ON COLUMN "tangweihw"."order"."order_time" 
IS 'order_time';

COMMENT ON COLUMN "tangweihw"."order"."buyer_id" 
IS 'buyer_id';

COMMENT ON COLUMN "tangweihw"."order"."address_id" 
IS 'address_id';

COMMENT ON COLUMN "tangweihw"."order"."order_state" 
IS 'order_state';

COMMENT ON COLUMN "tangweihw"."order"."year_month" 
IS 'year_month';


CREATE TABLE "tangweihw"."seller" ( 
"user_id" int NOT NULL , 
"user_name" VARCHAR(20), 
"user_address" int, 
"telephone" VARCHAR(20), 
"password" VARCHAR(20), 
"email" VARCHAR(30), 
"sex" CHAR(1),
"age" int, 
"registe_time" DATE,
"year_month" VARCHAR(10),
PRIMARY KEY ( "user_id" ) 
);

COMMENT ON TABLE "tangweihw"."seller" 
IS '商家信息';

COMMENT ON COLUMN "tangweihw"."seller"."user_id" 
IS '用户id';

COMMENT ON COLUMN "tangweihw"."seller"."user_name" 
IS '用户名';

COMMENT ON COLUMN "tangweihw"."seller"."user_address" 
IS '地址id';

COMMENT ON COLUMN "tangweihw"."seller"."telephone"
IS '电话';

COMMENT ON COLUMN "tangweihw"."seller"."password"
IS '密码';

COMMENT ON COLUMN "tangweihw"."seller"."email" 
IS '邮件';

COMMENT ON COLUMN "tangweihw"."seller"."sex" 
IS '性别';

COMMENT ON COLUMN "tangweihw"."seller"."age" 
IS '年龄';

COMMENT ON COLUMN "tangweihw"."seller"."registe_time" 
IS '注册时间';

COMMENT ON COLUMN "tangweihw"."seller"."year_month"
IS '注册年月';


CREATE TABLE "tangweihw"."buyer" (
"user_id" int NOT NULL ,
"user_name" character varying(20),
"user_address" int, 
"telephone" VARCHAR(20), 
"password" VARCHAR(20), 
"email" VARCHAR(30), 
"sex" CHAR(1), 
"age" int, 
"registe_time" DATE, 
"year_month" VARCHAR(10),
PRIMARY KEY ( "user_id" ) );

COMMENT ON TABLE "tangweihw"."buyer" 
IS '买家信息';

COMMENT ON COLUMN "tangweihw"."buyer"."user_id" 
IS '用户id';

COMMENT ON COLUMN "tangweihw"."buyer"."user_name" 
IS '用户名';

COMMENT ON COLUMN "tangweihw"."buyer"."user_address" 
IS '地址id';

COMMENT ON COLUMN "tangweihw"."buyer"."telephone" 
IS '电话';

COMMENT ON COLUMN "tangweihw"."buyer"."password" 
IS '密码';

COMMENT ON COLUMN "tangweihw"."buyer"."email" 
IS '邮件';

COMMENT ON COLUMN "tangweihw"."buyer"."sex" 
IS '性别';

COMMENT ON COLUMN "tangweihw"."buyer"."age" 
IS '年龄';

COMMENT ON COLUMN "tangweihw"."buyer"."registe_time" 
IS '注册时间';

COMMENT ON COLUMN "tangweihw"."buyer"."year_month" 
IS '注册年月';
