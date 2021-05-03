
use BusinessIntelligenceDB
go

--************************************************************************************
--** Tables for Cache Transformation Example
--************************************************************************************
go

drop table if exists dbo.ProductInfo;

create table dbo.ProductInfo
( ProductGroupID int, ProductID int, ProductName varchar(20), ProductWeight decimal, ProductPrice money);


truncate table dbo.ProductInfo;


insert into dbo.ProductInfo values
(1, 201, 'Cycle Trek', 10, 100),
(1, 202, 'Cycle Speed', 15, 100),
(1, 203, 'Cycle Walker', 12, 100),

(2, 201, 'Drone Flyer', 5, 500),
(2, 202, 'Drone NightHawk', 3, 1000),

(3, 201, 'RC Truck', 1.23, 250),
(3, 202, 'RC Chopper', 2.23, 350),
(3, 203, 'RC Train', 4.35, 450),
(3, 204, 'RC Car', 1.75, 150);


drop table if exists dbo.SalesDetails;


create table dbo.SalesDetails
( SalesID int, ProductGroupID int, ProductID int, Quantity int, TotalPrice money, discount money);


truncate table dbo.SalesDetails;


insert into dbo.SalesDetails values
(700, 1, 201, 1, 100,10),
(701, 2, 202, 2, 2000,10),
(702, 3, 202, 1, 350,10),
(703, 4, 200, 10, 10,10)



select * from dbo.ProductInfo;
select * from dbo.SalesDetails;
Go

--************************************************************************************
--** Tables for Fuzzy Example Transformation Example
--************************************************************************************
go

drop table if exists dbo.Occupation;
create table dbo.Occupation
(
	OccupationID 		smallint identity(1,1) not null,
	OccupationTitle 	varchar(50) not null,
	constraint PK_Occupation primary key clustered (OccupationID asc)
); 

truncate table dbo.Occupation;
insert into dbo.Occupation values ('CUSTOMER SERVICE REPRESENTATIVE');
insert into dbo.Occupation values ('ASSISTANT MANAGER');
insert into dbo.Occupation values ('REGIONAL MANAGER');
insert into dbo.Occupation values ('STORE MANAGER');
insert into dbo.Occupation values ('SHIFT LEADER');
insert into dbo.Occupation values ('DISTRICT MANAGER');

drop table if exists dbo.Employees;
create table dbo.Employees
(
	EmployeeID 			smallint 	identity(1,1) 	not null,
	LastName 			varchar(50) 				null,
	FirstName 			varchar(50) 				null,
	OccupationID 		smallint 					null,
	OccupationTitle 	varchar(50) 				null
)

truncate table dbo.Employees;
-- Data for this table comes from the file "FuzzyLookUpExampleInput.txt"

select * from dbo.Occupation;
select * from dbo.Employees;




go

--************************************************************************************
--** Tables for FuzzyGrouping Example Transformation Example
--************************************************************************************
go

drop table if exists dbo.Occupation2;
create table dbo.Occupation2
(
	OccupationID 		smallint identity(1,1) not null,
	OccupationTitle 	varchar(50) not null,
	constraint PK_Occupation2 primary key clustered (OccupationID asc)
); 

truncate table dbo.Occupation2;

select * from dbo.Occupation2;
go
