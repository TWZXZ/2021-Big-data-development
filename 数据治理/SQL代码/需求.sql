--按月查看注册人数

select year_month ,sum("人数") "注册人数" from(
    (select year_month , count(year_month ) "人数" from "tangweihw".buyer bi group by year_month ) 
    union all
    (select year_month , count(year_month ) "人数" from "tangweihw".seller si group by year_month) 
) a group  by year_month ;



--按月查看总体销售额

select year_month, sum(total_payment ) "销售额"
from "tangweihw"."order" o  where order_state = 1  group by year_month;


--按月和城市看销售额
select year_month , a.city , sum(total_payment ) "销售额"
from "tangweihw"."order" o , "tangweihw".address a  where o.address_id = a.address_id group by year_month ,a.city;


--按月查看城市、商品类别的销量额
select  o.year_month , ci.cate_name , a.city ,sum(total_payment ) "销售额"
from  "tangweihw"."order" o , "tangweihw".sku s , "tangweihw".cate ci, "tangweihw".address a 
where o.sku_id =s.sku_id and s.cate_id = ci.cate_id  and o.address_id = a.address_id 
group by year_month , ci.cate_name , a.city;


--按月查看性别、商品类别的销售额
select o.year_month , case bi.sex when '1' then '男'  else '女' end as 性别, ci.cate_name , sum(total_payment ) 
from "tangweihw"."order" o , "tangweihw".buyer bi ,"tangweihw".sku s ,"tangweihw".cate ci 
where o.buyer_id  = bi.user_id and o.sku_id =s.sku_id  and s.cate_id =ci.cate_id 
group by o.year_month , bi.sex ,ci.cate_name 
