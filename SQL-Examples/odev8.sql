--CREATE TABLE <table_name> (
--	<column_name> <data_type> <constraint>,
--	
--	<column_name> <data_type> <constraint>;
--)
-----------------------------------------ODEV 8--------------------------------
--1)test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
--CREATE TABLE employee(
--	id SERIAL PRIMARY KEY,
--	name VARCHAR(50) NOT NULL,
--	birthday_date DATE,
--	email VARCHAR(100)
--SELECT * FROM employee
--);
--SELECT * FROM employee;
--2)Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
--3)Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
--UPDATE employee SET name = 'Ahmet ELBUZ', birthday_date = '1998-09-21', email = 'elbuzahmet@gmail.com' WHERE id = 1;
--SELECT * FROM employee
--4)Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım
--DELETE FROM employee
--WHERE email = 'Gustavo86@hotmail.com';
SELECT * FROM employee;
