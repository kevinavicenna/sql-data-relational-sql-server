-- 1. Pelanggan yang belum pernah melakukan pembelian sebelumnya
SELECT concat(p.FirstName,' ',p.LastName) as Nama
FROM Person.Person AS p
LEFT JOIN Sales.SalesOrderHeader AS soh ON p.BusinessEntityID = soh.CustomerID
WHERE soh.CustomerID IS NULL;

-- 2. Produk yang belum pernah dibeli oleh pelanggan
SELECT DISTINCT p.Name
FROM Production.Product AS p
LEFT JOIN Sales.SalesOrderDetail AS sod ON p.ProductID = sod.ProductID
WHERE sod.SalesOrderID IS NULL;

-- 3. Rata-rata total pembelian dari semua pelanggan
SELECT AVG(TotalDue) AS RataRata_TotalPembelian
FROM Sales.SalesOrderHeader;

-- 4. Total pembelian dari setiap pelanggan
SELECT CONCAT(p.FirstName,' ',p.LastName) as Nama, SUM(soh.TotalDue) AS Total_Pembelian
FROM Person.Person AS p
INNER JOIN Sales.SalesOrderHeader AS soh ON p.BusinessEntityID = soh.CustomerID
GROUP BY CONCAT(p.FirstName,' ',p.LastName)
ORDER BY Total_Pembelian desc;


-- 5. Produk dengan presentase diskon tertinggi dari total harga
SELECT TOP 1 p.Name, so.DiscountPct
FROM Production.Product AS p
INNER JOIN Sales.SalesOrderDetail AS sod ON p.ProductID = sod.ProductID
INNER JOIN Sales.SpecialOffer AS so ON so.SpecialOfferID = sod.SpecialOfferID
ORDER BY so.DiscountPct DESC;



-- 6. Pelanggan dengan pesanan terbanyak sepanjang waktu
SELECT TOP 1 CONCAT(p.FirstName,' ',p.LastName) as Nama, count(*) as TotalPesanan
FROM Person.Person AS p
INNER JOIN Sales.SalesOrderHeader AS soh ON p.BusinessEntityID = soh.CustomerID
GROUP BY CONCAT(p.FirstName,' ',p.LastName)
ORDER BY COUNT(soh.SalesOrderID) DESC;


-- 7. Pelanggan dengan pembelian terbanyak selama tahun 2014
SELECT TOP 1 CONCAT(p.FirstName,' ',p.LastName) as Nama, SUM(soh.TotalDue) AS TotalPembelian2014
FROM Person.Person AS p
INNER JOIN Sales.SalesOrderHeader AS soh ON p.BusinessEntityID = soh.CustomerID
WHERE YEAR(soh.OrderDate) = 2014
GROUP BY CONCAT(p.FirstName,' ',p.LastName)
ORDER BY TotalPembelian2014 DESC;

-- 8. Jumlah pesanan yang dibayar menggunakan metode pembayaran "Visa"
SELECT COUNT(*) AS Jumlah_Pesanan_Visa
FROM Sales.SalesOrderHeader AS soh
INNER JOIN Sales.CreditCard AS cc ON soh.CreditCardID = cc.CreditCardID
WHERE cc.CardType = 'Vista';

