-- select top 3 * from sales_data


---------------------------------------------------------------------------------
-- How does customer age and gender influence their purchasing behavior?
--- first, classification Age column
--select distinct(Age) from sales_data
--order by 1

-- the classification is <=25, 26 - 45, >=46

-- code --

--select Gender, sum([Total Amount]) [Total Amount],
--case 
--	when Age <= 25 then '18 - 25'
--	when Age >= 46 then '> 45'
--	else '26 - 45'
--end as [Age classification]
--from sales_data
--group by Gender,
--case 
--	when Age <= 25 then '18 - 25'
--	when Age >= 46 then '> 45'
--	else '26 - 45'
--end
--order by [Total Amount] desc

-- end code --

--- Based on result for female and/or male who have Age more than 25, can make purchase more than Age under 26.
--- Age have more influence to purcchase behavior, maybe because of their wage.
------------------------------------------------------------------------------------------------------------------------
-- Which product categories hold the highest appeal among customers?
--select [Product Category], SUM(Quantity) from sales_data
--group by [Product Category]
--order by 2 desc

-- Clothing are the most appeal among customers
------------------------------------------------------------------------------------------------------------------------
-- What insights can be gleaned from the distribution of product prices within each category?
--select [Product Category], avg([Price per Unit]) from sales_data
--group by [Product Category]

-- product clothes are cheaper than other category
------------------------------------------------------------------------------------------------------------------------
-- Are there distinct purchasing behaviors based on the number of items bought per transaction?
-- select count(distinct([Customer ID])), count([Transaction ID]) from sales_data
-- cant get information if num of transaction is equal with num of customer id, there are correlation i think


--select YEAR([Date]) [Year], [Product Category], avg(Quantity) average_quantity from sales_data
--group by YEAR([Date]), [Product Category]
--order by 1
-- as we can see in 1st question, there's no correlation between gender and total amount
-- in 2023, all category product have same average quantity purchase, 2024 there is no clothing purchase
--------------------------------------------------------------------------------------------------------------------------------
