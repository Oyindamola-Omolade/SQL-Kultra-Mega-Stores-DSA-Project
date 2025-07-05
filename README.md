# MY SQL KULTRA MEGA STORES PROJECT
After completing my Data Analysis classes at Incubator hub,this is my second portfolio project on SQL database Analysis. 

## PROJECT TOPIC :Kultra Mega Stores Inventory
### Project Overview 
 Kultra Mega Stores (KMS) has its headquaters in Lagos, Nigeria, they specialise in office supplies and furniture. Their customer base includes individual customers, small business owners(retail) and large corporate clients (wholesale).
 
 By analysing the various parameters in the data received ( a CSV file containing order data from 2009 - 2012), I seek to gather enough insights to make reasonable decisions which will maximize profit, improve sales, shipping method and customer behaviour.

### Data Sources 
The primary source used for this analysis is a CSV file 

### Tools Used 
- Ms Excel for data cleaning
- SQL Server for data Query and analyis  
  

### Data Cleaning and Preparation  
- Data Loading and inspection
- Handling missing variables
- Data cleaning and formatting

### Exploratory Data Analysis
1. . Which product has the highest sales ?
2. Top and bottom regions in sales
3. Better shipping method
   

### Data Analysis 
I used set of Queries in SQL Server database to get insights into KMS data 

Some Queries I used 

``` SQL
Select top 1
[Product_Category],count
([Product_category])as[Product Count]
from [KMS Sql Case STUDY 3]
group by Product_Category
order by [Product Count] desc

I used this query to find the best performing product category with the highest sales
Office Supplies takes the lead amongst other products in KMS .

select top 1 [Ship_Mode],
sum([Shipping_Cost]) 
as [Total Shipping Cost]
from [KMS Sql Case STUDY 3]
group by Ship_Mode
order by [Total Shipping Cost] desc

I used this query to find the shipping method that KMS incurred the most shipping cost.
```

### Findings 
- Office Supplies has the highest sales in KMS. Office Supplies is KMS best seller , this shows the office supplies KMS sells are of good quality, there is high demand for office supplies. With this insights KMS should stock up more Office Supplies , advertise Office supplies more and leverage on the high sales of Office Supplies to get even more customers.
- West, Ontario and Prarie are the top regions in terms of sales. This shows that there is high demand for the product KMS sells in these regions, there are a lot of satisfied customers in these regions who keep spreading the word of KMS. These regions should be top priority for KMS, stock up more products in this region, leverage on the high sales to get more loyal customers, advertise more, open more branches in these regions.
- KMS incurred the most shipping cost using the Delivery Truck. KMS had less profit or losses using the delivery truck shipping. This is bad for the company's revenue as it is making KMS lose more money. A cheaper alternative must be looked for, customers should be charged more for truck deliveries, truck deliveries should only be used for bulk deliveries to maximize profit and prevent further loses.
- Delivery truck shipping is the most economical but the slowest shipping method and Express Air is the fastest but most expensive. KMS did not appropriately spend shipping costs based on the order priority. The delivery truck shipping method which are best used for bulk deliveries was used for small orders/delivery. Express air was only to be used for urgent deliveries which would mean the customer would pay more delivery fees. This shows the misalignment between shipping cost, speed and order priority leading to inefficient spending and wasted cost. Customers should be informed that truck delivery takes a longer time so KMS can have enough time to gather lots of orders to deliver at once rather than delivering in bits with the truck.




