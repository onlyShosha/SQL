-- Day 1. Select, Insert, Update, Delete
--select * from orders

-- menghapus row 6
--delete from orders where [Order ID] = 'CA-2015-167269'

-- memasukkan data
--insert into orders ([Order ID], [Order Date], [Ship Date], [Ship Mode], [Customer ID], [Product ID])
--values ('CA-2015-167269', '6/16/2015', '6/20/2015', 'Standard Class', 'PB-19150', 'OFF-EN-10003072')

-- memodifikasi data
--update orders
--set [Ship Mode] = 'Second Class'
--where [Order ID] = 'CA-2015-167269'

-- Day 2. Filtering and Sorting Data
-- mencari penjualan diatas 1000
--select * from products
--where Sales >= 1000

-- memunculkan semua nama produk dan diurutkan berdasarkan alphabetical
--select [Product Name] from products
--order by 1 asc

-- total produk yg terjual pada tabel products
--select count(*) as Total_Sales from products

-- Day 3. Joining Tables
-- munculkan nama produk, categori beserta nama customernya.
--select products.[Product ID], products.[Product Name], products.[Category], customers.[Customer Name] from products
--left join customers on customers.[Product ID] = products.[Product ID]

-- memunculkan nama customer name dengan sekali pembelian diatas 10000
--select customers.[Product ID], products.Sales from customers
--left join products on customers.[Product ID] = products.[Product ID]
--where Sales > 10000

-- Day 4 Aggregating Data
-- memunculkan rata-rata penjualan di setiap wilayah
--select customers.[State], sum(products.Sales) as total_penjualan from customers
--left join products on customers.[Customer ID] = products.[Customer ID]
--group by [State]

-- memunculkan penjualan tertinggi berdasarkan kategori produk
--select Category, max(Sales) from products
--group by Category
--order by 2 desc

-- memunculkan jumlah penjualan berdasarkan segment dan sub kategorinya
--select customers.Segment, products.[Sub-Category], SUM(products.Sales) as [Jumlah Pembelian] from customers
--left join products on customers.[Product ID] = products.[Product ID]
--group by customers.Segment, products.[Sub-Category]

-- Day 5 Data manipulation
-- membuat table baru yang berisi sales,kuantiti, diskon, profit dari tabel produk
--insert into sales ([Order ID],[Customer ID], [Product ID], Sales, Quantity, Profit)
--select [Order ID],[Customer ID], [Product ID], Sales, Quantity, Profit from products

-- Day 6. Advanced filtering and sorting
-- memunculkan transaksi produk diatas 1000 dari bulan oktober hingga desember 2017
--select orders.[OrDate_Month], orders.[OrDate_Day], products.[Product Name], products.Sales from orders
--left join products on orders.[Order ID] = products.[Order ID]
--where products.Sales > 1000 
--and orders.[OrDate_Month] between 10 and 12 
--and orders.[OrDate_Year] = 2017
--order by 1,2

-- memunculkan produk yang tidak memiliki nama
--select [Product Name] from products
--where [Product Name] is null
