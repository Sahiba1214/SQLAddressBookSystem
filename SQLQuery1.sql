/*UC1*/
create database AddressBookService;

use AddressBookService;

/*UC2*/
create table AddressBookTable(id int identity (1,1) primary key, FirstName varchar(30), LastName varchar(30), Address varchar(40), City varchar(20), State varchar(20), Zip varchar(6), Phone varchar(16), Email varchar(40));
exec sp_help AddressBookTable;