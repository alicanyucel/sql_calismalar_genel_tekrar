--select kullanýmý kayýt getirme
--select * from Products
--yineelnen kayýtlarý tek kayýt olarak getir
--select distinct ContactTitle from Customers
--where filtreleme yapar delete,update ve select operasyonlarýnda kullanýlýr
--Select ContactName,ContactTitle from Customers where City='Berlin'
--not ýn syntax verdiđimiz deđerler dýsýnda klan deđerleri listelemek için
--Select * from Products where ProductName Not IN('pear')
--ýn syntax verdiđimiz deđerlerw gore listeleme yapar
--Select * from Customers where CompanyName In('Du monde entier')
--and de 2 deđer dođruysa çalýţýr
--Select * from Customers where Country='Germany' And City='Berlin'
--or syntax biri dođruysa dođrudur
--Select * from Customers where City='Berlin' Or City='Madrid'
--oder by kullanýmý sýralamak miçin kullanýlýr default olarak artan sýrada sýralar
--Select * from Customers order By Country
--order by desc kullanýmý azalan sýrada sýralar z-a aya dođru dusunun
--Select CustomerID from Customers order by CustomerID Desc
--insert into kayýt eklemek için kullanýlýr
--INSERT INTO Customers (City) Values ('Norway')
-- IS NOT NULL BOŢ OLMAYAN DEĐERLERÝ Listelemek için kullanýlýr
--Select ContactName,Address from Customers where Address IS NOT NULL
--ýs null ise boţ kayýtarI TEST ETMEK için kullanýlýr
--select ContactName From Customers where Address IS NULL-
--Update Customers Set ContactName='Maria Anders' where Country='Germany'
--sql delete kullanýmý
--Delete from Customers where CompanyName='Around the Horn'
--belli bir limite göre kayýt listeleme selct top kullanýmý
--Select top 22 CustomerId from Customers 
--kayýtlarýn belli bir yuzdesini gosterme
--Select top 50 percent * from Customers
--MÝN  en kucuk deđer bulma VE MAX en buyuk deđer bulma
--Select Min(UnitPrice) as fiyat from Products
--Select MAX(UnitPrice) as Maxfiayt from Products
--count satýr sayýsýný doner
--Select Count(UnitsInStock) from Products 
--avg ortalamasýný alýr
--Select AVG(UnitPrice) from Products
--sum sutunlarý toplar
--SELECT SUM(UnitPrice) from Products
--SQL LIKE arama yapar yuzde iţaraetinn baţýnda arasýnda ve sonunda olmasýna gore deđiţir
--Select * from Products where ProductName like  'a%'
--Select * from Products where ProductName like  '%a'
--Select * from Products WHERE ProductName Like 'chang%'
/*Stored Procedure
CREATE PROCEDURE list
AS
SELECT * FROM Products
EXEC list
*/
EXEC list*/
--In Operatoruçoklu or koşulları belirtmek için kullanılır joınde birleşlştirme koşulu belirten operatoru olan on gibi dusunun
-- içinde germany,france ve uk olan jkayıtları getir
--Select * from Customers Where Country In ('Germany','France','Uk')
--beetwen kullanımı BETWEEN operatörü, belirli bir aralıktaki değerleri seçer. Değerler sayı, metin veya tarih olabilir.
--BETWEEN operatörü kapsayıcıdır: başlangıç ​​ve bitiş değerleri dahildir.
--Select * From Products Where UnitPrice Between 10 and 20
--aliases sutunları farklı isimlendşirmek için kullanılır
--select ProductName As urunismi from Products
--varolan tabloya sutun eklemek
--ALTER TABLE Products ADD islem VARCHAR(50) NOT NULL DEFAULT('ALİCAN')
--select * from Products
--joınler
INNER) JOIN: Her iki tabloda da eşleşen değerlere sahip kayıtları döndürür
LEFT (OUTER) JOIN: Soldaki tablodaki tüm kayıtları ve sağdaki tablodaki eşleşen kayıtları döndürür.
RIGHT (OUTER) JOIN: Sağdaki tablodaki tüm kayıtları ve soldaki tablodaki eşleşen kayıtları döndürür.
FULL (OUTER) JOIN: Sol veya sağ tabloda bir eşleşme olduğunda tüm kayıtları döndürür
*/
/*SELECT Orders.OrderID, Customers.CompanyName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
*/
/*SELECT Customers.CompanyName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CompanyName;
*/
/*SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;
*/
/*SELECT Customers.CompanyName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CompanyName;
*/
-- tablo kendisiyle birleşitirlir self joın
/*SELECT A.CompanyName AS CustomerName1, B.CompanyName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;*/
