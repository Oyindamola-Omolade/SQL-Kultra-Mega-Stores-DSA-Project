select * 
from [KMS Sql Case Study 3]

-----Question 1 what product category has the highest sales -----
Select top 1
[Product_Category],count
([Product_category])as[Product Count]
from [KMS Sql Case STUDY 3]
group by Product_Category
order by [Product Count] desc

--------Question 2 What are the top 3 and bottom 3 regions in terms of sales -----
select top 3 [Region],sum([Sales])
as [Total Sales]
from [KMS Sql Case STUDY 3]
group by Region
order by [Total Sales] desc

select top 3 [Region],sum([Sales])
as [Total Sales]
from [KMS Sql Case STUDY 3]
group by Region
order by [Total Sales] asc


-----Question 3 What were the total sales of appliances in Ontario?
select region, sum(sales) 
as [Total Sales]
from [KMS Sql Case STUDY 3]
where Region='Ontario'
group by Region


------Question 4 Advise the Management of KMS on what to do to increase the revenue from the bottom 10 customers----
select top 10 [Customer_Name],
sum([Sales]) as [Total Sales]
from [KMS Sql Case STUDY 3]
group by Customer_Name
order by [Total Sales] asc


------Question 5 KMS incurred the most shipping cost using which shipping method?
select top 1 [Ship_Mode],
sum([Shipping_Cost]) 
as [Total Shipping Cost]
from [KMS Sql Case STUDY 3]
group by Ship_Mode
order by [Total Shipping Cost] desc


-------Question 6 Who are the most valuable customers, and what products or services do they typically purchase?
select [Customer_Name],Product_Name,
sum(Sales) as [Total Sales]
from [KMS Sql Case STUDY 3]
group by Customer_Name,Product_Name
order by [Total Sales] desc


------Question 7 Which small business customer had the highest sales?
select top 1
Customer_Name,Customer_Segment,
sum([Sales]) as [Total Sales]
from [KMS Sql Case STUDY 3]
where Customer_Segment ='Small Business'
group by Customer_Name,Customer_Segment
order by [Total Sales] desc


------Question 8 Which corporate customer placed the most number of orders in 2009 - 2012?
select top 1
Customer_Name,Customer_Segment,
count([Order_ID]) as [Total Order]
from [KMS Sql Case STUDY 3]
where Customer_Segment='Corporate' and Order_Date between '2009' and '2012'
group by Customer_Name,Customer_Segment
order by [Total Order] desc


------Question 9 Which consumer customer was the most profitable one?
select top 1
Customer_Name,Customer_Segment,
sum([Profit]) as [Total Profit]
from [KMS Sql Case STUDY 3]
where Customer_Segment='Consumer'
group by Customer_Name,Customer_Segment
order by [Total Profit] desc

--------Question 10 Which customer returned items , and what segment do they belong to?
select Customer_Name,Customer_Segment,[Status]
from [KMS Sql Case STUDY 3]
join [dbo].[Order_Status]
on [KMS Sql Case STUDY 3].Order_ID=[dbo].[Order_Status].[Order_ID]


------Question 11 
select Order_Priority,Ship_Mode,
count ([Order_ID]) 
as [Order count],
sum(Sales-Profit)
as [Estimated Shipping Cost],
AVG(DATEDIFF(DAY,[Order_Date],[Ship_Date]))
as [Avg Ship Date]
from [KMS Sql Case STUDY 3]
group by Order_Priority,Ship_Mode
order by Order_Priority,Ship_Mode desc





