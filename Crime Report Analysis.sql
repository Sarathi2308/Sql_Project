create database crime_report;
use crime_report; 


create table crime(
crime_id int primary key auto_increment,
crime_type varchar(100) not null,
description varchar(100),
crime_date date,
location varchar(100),
status varchar(100)
);

select * from crime;

insert into crime(crime_type,description,crime_date,location,status)
values('Theft', 'Stolen wallet from a store', '2025-03-15','Downtown Mall', 'Open'),
('Assault', 'Physical attack in a park', '2025-03-16', 'City Park', 'Under Investigation'),
('Cybercrime', 'Bank fraud via phishing', '2025-03-17','Online', 'Solved'),
('Burglary', 'House break-in', '2025-03-18', 'Maple Street', 'Open'),
('Homicide', 'Fatal shooting', '2025-03-19', '5th Avenue', 'Under Investigation'),
('Robbery', 'Bank heist at local branch', '2025-03-20','Main Street', 'Solved'),
('Vandalism', 'Graffiti on public property', '2025-03-21', 'Subway Station', 'Open'),
('Kidnapping', 'Child abducted from school', '2025-03-22', 'Sunset Blvd', 'Under Investigation'),
('Arson', 'Warehouse set on fire', '2025-03-23', 'Industrial Area', 'Solved'),
('Fraud', 'Identity theft case reported', '2025-03-24','Bank HQ', 'Under Investigation'),
('Drug Trafficking', 'Illegal drugs seized', '2025-03-25', 'Harbor Dock', 'Open'),
('Hit and Run', 'Vehicle fled accident scene', '2025-03-26','Highway 10', 'Solved'),
('Assault', 'Bar fight resulting in injury', '2025-03-27', 'Downtown Club', 'Open'),
('Burglary', 'Jewelry store robbery', '2025-03-28',  'Market Street', 'Under Investigation'),
('Cybercrime', 'Hacking into government systems', '2025-03-29', 'Cyber Tech Park', 'Solved'),
('Theft', 'Bicycle stolen from parking lot', '2025-03-30', 'Train Station', 'Open'),
('Kidnapping', 'Businessman abducted', '2025-03-31','Luxury Hotel', 'Under Investigation'),
('Arson', 'House fire suspected as arson', '2025-04-01','Elm Street', 'Solved'),
('Homicide', 'Gang-related shooting', '2025-04-02', 'Downtown Alley', 'Under Investigation'),
('Vandalism', 'Public bus damaged', '2025-04-03', 'Bus Depot', 'Open'),
('Cybercrime', 'Credit card scam', '2025-04-04', 'Online', 'Solved'),
('Drug Trafficking', 'Narcotics found in shipment', '2025-04-05', 'Cargo Terminal', 'Under Investigation'),
('Fraud', 'Ponzi scheme uncovered', '2025-04-06', 'Finance District', 'Open'),
('Burglary', 'Break-in at electronics store', '2025-04-07', 'Tech Street', 'Under Investigation'),
('Robbery', 'Gas station hold-up', '2025-04-08', 'Highway 7', 'Solved'),
('Homicide', 'Suspicious death under review', '2025-04-09', 'City Hospital', 'Under Investigation'),
('Assault', 'Domestic violence case', '2025-04-10', 'Greenview Apartments', 'Open'),
('Hit and Run', 'Cyclist hit by speeding car', '2025-04-11', 'Bridge Road', 'Solved'),
('Theft', 'Shoplifting incident', '2025-04-12', 'Supermarket', 'Open'),
('Vandalism', 'Statue defaced in park', '2025-04-13', 'Central Park', 'Under Investigation'),
('Cybercrime', 'Data breach in IT firm', '2025-04-14', 'Tech Plaza', 'Solved'),
('Burglary', 'Stolen art from museum', '2025-04-15', 'City Museum', 'Under Investigation'),
('Homicide', 'Stabbing at train station', '2025-04-16', 'Subway Exit', 'Open'),
('Arson', 'Factory fire suspected as arson', '2025-04-17', 'Industrial Zone', 'Solved'),
('Fraud', 'Online banking fraud', '2025-04-18', 'Digital Bank', 'Under Investigation'),
('Drug Trafficking', 'Cocaine bust in city port', '2025-04-19', 'Port Area', 'Open'),
('Theft', 'Car stolen from parking garage', '2025-04-20', 'Shopping Mall', 'Under Investigation'),
('Robbery', 'ATM looted at midnight', '2025-04-21', 'Downtown Plaza', 'Solved'),
('Kidnapping', 'Child missing from playground', '2025-04-22', 'Sunrise Park', 'Under Investigation'),
('Assault', 'Assault on bus driver', '2025-04-23', 'Bus Terminal', 'Open'),
('Burglary', 'Break-in at school office', '2025-04-24', 'Community High School', 'Under Investigation'),
('Cybercrime', 'Ransomware attack on company', '2025-04-25', 'Tech Hub', 'Solved'),
('Homicide', 'Murder case in apartment', '2025-04-26', 'Sunset Tower', 'Under Investigation'),
('Hit and Run', 'Pedestrian hit at crosswalk', '2025-04-27', 'Downtown Intersection', 'Solved'),
('Arson', 'Vehicle set on fire', '2025-04-28', 'Residential Street', 'Open');
;

create table suspect(
suspect_id int primary key auto_increment not null,
name varchar(100),
age int,
gender varchar(10),
address varchar(100),
crime_id int,
  foreign key (crime_id) references crime(crime_id)
  );
alter table suspect 
add column contact varchar(20) after address;
truncate suspect;
  select * from suspect;
  
  insert into suspect(name,age,gender,address,contact,crime_id)
  values('John Doe', 34, 'Male', '123 Maple Street', '555-1234', 1),
('Jane Smith', 29, 'Female', '456 Oak Avenue', '555-5678', 2),
('Robert Johnson', 42, 'Male', '789 Pine Lane', '555-8765', 2),
('Michael Brown', 27, 'Male', '102 Cedar Road', '555-3456', 4),
('Emily Davis', 31, 'Female', '204 Birch Street', '555-9876', 5),
('David Wilson', 38, 'Male', '305 Walnut Blvd', '555-4321', 6),
('Sarah Martinez', 22, 'Female', '506 Cherry Drive', '555-6543', 7),
('James Anderson', 45, 'Male', '607 Maple Lane', '555-7890', 8),
('Jessica Taylor', 33, 'Female', '708 Spruce Way', '555-2345', 4),
('Christopher White', 40, 'Male', '809 Elm Street', '555-6789', 8),
('Ashley Thomas', 25, 'Female', '910 Cedar Avenue', '555-1357', 11),
('Matthew Garcia', 37, 'Male', '111 Pine Road', '555-2468', 2),
('Daniel Harris', 28, 'Male', '212 Birch Court', '555-3579', 1),
('Olivia Martin', 36, 'Female', '313 Oak Drive', '555-4680', 14),
('Ethan Robinson', 31, 'Male', '414 Walnut Lane', '555-5791', 15),
('Sophia Clark', 29, 'Female', '515 Maple Court', '555-6802', 15),
('William Lewis', 41, 'Male', '616 Pine Avenue', '555-7913', 7),
('Ava Walker', 26, 'Female', '717 Cedar Blvd', '555-8024', 18),
('Liam Hall', 30, 'Male', '818 Birch Road', '555-9135', 19),
('Mia Allen', 35, 'Female', '919 Oak Street', '555-0246', 20),
('Noah Young', 39, 'Male', '1020 Walnut Drive', '555-1357', 21),
('Isabella King', 28, 'Female', '1121 Maple Lane', '555-2468', 20),
('Mason Wright', 42, 'Male', '1222 Spruce Blvd', '555-3579', 23),
('Charlotte Scott', 27, 'Female', '1323 Cedar Road', '555-4680', 24),
('Benjamin Adams', 33, 'Male', '1424 Pine Street', '555-5791', 25),
('Amelia Baker', 36, 'Female', '1525 Oak Avenue', '555-6802', 6),
('Elijah Carter', 30, 'Male', '1626 Birch Blvd', '555-7913', 27),
('Harper Rivera', 41, 'Female', '1727 Walnut Drive', '555-8024', 28),
('Lucas Campbell', 26, 'Male', '1828 Cedar Lane', '555-9135', 29),
('Evelyn Gonzalez', 35, 'Female', '1929 Maple Road', '555-0246', 30),
('Henry Nelson', 29, 'Male', '2020 Spruce Street', '555-1357', 31),
('Sofia Mitchell', 39, 'Female', '2121 Birch Avenue', '555-2468', 32),
('Jack Perez', 42, 'Male', '2222 Oak Court', '555-3579', 33),
('Ella Roberts', 27, 'Female', '2323 Walnut Blvd', '555-4680', 34),
('Alexander Turner', 31, 'Male', '2424 Cedar Road', '555-5791', 35),
('Madison Phillips', 28, 'Female', '2525 Pine Drive', '555-6802', 36),
('Sebastian Evans', 41, 'Male', '2626 Spruce Lane', '555-7913', 37),
('Scarlett Collins', 26, 'Female', '2727 Oak Avenue', '555-8024', 38),
('Leo Stewart', 30, 'Male', '2828 Birch Blvd', '555-9135', 39),
('Grace Sanchez', 35, 'Female', '2929 Walnut Road', '555-0246', 38),
('Daniel Morris', 39, 'Male', '3030 Maple Drive', '555-1357', 41),
('Chloe Rogers', 28, 'Female', '3131 Cedar Street', '555-2468', 42),
('Aiden Reed', 42, 'Male', '3232 Oak Lane', '555-3579', 42),
('Layla Cook', 27, 'Female', '3333 Birch Blvd', '555-4680', 44),
('Zoe Peterson', 31, 'Female', '3434 Spruce Court', '555-5791', 45);


 
create table victim(
victim_id int primary key auto_increment not null,
name varchar(100),
age int,
gender varchar(10),
address varchar(100),
crime_id int,
  foreign key (crime_id) references crime(crime_id)
  );
  
  alter table victim 
add column contact varchar(20) after address;

 insert into victim(name,age,gender,address,contact,crime_id)
values('Emma Johnson', 32, 'Female', '123 Oak Street', '555-1001', 1),
('Liam Smith', 40, 'Male', '456 Pine Avenue', '555-1002', 2),
('Olivia Brown', 28, 'Female', '789 Cedar Lane', '555-1003', 3),
('Noah Wilson', 35, 'Male', '101 Maple Road', '555-1004', 4),
('Ava Martinez', 29, 'Female', '202 Birch Drive', '555-1005', 5),
('William Taylor', 41, 'Male', '303 Walnut Blvd', '555-1006', 6),
('Sophia Anderson', 26, 'Female', '404 Cherry Court', '555-1007', 7),
('James Thomas', 38, 'Male', '505 Spruce Way', '555-1008', 8),
('Isabella Harris', 30, 'Female', '606 Elm Street', '555-1009', 9),
('Mason Clark', 45, 'Male', '707 Pine Avenue', '555-1010', 10),
('Mia Lewis', 34, 'Female', '808 Maple Lane', '555-1011', 11),
('Benjamin Young', 37, 'Male', '909 Oak Road', '555-1012', 12),
('Charlotte King', 25, 'Female', '1010 Birch Blvd', '555-1013', 13),
('Ethan Wright', 31, 'Male', '1111 Cedar Drive', '555-1014', 14),
('Amelia Scott', 29, 'Female', '1212 Walnut Court', '555-1015', 15),
('Alexander Adams', 39, 'Male', '1313 Cherry Road', '555-1016', 16),
('Harper Gonzalez', 33, 'Female', '1414 Spruce Street', '555-1017', 17),
('Elijah Carter', 28, 'Male', '1515 Maple Avenue', '555-1018', 18),
('Evelyn Nelson', 36, 'Female', '1616 Oak Lane', '555-1019', 19),
('Daniel Rivera', 42, 'Male', '1717 Pine Drive', '555-1020', 20),
('Scarlett Perez', 30, 'Female', '1818 Birch Court', '555-1021', 21),
('Lucas Roberts', 35, 'Male', '1919 Cedar Road', '555-1022', 22),
('Madison Hall', 27, 'Female', '2020 Walnut Blvd', '555-1023', 23),
('Jack Allen', 41, 'Male', '2121 Spruce Avenue', '555-1024', 24),
('Zoe Young', 26, 'Female', '2222 Maple Street', '555-1025', 25),
('Henry Collins', 40, 'Male', '2323 Oak Lane', '555-1026', 26),
('Lily Stewart', 29, 'Female', '2424 Birch Drive', '555-1027', 27),
('Samuel Morris', 38, 'Male', '2525 Cedar Blvd', '555-1028', 28),
('Grace Rogers', 31, 'Female', '2626 Walnut Road', '555-1029', 29),
('Owen Reed', 45, 'Male', '2727 Pine Street', '555-1030', 30),
('Chloe Cook', 34, 'Female', '2828 Spruce Avenue', '555-1031', 31),
('Sebastian Bailey', 37, 'Male', '2929 Maple Drive', '555-1032', 32),
('Layla Sanchez', 25, 'Female', '3030 Oak Boulevard', '555-1033', 33),
('Julian Foster', 31, 'Male', '3131 Birch Court', '555-1034', 34),
('Nora Jenkins', 29, 'Female', '3232 Cedar Road', '555-1035', 35),
('Levi Powell', 39, 'Male', '3333 Walnut Street', '555-1036', 36),
('Ellie Brooks', 33, 'Female', '3434 Pine Avenue', '555-1037', 37),
('David Russell', 28, 'Male', '3535 Spruce Blvd', '555-1038', 38),
('Hannah Griffin', 36, 'Female', '3636 Maple Lane', '555-1039', 39),
('Leo Patterson', 42, 'Male', '3737 Oak Drive', '555-1040', 40),
('Aurora Torres', 30, 'Female', '3838 Birch Road', '555-1041', 41),
('Dylan Long', 35, 'Male', '3939 Cedar Avenue', '555-1042', 42),
('Violet Bennett', 27, 'Female', '4040 Walnut Street', '555-1043', 43),
('Jackson Ross', 41, 'Male', '4141 Pine Blvd', '555-1044', 44),
('Mila Foster', 26, 'Female', '4242 Spruce Lane', '555-1045', 45);

 
 select * from victim;
 
 create table police_station(
station_id int primary key auto_increment not null,
station_name varchar(100),
location varchar(100),
contact varchar(100)
  );

 insert into police_station(station_name,location,contact)
values('Central Police Station', '123 Main Street, City A', '555-2001'),
('North Division', '456 North Avenue, City A', '555-2002'),
('East Precinct', '789 East Road, City A', '555-2003'),
('West End Station', '101 West Boulevard, City A', '555-2004'),
('South Zone Station', '202 South Street, City A', '555-2005'),
('Downtown HQ', '303 Central Plaza, City B', '555-2006'),
('Uptown Station', '404 Uptown Drive, City B', '555-2007'),
('Riverside Precinct', '505 River Lane, City B', '555-2008'),
('Hilltop Police Station', '606 Hilltop Way, City B', '555-2009'),
('Greenfield Station', '707 Greenfield Road, City B', '555-2010'),
('Sunset Division', '808 Sunset Avenue, City C', '555-2011'),
('Lakeview Police Station', '909 Lakeview Drive, City C', '555-2012'),
('Harbor Precinct', '1010 Harbor Road, City C', '555-2013'),
('Mountain Division', '1111 Mountain Street, City C', '555-2014'),
('Forest Station', '1212 Forest Lane, City C', '555-2015'),
('Broadway HQ', '1313 Broadway Avenue, City D', '555-2016'),
('Bay Area Police', '1414 Bay Street, City D', '555-2017'),
('Pinewood Station', '1515 Pinewood Drive, City D', '555-2018'),
('Springfield Police', '1616 Springfield Road, City D', '555-2019'),
('Liberty Station', '1717 Liberty Blvd, City D', '555-2020'),
('Newtown Precinct', '1818 Newtown Lane, City E', '555-2021'),
('Westbrook HQ', '1919 Westbrook Avenue, City E', '555-2022'),
('Silverlake Police', '2020 Silverlake Drive, City E', '555-2023'),
('Crescent Division', '2121 Crescent Road, City E', '555-2024'),
('Old Town Station', '2222 Old Town Street, City E', '555-2025'),
('Bridgeport Police', '2323 Bridgeport Blvd, City F', '555-2026'),
('Southgate Precinct', '2424 Southgate Avenue, City F', '555-2027'),
('Golden Valley Station', '2525 Golden Valley Lane, City F', '555-2028'),
('Seaside Division', '2626 Seaside Road, City F', '555-2029'),
('Meadow Park Police', '2727 Meadow Park Drive, City F', '555-2030'),
('Riverbend HQ', '2828 Riverbend Boulevard, City G', '555-2031'),
('Oakwood Police', '2929 Oakwood Avenue, City G', '555-2032'),
('Spring Hill Station', '3030 Spring Hill Road, City G', '555-2033'),
('Lakeside Precinct', '3131 Lakeside Drive, City G', '555-2034'),
('Maplewood Division', '3232 Maplewood Lane, City G', '555-2035'),
('Ironwood Police', '3333 Ironwood Street, City H', '555-2036'),
('Rosewood HQ', '3434 Rosewood Drive, City H', '555-2037'),
('Cedar Valley Station', '3535 Cedar Valley Road, City H', '555-2038'),
('Evergreen Precinct', '3636 Evergreen Lane, City H', '555-2039'),
('Elmwood Police', '3737 Elmwood Avenue, City H', '555-2040'),
('Westgate Division', '3838 Westgate Street, City I', '555-2041'),
('Hampton Station', '3939 Hampton Boulevard, City I', '555-2042'),
('Sunrise Police', '4040 Sunrise Road, City I', '555-2043'),
('Parkview Precinct', '4141 Parkview Lane, City I', '555-2044'),
('Northgate HQ', '4242 Northgate Avenue, City I', '555-2045');

 
 select * from police_station;
 
create table officer(
officer_id int primary key auto_increment not null,
name varchar(100),
age int,
rank_position int,
station_id varchar(30),
  foreign key (station_id) references police_station(station_id),
  contact varchar(30)
  );
alter table officer
add column gender varchar(30) after age;


 insert into Officer (name, age, gender, rank_position, station_id, contact) 
values('James Miller', 45, 'Male', 'Captain', 1, '555-3001'),
('Olivia Roberts', 38, 'Female', 'Chief', 2, '555-3002'),
('Daniel Scott', 42, 'Male', 'Major', 3, '555-3003'),
('Sarah Davis', 37, 'Female', 'Inspector', 4, '555-3004'),
('William Harris', 50, 'Male', 'Commander', 5, '555-3005'),
('Emily Carter', 41, 'Female', 'Superintendent', 6, '555-3006'),
('Matthew Walker', 39, 'Male', 'Lieutenant', 7, '555-3007'),
('Henry White', 44, 'Male', 'Deputy', 8, '555-3008'),
('Noah Johnson', 36, 'Male', 'Sergeant', 9, '555-3009'),
('Ava Martinez', 34, 'Female', 'Captain', 10, '555-3010'),
('Mason Anderson', 40, 'Male', 'Chief', 11, '555-3011'),
('Ethan Taylor', 39, 'Male', 'Major', 12, '555-3012'),
('Isabella King', 35, 'Female', 'Inspector', 13, '555-3013'),
('Benjamin Clark', 47, 'Male', 'Commander', 14, '555-3014'),
('Harper Lewis', 37, 'Female', 'Superintendent', 15, '555-3015'),
('Charlotte Nelson', 33, 'Female', 'Lieutenant', 16, '555-3016'),
('Lucas Gonzalez', 42, 'Male', 'Deputy', 17, '555-3017'),
('Sophia Thomas', 29, 'Female', 'Sergeant', 18, '555-3018'),
('Elijah Hall', 46, 'Male', 'Captain', 19, '555-3019'),
('Amelia Robinson', 31, 'Female', 'Chief', 20, '555-3020'),
('Daniel Perez', 48, 'Male', 'Major', 21, '555-3021'),
('Scarlett Adams', 39, 'Female', 'Inspector', 22, '555-3022'),
('Leo Stewart', 45, 'Male', 'Commander', 23, '555-3023'),
('Madison Reed', 30, 'Female', 'Superintendent', 24, '555-3024'),
('Julian Collins', 38, 'Male', 'Lieutenant', 25, '555-3025'),
('Zoe Sanchez', 28, 'Female', 'Deputy', 26, '555-3026'),
('Jack Brooks', 50, 'Male', 'Sergeant', 27, '555-3027'),
('Hannah Russell', 36, 'Female', 'Captain', 28, '555-3028'),
('Owen Foster', 43, 'Male', 'Chief', 29, '555-3029'),
('Lily Jenkins', 32, 'Female', 'Major', 30, '555-3030'),
('David Powell', 49, 'Male', 'Inspector', 31, '555-3031'),
('Ellie Bennett', 30, 'Female', 'Commander', 32, '555-3032'),
('Aiden Griffin', 41, 'Male', 'Superintendent', 33, '555-3033'),
('Chloe Patterson', 29, 'Female', 'Lieutenant', 34, '555-3034'),
('Sebastian Torres', 44, 'Male', 'Deputy', 35, '555-3035'),
('Mila Long', 31, 'Female', 'Sergeant', 36, '555-3036'),
('Daniel Ross', 46, 'Male', 'Captain', 37, '555-3037'),
('Nora Bailey', 37, 'Female', 'Chief', 38, '555-3038'),
('Grace Cook', 40, 'Female', 'Major', 39, '555-3039'),
('Julian Peterson', 43, 'Male', 'Inspector', 40, '555-3040'),
('Chloe Morris', 34, 'Female', 'Commander', 41, '555-3041'),
('Leo Reed', 47, 'Male', 'Superintendent', 42, '555-3042'),
('Madison Phillips', 29, 'Female', 'Lieutenant', 43, '555-3043'),
('William Allen', 50, 'Male', 'Deputy', 44, '555-3044'),
('Scarlett Young', 36, 'Female', 'Sergeant', 45, '555-3045');

  
  select*from officer;  

create table case_assignment(
assignment_id int primary key auto_increment not null,
officer_id int,
  foreign key (officer_id) references officer(officer_id),
crime_id int,
  foreign key (crime_id) references crime(crime_id),
assignment_date date,
status varchar(30)
  );

insert into case_assignment (officer_id, crime_id, assignment_date, status)
values(5, 1, '2025-01-10', 'Open'),
(12, 2, '2025-01-15', 'In Progress'),
(8, 3, '2025-01-18', 'Closed'),
(25, 4, '2025-01-20', 'Open'),
(30, 5, '2025-01-25', 'In Progress'),
(14, 6, '2025-01-27', 'Open'),
(22, 7, '2025-02-01', 'Closed'),
(9, 8, '2025-02-05', 'Open'),
(3, 9, '2025-02-08', 'In Progress'),
(17, 10, '2025-02-12', 'Closed'),
(27, 11, '2025-02-15', 'Open'),
(33, 12, '2025-02-18', 'Closed'),
(6, 13, '2025-02-20', 'In Progress'),
(41, 14, '2025-02-22', 'Open'),
(19, 15, '2025-02-25', 'Closed'),
(13, 16, '2025-02-28', 'Open'),
(2, 17, '2025-03-01', 'In Progress'),
(35, 18, '2025-03-03', 'Closed'),
(40, 19, '2025-03-06', 'Open'),
(21, 20, '2025-03-08', 'Closed'),
(15, 21, '2025-03-10', 'In Progress'),
(10, 22, '2025-03-12', 'Open'),
(28, 23, '2025-03-15', 'Closed'),
(7, 24, '2025-03-18', 'Open'),
(45, 25, '2025-03-20', 'Closed'),
(36, 26, '2025-03-22', 'In Progress'),
(32, 27, '2025-03-25', 'Open'),
(23, 28, '2025-03-28', 'Closed'),
(11, 29, '2025-04-01', 'Open'),
(20, 30, '2025-04-04', 'In Progress'),
(26, 31, '2025-04-07', 'Closed'),
(38, 32, '2025-04-10', 'Open'),
(4, 33, '2025-04-13', 'Closed'),
(18, 34, '2025-04-16', 'In Progress'),
(37, 35, '2025-04-19', 'Open'),
(34, 36, '2025-04-22', 'Closed'),
(16, 37, '2025-04-25', 'In Progress'),
(44, 38, '2025-04-28', 'Open'),
(31, 39, '2025-05-01', 'Closed'),
(1, 40, '2025-05-04', 'In Progress'),
(39, 41, '2025-05-07', 'Open'),
(24, 42, '2025-05-10', 'Closed'),
(29, 43, '2025-05-13', 'Open'),
(42, 44, '2025-05-16', 'In Progress'),
(43, 45, '2025-05-19', 'Closed');

select * from case_assignment;

-- Display Total crime
delimiter //
create procedure total_crime()
begin
select crime_type, COUNT(*) AS total_cases
from Crime
group by crime_type;
end //
delimiter ;
call total_crime();

-- Show top crime spots
delimiter //
create procedure top_crime_spots()
begin
select location, COUNT(*) AS crime_count
from Crime
group by location
order by  crime_count desc
limit 10;
end //
delimiter ;
call top_crime_spots();

-- Display officer handle case
delimiter //
create procedure officer_handle_case()
begin
select officer.name, COUNT(case_assignment.assignment_id) AS total_cases
from Officer 
join Case_Assignment  on officer.officer_id = case_assignment.officer_id
group by officer.name
order by total_cases desc;
end //
delimiter ;

call officer_handle_case();

-- display case status
delimiter //
create procedure case_status(in curent_status varchar(20))
begin
select s.name,s.contact,c.crime_type,c.status from suspect as s
join crime as c
on c.crime_id=s.crime_id
where status=curent_status;
end //
delimiter ;

call case_status('open');

-- case assigned officer
delimiter //
create procedure case_assigned(in a varchar(20))
begin
select a.officer_id,o.name,a.assignment_date,a.status from Case_Assignment as a
join officer as o
ON a.officer_id = o.officer_id
where a.status=a
and assignment_date < DATE_SUB(CURDATE(), interval 30 day);

end //
delimiter ;

call case_assigned('in progress'); 

-- Display Duplicate Crimes
delimiter //
create procedure duplicate_crime()
begin
select crime_date, location, crime_type, COUNT(*) AS duplicate_count 
from Crime
group by crime_date, location, crime_type 
having COUNT(*) > 1;
end //
delimiter ;

call duplicate_crime();

-- suspect involves crime
delimiter //
create procedure suspect_involves_crime()
begin
select crime.crime_type,suspect.crime_id, COUNT(*) AS total_cases 
from Suspect
join crime
on crime.crime_id=suspect.crime_id
group by crime_id 
having total_cases > 1 
order by total_cases desc;
end //
delimiter ;

call suspect_involves_crime();

-- Insert Crime Record
delimiter //
create procedure InsertCrimeRecord(
    IN crimeType varchar(50), 
    des varchar(50),
	reportDate date,
    crime_location varchar(255), 
    caseStatus varchar(50)
)
begin
insert into Crime(crime_type,description,crime_date,location,status) 
values (crimeType,des,reportDate,crime_location, caseStatus);
end //

delimiter ;

call InsertCrimeRecord('Burglary', 'Theft', '2025-03-30','Downtown, NY', 'Open');

-- Update Case Status
delimiter //
create procedure UpdateCaseStatus(IN caseID INT, newStatus varchar(50))
begin
update Crime 
set status = newStatus 
where crime_id = caseID;
end //
delimiter ;

call UpdateCaseStatus(1, 'open');

-- Get Crimes by Date Range
delimiter //
create procedure GetCrimesByDateRange(IN startDate date, endDate date)
begin
select * from Crime where crime_date between startDate AND endDate;
end //
delimiter ;

call GetCrimesByDateRange('2025-02-01', '2025-03-31');


-- call statement queries.
call total_crime();
call top_crime_spots();
call officer_handle_case();
call case_status('open');
call case_assigned('in progress'); 
call duplicate_crime();
call suspect_involves_crime();
call InsertCrimeRecord('Burglary', 'Theft', '2025-03-30','Downtown, NY', 'Open');
call UpdateCaseStatus(1, 'open');
call GetCrimesByDateRange('2025-03-01', '2025-04-01');


