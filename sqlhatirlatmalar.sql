--select kullanýmý kayýt getirme
--select * from Products
--yineelnen kayýtlarý tek kayýt olarak getir
--select distinct ContactTitle from Customers
--where filtreleme yapar delete,update ve select operasyonlarýnda kullanýlýr
--Select ContactName,ContactTitle from Customers where City='Berlin'
--not ýn syntax verdiðimiz deðerler dýsýnda klan deðerleri listelemek için
--Select * from Products where ProductName Not IN('pear')
--ýn syntax verdiðimiz deðerlerw gore listeleme yapar
--Select * from Customers where CompanyName In('Du monde entier')
--and de 2 deðer doðruysa çalýþýr
--Select * from Customers where Country='Germany' And City='Berlin'
--or syntax biri doðruysa doðrudur
--Select * from Customers where City='Berlin' Or City='Madrid'
--oder by kullanýmý sýralamak miçin kullanýlýr default olarak artan sýrada sýralar
--Select * from Customers order By Country
--order by desc kullanýmý azalan sýrada sýralar z-a aya doðru dusunun
--Select CustomerID from Customers order by CustomerID Desc
--insert into kayýt eklemek için kullanýlýr
--INSERT INTO Customers (City) Values ('Norway')
-- IS NOT NULL BOÞ OLMAYAN DEÐERLERÝ Listelemek için kullanýlýr
--Select ContactName,Address from Customers where Address IS NOT NULL
--ýs null ise boþ kayýtarI TEST ETMEK için kullanýlýr
--select ContactName From Customers where Address IS NULL-
--Update Customers Set ContactName='Maria Anders' where Country='Germany'
--sql delete kullanýmý
--Delete from Customers where CompanyName='Around the Horn'
--belli bir limite göre kayýt listeleme selct top kullanýmý
--Select top 22 CustomerId from Customers 
--kayýtlarýn belli bir yuzdesini gosterme
--Select top 50 percent * from Customers
--MÝN  en kucuk deðer bulma VE MAX en buyuk deðer bulma
--Select Min(UnitPrice) as fiyat from Products
--Select MAX(UnitPrice) as Maxfiayt from Products
--count satýr sayýsýný doner
--Select Count(UnitsInStock) from Products 
--avg ortalamasýný alýr
--Select AVG(UnitPrice) from Products
--sum sutunlarý toplar
--SELECT SUM(UnitPrice) from Products
--SQL LIKE arama yapar yuzde iþaraetinn baþýnda arasýnda ve sonunda olmasýna gore deðiþir
--Select * from Products where ProductName like  'a%'
--Select * from Products where ProductName like  '%a'
--Select * from Products WHERE ProductName Like 'chang%'
/*Stored Procedure
CREATE PROCEDURE list
AS
SELECT * FROM Products
EXEC list
*/
