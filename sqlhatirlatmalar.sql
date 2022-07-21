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
--INNER) JOIN: Her iki tabloda da eşleşen değerlere sahip kayıtları döndürür
--LEFT (OUTER) JOIN: Soldaki tablodaki tüm kayıtları ve sağdaki tablodaki eşleşen kayıtları döndürür.
--RIGHT (OUTER) JOIN: Sağdaki tablodaki tüm kayıtları ve soldaki tablodaki eşleşen kayıtları döndürür.
--FULL (OUTER) JOIN: Sol veya sağ tabloda bir eşleşme olduğunda tüm kayıtları döndürür
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
ORDER BY A.City;
*/
--unionlar iki select ifadesini birleşitrirr tablolar aynı sutunlardan oluşmalı,sutunlar aynı sırada olmalı ve sutunlar aynı veri tiplerinde oolmalı
/*SELECT City FROM Customers
union 
SELECT City FROM Suppliers
ORDER BY City;
*/
--Grop by ifadesi aynı değerlere sahip satırlarıgruplandıırrı genellikle count,max,min,sym,avg gibi işlemelrde kullanılır
--Select COUNT(CustomerID),country from customers group by Country
--having where ile aynı gorevi gorur int değerlerde filtreleme yapmak için
--select count(CustomerID),Country from Customers Group by country having count(customerID)>5
--exits boollean doner kayıt var mı yok mu c3 dan hatırlarsınız
--Select companyName from Suppliers where exists (select productName from Products where Products.SupplierID=Suppliers.SupplierID and UnitPrice < 20)
--any herhangi bir değer istediğimiz koşulu karşılıyorsa true değilse false
--Select ProductName from Products where ProductID=any (select ProductID from [Order Details] where Quantity=10)
--all operatoreu ise tum kayıtlarda istediğiim koşulun karşılanıp karşılaşmadığına bakar bolean
--select productname from products where ProductID=All (select ProductID from [Order Details] where Quantity=0)
--select into verileri bir tablodan diğer tabloya kopyalar
--select  * into yedek from customers
--insert into select ise kopyalar ve doldurur veri türlerinin eşelnmesi lazım aynı tip
--INSERT INTO  Customers (City,Country) select City,Country from Suppliers
--CASE switch yapısına benzer
/*SELECT Country from Customers
order by
(Case
    when City is Null then Country
	else City
   
end);
*/
--yeni veri tabanı oluşturma
--create database alicann
--drop ile veri tabanını silme
--drop database alicann
-- backup databese ile veri tabanını yedeğini alırsınız
--backup database alican to disk ='c:\alicandosyalar\test.bak'
-- tablo oluşturma
/*CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
*/
-- tablo silme drop table
-- TRUNBCATE İLE TABLONUN İÇİNDEKİ VERİLERİ SİLERİZ TABLO KALIR
--TRUNCATE TABLE Orders
/*

NOT NULL - Bir sütunun NULL değerine sahip olmamasını sağlar
BENZERSİZ - Bir sütundaki tüm değerlerin farklı olmasını sağlar
BİRİNCİL ANAHTAR - NULL DEĞİL ve BENZERSİZ kombinasyonu. Bir tablodaki her satırı benzersiz bir şekilde tanımlar
YABANCI ANAHTAR - Tablolar arasındaki bağlantıları yok edecek eylemleri engeller
check - Bir sütundaki değerlerin belirli bir koşulu karşılamasını sağlar
default - Değer belirtilmemişse bir sütun için varsayılan bir değer ayarlar
CREATE INDEX - Veritabanından çok hızlı bir şekilde veri oluşturmak ve almak için kullanılır
*/
-- viewsler mvcden tanıyoruz :)
Create View alican as 
select UnitPrice  from Products 
