--select kullan�m� kay�t getirme
--select * from Products
--yineelnen kay�tlar� tek kay�t olarak getir
--select distinct ContactTitle from Customers
--where filtreleme yapar delete,update ve select operasyonlar�nda kullan�l�r
--Select ContactName,ContactTitle from Customers where City='Berlin'
--not �n syntax verdi�imiz de�erler d�s�nda klan de�erleri listelemek i�in
--Select * from Products where ProductName Not IN('pear')
--�n syntax verdi�imiz de�erlerw gore listeleme yapar
--Select * from Customers where CompanyName In('Du monde entier')
--and de 2 de�er do�ruysa �al���r
--Select * from Customers where Country='Germany' And City='Berlin'
--or syntax biri do�ruysa do�rudur
--Select * from Customers where City='Berlin' Or City='Madrid'
--oder by kullan�m� s�ralamak mi�in kullan�l�r default olarak artan s�rada s�ralar
--Select * from Customers order By Country
--order by desc kullan�m� azalan s�rada s�ralar z-a aya do�ru dusunun
--Select CustomerID from Customers order by CustomerID Desc
--insert into kay�t eklemek i�in kullan�l�r
--INSERT INTO Customers (City) Values ('Norway')
-- IS NOT NULL BO� OLMAYAN DE�ERLER� Listelemek i�in kullan�l�r
--Select ContactName,Address from Customers where Address IS NOT NULL
--�s null ise bo� kay�tarI TEST ETMEK i�in kullan�l�r
--select ContactName From Customers where Address IS NULL-
--Update Customers Set ContactName='Maria Anders' where Country='Germany'
--sql delete kullan�m�
--Delete from Customers where CompanyName='Around the Horn'
--belli bir limite g�re kay�t listeleme selct top kullan�m�
--Select top 22 CustomerId from Customers 
--kay�tlar�n belli bir yuzdesini gosterme
--Select top 50 percent * from Customers
--M�N  en kucuk de�er bulma VE MAX en buyuk de�er bulma
--Select Min(UnitPrice) as fiyat from Products
--Select MAX(UnitPrice) as Maxfiayt from Products
--count sat�r say�s�n� doner
--Select Count(UnitsInStock) from Products 
--avg ortalamas�n� al�r
--Select AVG(UnitPrice) from Products
--sum sutunlar� toplar
--SELECT SUM(UnitPrice) from Products
--SQL LIKE arama yapar yuzde i�araetinn ba��nda aras�nda ve sonunda olmas�na gore de�i�ir
--Select * from Products where ProductName like  'a%'
--Select * from Products where ProductName like  '%a'
--Select * from Products WHERE ProductName Like 'chang%'
/*Stored Procedure
CREATE PROCEDURE list
AS
SELECT * FROM Products
EXEC list
*/
