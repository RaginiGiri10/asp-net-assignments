--creating database MobileDB
create database MobileDB
go
use MobileDB
go
--creating table Mobile
create table Mobile(
Id int not null primary key identity(3000,1),
[Name] varchar(30),
[Description] varchar(30),
Price int
);
go
insert into Mobile
values('Iphone','ios',50000)
go
--1)Creating stored procedure to add mobile
create proc sp_AddMobile(
@name varchar(30),
@description varchar(30),
@price int)
as
begin
insert into Mobile values(@name,@description,@price)
end
go
--2)Creating stored procedure to view all mobiles available in the store
create proc sp_viewAllMobilesAvailableInStore
as
begin
select Id,[Name],[Description],Price from Mobile
end
go
exec sp_viewAllMobilesAvailableInStore
go

select * from Mobile
go
--3)creating table country and inserting values
create table Manufacturer(
Id int Primary Key Identity(1,1),
ManufacturedBy varchar(50)
)
go
insert into Manufacturer values('Samsung'),('Apple'),('LG'),('OnePlus'),('Motorola')
go
select * from Manufacturer
go
--4)create stored procedure to get manufacturers
create procedure spGetManufacturer
as
begin
select Id,ManufacturedBy from Manufacturer
end
go
exec spGetManufacturer
go
--5)Alter table Mobile
Alter table Mobile
Add Manufacturer varchar(50)
go
select * from Mobile
go
--6)alter procedure 
alter procedure sp_AddMobile  
@name varchar(30),
@description varchar(30),
@price int,
@manufacturedBy varchar(50)
as
begin
insert into Mobile values(@name,@description,@price,@manufacturedBy)
end

go
--7)Alter procedure spView
alter procedure sp_viewAllMobilesAvailableInStore 
as  
begin  
select Id,[Name],[Description],Price,Manufacturer from Mobile  
end  
go
exec sp_viewAllMobilesAvailableInStore  