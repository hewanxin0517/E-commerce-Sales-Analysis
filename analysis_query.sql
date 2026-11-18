use dd_l;
#哪些商品大类是主要收入来源？
select  Category , sum(Sales)  as totalsales from sales
group by Category 
order by totalsales desc;
#哪些区域是核心销售市场？
select Region ,sum(Sales) as totalsales from sales
group by Region
order by totalsales desc;
#某个重点区域里，应该主推哪些品类？
select Region, Category,sum(Sales) as totalsales from sales
group by  Region,Category
order by  Region,totalsales desc;
#分区域做出表格
SELECT 
    Region,
    SUM(CASE WHEN Category = 'Technology' THEN Sales ELSE 0 END) AS 科技销售额,
    SUM(CASE WHEN Category = 'Furniture' THEN Sales ELSE 0 END) AS 家具销售额,
    SUM(CASE WHEN Category = 'Office Supplies' THEN Sales ELSE 0 END) AS 办公用品销售额
FROM sales
GROUP BY Region;

select 
   Segment,
   sum(case when Category = 'Technology' then Sales else 0 end ) as 科技销售额,
   SUM(CASE WHEN Category = 'Furniture' THEN Sales ELSE 0 END) AS 家具销售额,
   SUM(CASE WHEN Category = 'Office Supplies' THEN Sales ELSE 0 END) AS 办公用品销售额
FROM sales
GROUP by Segment;
 #-- 看看全量到底有多少销售额，以及各区域加起来是多少
SELECT Region, SUM(Sales) AS region_total
FROM sales
GROUP BY Region;
select count(*) from sales;
