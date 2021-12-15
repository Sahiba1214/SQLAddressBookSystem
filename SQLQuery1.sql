/*UC1*/
create database AddressBookService;

use AddressBookService;

/*UC2*/
create table AddressBookTable(id int identity (1,1) primary key, FirstName varchar(30), LastName varchar(30), Address varchar(40), City varchar(20), State varchar(20), Zip varchar(6), Phone varchar(16), 


/*UC3*/
insert into AddressBookTable(FirstName,LastName,Address,City,State,Zip,Phone,Email) values

('Sahiba', 'fatma', 'Bangra', 'Muzaffarpur', 'Bihar', '842002', '7004830003', 'sahiba1214@gmail.com'),
('Mantasha', 'Abbas', 'Chembur', 'Mumbai', 'Maharastra', '400089', '1234444999', 'mantasha@gmail.com'),
('yasin', 'Hussain', 'Aashiyana', 'Patna', 'Bihar', '800025', '1112223333', 'yasin@gmail.com'),
('Zia', 'Rizvi', 'kurla', 'Mumbai', 'Maharastra', '400070', '6246939290', 'ziarizvi@gmail.com'),
('Tahir', 'Hussain', 'mjroad', 'lucknow', 'Up', '600023', '2344936885', 'tahir@gmail.com'),
('Hasan', 'Abbas', 'RafiAhmedRoad', 'Kolkata', 'West Bengal', '600301', '8981835290', 'hasanabbas@gmail.com');

/*UC4*/
update AddressBookTable set City='Madhopur' where FirstName='Sahiba';
update AddressBookTable set Zip='6200300' where LastName='Abbas';
select * from AddressBookTable;

/*UC5*/
delete from AddressBookTable where FirstName='Yasin';


/*UC6*/
select FirstName,LastName from AddressBookTable where City='Kolkata' or State='West Bengal';


/*UC7*/
select count(City) as CityCount, count(State) as StateCount from AddressBookTable;

/*UC8*/
select * from AddressBookTable where City='Patna' order by FirstName;



/*UC9*/
alter table AddressBookTable add NameType varchar(30);

update AddressBookTable set NameType='Family' where FirstName='Sahiba' or FirstName='Mantasha';
update AddressBookTable set NameType='Friends' where FirstName='Yasin' or FirstName='Zia';
update AddressBookTable set NameType='Profession' where FirstName='Tahir';

