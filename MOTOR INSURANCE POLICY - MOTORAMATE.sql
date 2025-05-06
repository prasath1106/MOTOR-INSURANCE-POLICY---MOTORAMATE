-- TITLE : MOTOR INSURANCE POLICY - MOTORAMATE


select *  from user_tables;

select * from vehicle_make;		#1
select * from vehicle_model;		#2
select * from vehicle_body_type;	#3
select * from regions;			#4
select * from user_info:		#5
select * from user_login;		#6
select * from broker_info;		#7
select * from quote_info;		#8
select * from premium_rate_config;	#9
select * from premium_calculations;	#10
select * from lov;			#11



---VEHICLE MAKE TABLE DATA---


--Create Vehicle Make Table--


create table Vehicle_Make
(
make_id varchar2(20) primary key,
make_desc char(30) not null,
status char(20) check (Status IN('Active','Deactive'),
added_on date default sysdate,
added_by char(30)
);


create sequence make_id
increment by 1
start with 1;

--inserting vehicle make data's--

insert into vehicle_make values(1, 'Toyota','Active', sysdate ,'Admin');
insert into vehicle_make values(2, 'Honda','Active', sysdate ,'Admin');
insert into vehicle_make values(3, 'Ford','Active', sysdate ,'Admin');
insert into vehicle_make values(4, 'Chevrolet','Active', sysdate ,'Admin');
insert into vehicle_make values(5, 'Nissan','Active', sysdate ,'Admin');
insert into vehicle_make values(6, 'BMW','Active', sysdate ,'Admin');
insert into vehicle_make values(7, 'Mercedes-Benz','Active', sysdate ,'Admin');
insert into vehicle_make values(8, 'Volkswagen','Active', sysdate ,'Admin');
insert into vehicle_make values(9, 'Hyundai','Active', sysdate ,'Admin');
insert into vehicle_make values(10, 'Kia','Active', sysdate ,'Admin');
insert into vehicle_make values(11, 'Audi','Active', sysdate ,'Admin');
insert into vehicle_make values(12, 'Mazda','Active', sysdate ,'Admin');
insert into vehicle_make values(13, 'Subaru','Active', sysdate ,'Admin');
insert into vehicle_make values(14, 'Lexus','Active', sysdate ,'Admin');
insert into vehicle_make values(15, 'Jeep','Active', sysdate ,'Admin');
insert into vehicle_make values(16, 'Dodge','Active', sysdate ,'Admin');
insert into vehicle_make values(17, 'Tata','Active', sysdate ,'Admin');
insert into vehicle_make values(18, 'Tesla','Active', sysdate ,'Admin');
insert into vehicle_make values(19, 'Volvo','Active', sysdate ,'Admin');
insert into vehicle_make values(20, 'Porsche','Active', sysdate ,'Admin');
insert into vehicle_make values(21, 'Buick','Active', sysdate ,'Admin');
insert into vehicle_make values(22, 'GMC','Active', sysdate ,'Admin');
insert into vehicle_make values(23, 'Jaguar','Active', sysdate ,'Admin');
insert into vehicle_make values(24, 'Land Rover','Active', sysdate ,'Admin');
insert into vehicle_make values(25, 'Mahindra','Active', sysdate ,'Admin');
insert into vehicle_make values(26, 'Mini','Active', sysdate ,'Admin');



select * from vehicle_make;




---VEHICLE MODEL TABLE DATA---


--Create Vehicle Model Table--


CREATE TABLE Vehicle_Model (
    model_id    NUMBER(25) PRIMARY KEY,
    model_desc  VARCHAR2(30) NOT NULL,
    make_id     NUMBER(25),
    status      CHAR(8) CHECK (status IN ('Active', 'Deactive')),
    added_on    DATE DEFAULT SYSDATE,
    added_by    VARCHAR2(30),
    CONSTRAINT fk_make_id FOREIGN KEY (make_id) REFERENCES vehicle_make (make_id)
);
--inserting vehicle make data's--

insert into vehicle_model values(1, 'Corolla', 1, 'Active', sysdate , 'Admin');
insert into vehicle_model values(2, 'Camry', 1, 'Active', sysdate , 'Admin');
insert into vehicle_model values(3, 'Civic', 2, 'Active', sysdate , 'Admin');
insert into vehicle_model values(4, 'Accord', 2, 'Active', sysdate , 'Admin');
insert into vehicle_model values(5, 'F-150', 3, 'Active', sysdate , 'Admin');
insert into vehicle_model values(6, 'Mustang', 3, 'Active', sysdate , 'Admin');
insert into vehicle_model values(7, 'Silverado', 4, 'Active', sysdate , 'Admin');
insert into vehicle_model values(8, 'Malibu', 4, 'Active', sysdate , 'Admin');
insert into vehicle_model values(9, 'Altima', 5, 'Active', sysdate , 'Admin');
insert into vehicle_model values(10, 'Sentra', 5, 'Active', sysdate , 'Admin');
insert into vehicle_model values(11, '3 Series', 6, 'Active', sysdate , 'Admin');
insert into vehicle_model values(12, '5 Series', 6, 'Active', sysdate , 'Admin');
insert into vehicle_model values(13, 'C-Class', 7, 'Active', sysdate , 'Admin');
insert into vehicle_model values(14, 'E-Class', 7, 'Active', sysdate , 'Admin');
insert into vehicle_model values(15, 'Jetta', 8, 'Active', sysdate , 'Admin');
insert into vehicle_model values(16, 'Passat', 8, 'Active', sysdate , 'Admin');
insert into vehicle_model values(17, 'Elantra', 9, 'Active', sysdate , 'Admin');
insert into vehicle_model values(18, 'Tucson', 9, 'Active', sysdate , 'Admin');
insert into vehicle_model values(19, 'Soul', 10, 'Active', sysdate , 'Admin');
insert into vehicle_model values(20, 'Sportage', 10, 'Active', sysdate , 'Admin');
insert into vehicle_model values(21, 'A4', 11, 'Active', sysdate , 'Admin');
insert into vehicle_model values(22, 'Q5', 11, 'Active', sysdate , 'Admin');
insert into vehicle_model values(23, 'CX-5', 12, 'Active', sysdate , 'Admin');
insert into vehicle_model values(24, 'Mazda3', 12, 'Active', sysdate , 'Admin');
insert into vehicle_model values(25, 'Outback', 13, 'Active', sysdate , 'Admin');


select * from vehicle_model;



-----VEHICLE BODY TYPE TABLE DATA------



-- Create Vehicle Body Type Table --


create table Vehicle_Body_Type (
body_type_id number(25) primary key,
body_desc varchar2(50) not null,
status varchar2(10) check(status in('Good', 'Damaged')),
added_on date default sysdate,
added_by varchar2(20) default 'Admin'
);


----inserting body type datas----


INSERT INTO vehicle_body_type VALUES (1, 'Sedan', 'Good', sysdate , 'Admin');
INSERT INTO vehicle_body_type VALUES (2, 'Hatchback', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (3, 'SUV', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (4, 'Coupe', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (5, 'Convertible', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (6, 'Wagon', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (7, 'Van', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (8, 'Pickup Truck', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (9, 'Minivan', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (10, 'Crossover', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (11, 'Roadster', 'Good', sysdate , 'Admin');
INSERT INTO vehicle_body_type VALUES (12, 'Sports Car', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (13, 'Electric', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (14, 'Hybrid', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (15, 'Diesel', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (16, 'Petrol', 'Good', sysdate , 'Admin');
INSERT INTO vehicle_body_type VALUES (17, 'Luxury', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (18, 'Microcar', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (19, 'Off-Road', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (20, 'Military Vehicle', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (21, 'Limousine', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (22, 'Compact', 'Damaged', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (23, 'Station Wagon', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (24, 'Taxi', 'Good', sysdate, 'Admin');
INSERT INTO vehicle_body_type VALUES (25, 'Bus', 'Good', sysdate , 'Admin');
 


select * from vehicle_body_type;



---MOTOR_REGIONS TABLE DATA---


--Create Motor Regions Table--


create table motor_regions (
region char(30) check (region IN('South', 'North', 'West', 'East')),
state char(30) not null,
cities char(50) not null
);


--inserting regions data's--

insert into motor_regions VALUES ('South', 'Tamil Nadu', 'Chennai'),
insert into motor_regions VALUES ('South', 'Tamil Nadu', 'Coimbatore');
insert into motor_regions VALUES ('South', 'Tamil Nadu', 'Madurai');
insert into motor_regions VALUES ('South', 'Tamil Nadu', 'Tiruchirappalli');
insert into motor_regions VALUES ('South', 'Tamil Nadu', 'Salem');
insert into motor_regions VALUES ('South', 'Kerala', 'Thiruvananthapuram');
insert into motor_regions VALUES ('South', 'Kerala', 'Kochi');
insert into motor_regions VALUES ('South', 'Kerala', 'Kozhikode');
insert into motor_regions VALUES ('South', 'Karnataka', 'Bengaluru');
insert into motor_regions VALUES ('South', 'Karnataka', 'Mysuru');
insert into motor_regions VALUES ('South', 'Andhra Pradesh', 'Vijayawada');
insert into motor_regions VALUES ('South', 'Andhra Pradesh', 'Visakhapatnam');
insert into motor_regions VALUES ('South', 'Telangana', 'Hyderabad');
insert into motor_regions VALUES ('South', 'Telangana', 'Warangal');
insert into motor_regions VALUES ('North', 'Delhi', 'New Delhi');
insert into motor_regions VALUES ('North', 'Uttar Pradesh', 'Lucknow');
insert into motor_regions VALUES ('North', 'Uttar Pradesh', 'Varanasi');
insert into motor_regions VALUES ('North', 'Rajasthan', 'Jaipur');
insert into motor_regions VALUES ('North', 'Punjab', 'Chandigarh');
insert into motor_regions VALUES ('North', 'Haryana', 'Gurugram');
insert into motor_regions VALUES ('West', 'Maharashtra', 'Mumbai');
insert into motor_regions VALUES ('West', 'Maharashtra', 'Pune');
insert into motor_regions VALUES ('West', 'Gujarat', 'Ahmedabad');
insert into motor_regions VALUES ('East', 'West Bengal', 'Kolkata');
insert into motor_regions VALUES ('East', 'Bihar', 'Patna');


select * from regions;



---USER INFO TABLE DATA---


--Create User Info Table--


create table user_info (
user_id number(20) primary key,
user_type char(30),
first_name char(30),
last_name char(30),
gender char(20) check(gender in('Male','Female','Others')),
dob date not null,
email varchar2(50) not null,
marital_status varchar2(20) check(marital_status in('Married','Single','Widow','Divorced')),
education varchar2(50),
phone varchar2(15) not null,
mobile varchar2(15) not null,
addr1 varchar2(30),
addr2 varchar2(30),
addr3 varchar2(30),
street varchar2(25),
city varchar2(25),
state char(30),
country char(30),
national_id varchar2(12) not null,
nationality varchar2(20) not null,
user_status char(20) check(user_status in('Active','Deactive')),
added_on date default sysdate,
added_by char(30)
);


create sequence user_id_seq
start with 1
increment by 1;

alter table user_info
alter column user_id set default nextval('user_id_seq');


---inserting user info data---


insert into user_info VALUES (user_id_seq.nextval, 'Customer', 'Arun', 'Kumar', 'Male', '14-05-92' , 'arun.kumar@example.com', 'Single', 'Graduate', '+91442000001', '+919840000001', '12A', 'Block B', '2nd Cross', 'MG Street', 'Chennai', 'Tamil Nadu', 'India', 'TN123456', 'Indian', 'Active', sysdate , 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Vendor', 'Meena', 'Ravi', 'Female', '20-11-88', 'meena.ravi@example.com', 'Married', 'Post-Graduate', '+91442000002', '+919840000002', '34B', 'Block A', '3rd Main', 'Anna Nagar', 'Chennai', 'Tamil Nadu', 'India', 'TN123457', 'Indian', 'Active', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Customer', 'Prakash', 'Raj', 'Male', '18-03-90', 'prakash.raj@example.com', 'Divorced', 'Graduate', '+91442000003', '+919840000003', '56C', 'Block C', '1st Street', 'T Nagar', 'Coimbatore', 'Tamil Nadu', 'India', 'TN123458', 'Indian', 'Deactive', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Vendor', 'Lakshmi', 'Priya', 'Female', '12-07-95', 'lakshmi.priya@example.com', 'Single', 'Post-Graduate', '+91442000004', '+919840000004', '78D', 'Block D', '2nd Main', 'Perungudi', 'Madurai', 'Tamil Nadu', 'India', 'TN123459', 'Indian', 'Active', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Customer', 'Vignesh', 'Babu', 'Male', '30-09-87', 'vignesh.babu@example.com', 'Married', 'Graduate', '+91442000005', '+919840000005', '90E', 'Block E', '4th Cross', 'Velachery', 'Salem', 'Tamil Nadu', 'India', 'TN123460', 'Indian', 'Active', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Vendor', 'Divya', 'Shree', 'Female', '25-12-93', 'divya.shree@example.com', 'Divorced', 'Post-Graduate', '+91442000006', '+919840000006', '21F', 'Block F', '5th Main', 'Guindy', 'Tiruchirapalli', 'Tamil Nadu', 'India', 'TN123461', 'Indian', 'Deactive', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Customer', 'Suresh', 'Kannan', 'Male', '10-02-91', 'suresh.kannan@example.com', 'Single', 'Graduate', '+91442000007', '+919840000007', '45G', 'Block G', '6th Cross', 'Tambaram', 'Vellore', 'Tamil Nadu', 'India', 'TN123462', 'Indian', 'Active', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Vendor', 'Priyanka', 'Devi', 'Female', '18-04-94', 'priyanka.devi@example.com', 'Married', 'Post-Graduate', '+91442000008', '+919840000008', '67H', 'Block H', '7th Street', 'Adyar', 'Thoothukudi', 'Tamil Nadu', 'India', 'TN123463', 'Indian', 'Active', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Customer', 'Karthik', 'Narayan', 'Male', '14-08-89', 'karthik.narayan@example.com', 'Divorced', 'Graduate', '+91442000009', '+919840000009', '89I', 'Block I', '8th Main', 'Ashok Nagar', 'Cuddalore', 'Tamil Nadu', 'India', 'TN123464', 'Indian', 'Deactive', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Vendor', 'Aishwarya', 'Rao', 'Female', '02-01-96', 'aishwarya.rao@example.com', 'Single', 'Post-Graduate', '+91442000010', '+919840000010', '32J', 'Block J', '9th Cross', 'Kodambakkam', 'Erode', 'Tamil Nadu', 'India', 'TN123465', 'Indian', 'Active', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Customer', 'Ramesh', 'Varun', 'Male', '10-06-92', 'ramesh.varun@example.com', 'Married', 'Graduate', '+91442000011', '+919840000011', '54K', 'Block K', '10th Street', 'Nungambakkam', 'Dindigul', 'Tamil Nadu', 'India', 'TN123466', 'Indian', 'Active', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Vendor', 'Sandhya', 'Mithra', 'Female', '14-09-90', 'sandhya.mithra@example.com', 'Divorced', 'Post-Graduate', '+91442000012', '+919840000012', '76L', 'Block L', '11th Main', 'Pallavaram', 'Kanchipuram', 'Tamil Nadu', 'India', 'TN123467', 'Indian', 'Deactive', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Customer', 'Ajith', 'Kumar', 'Male', '05-03-88', 'ajith.kumar@example.com', 'Single', 'Graduate', '+91442000013', '+919840000013', '98M', 'Block M', '12th Cross', 'Sholinganallur', 'Nagapattinam', 'Tamil Nadu', 'India', 'TN123468', 'Indian', 'Active', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Vendor', 'Rithika', 'Saran', 'Female', '23-07-97', 'rithika.saran@example.com', 'Married', 'Post-Graduate', '+91442000014', '+919840000014', '11N', 'Block N', '13th Street', 'Mylapore', 'Namakkal', 'Tamil Nadu', 'India', 'TN123469', 'Indian', 'Active', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Customer', 'Vimal', 'Nathan', 'Male', '29-10-93', 'vimal.nathan@example.com', 'Divorced', 'Graduate', '+91442000015', '+919840000015', '22O', 'Block O', '14th Main', 'Thiruvanmiyur', 'Karur', 'Tamil Nadu', 'India', 'TN123470', 'Indian', 'Deactive', sysdate , 'Admin');








insert into user_info VALUES (user_id_seq.nextval, 'Vendor', 'Pooja', 'Rani', 'Female', '17-02-94', 'pooja.rani@example.com', 'Single', 'Post-Graduate', '+91442000016', '+919840000016', '33P', 'Block P', '15th Cross', 'Velachery', 'Pudukkottai', 'Tamil Nadu', 'India', 'TN123471', 'Indian', 'Active', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Customer', 'Hari', 'Shankar', 'Male', '12-12-90', 'hari.shankar@example.com', 'Married', 'Graduate', '+91442000017', '+919840000017', '44Q', 'Block Q', '16th Street', 'Tambaram', 'Sivagangai', 'Tamil Nadu', 'India', 'TN123472', 'Indian', 'Active', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Vendor', 'Keerthi', 'Vasan', 'Female', '15-05-95', 'keerthi.vasan@example.com', 'Divorced', 'Post-Graduate', '+91442000018', '+919840000018', '55R', 'Block R', '17th Main', 'Guindy', 'Thanjavur', 'Tamil Nadu', 'India', 'TN123473', 'Indian', 'Deactive', sysdate , 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Customer', 'Naveen', 'Krishna', 'Male', '14-03-91', 'naveen.krishna@example.com', 'Single', 'Graduate', '+91442000019', '+919840000019', '61S', 'Block S', '18th Cross', 'West Mambalam', 'Coimbatore', 'Tamil Nadu', 'India', 'TN123474', 'Indian', 'Active', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'vendor', 'Arun', 'Kumar', 'Male', '20-05-87', 'arun.kumar@example.com', 'Married', 'Master\'s Degree', '044-23456789', '9876543210', '12', 'Gandhi Nagar'', 'Teynampet', 'Anna Salai', 'Chennai', 'Tamil Nadu', 'India', 'TN123456789', 'Indian', 'Active', sysdate, 'Admin');

insert into user_info VALUES (user_id_seq.nextval, 'Customer', 'Lakshmi', 'Prabha', 'Female', '15-08-91', 'lakshmi.prabha@example.com', 'Single', 'Bachelor\'s Degree', '044-98765432', '8765432190', '25', 'Nehru Street', 'Peelamedu', 'Mount Road', 'Coimbatore', 'Tamil Nadu', 'India', 'TN234567890', 'Indian', 'Active', sysdate, 'System');

insert into user_info VALUES (user_id_seq.nextval, 'User', 'Murugan', 'Vel', 'Male', '12-12-85', 'murugan.vel@example.com', 'Married', 'Diploma', '044-76543210', '7654321098', '18', '2nd Main Road', 'Bharathi Nagar', 'Periyar Street', 'Madurai', 'Tamil Nadu', 'India', 'TN345678901', 'Indian', 'Active', sysdate, 'System');

insert into user_info VALUES (user_id_seq.nextval, 'Admin', 'Priya', 'Subramani', 'Female', '01-10-90', 'priya.subramani@example.com', 'Single', 'PhD', '044-65432109', '6543210987', '34 Rajaji Nagar', 'Vetri Theatre Opp', 'Thillai Nagar', 'M.G. Road', 'Tiruchirappalli', 'Tamil Nadu', 'India', 'TN456789012', 'Indian', 'Active', sysdate, 'System');



insert into user_info VALUES (user_id_seq.nextval, 'User', 'Ravi', 'Shankar', 'Male', '22-07-88', 'ravi.shankar@example.com', 'Married', 'Bachelor\'s Degree', '044-54321098', '5432109876', '22 , 'Kamarajar Nagar'', '', 'Ooty Road', 'Salem', 'Tamil Nadu', 'India', 'TN567890123', 'Indian', 'Active', sysdate, 'System');

insert into user_info VALUES (user_id_seq.nextval, 'User', 'Anitha', 'Krishnan', 'Female', '05-03-95', 'anitha.krishnan@example.com', 'Single', 'Master\'s Degree', '044-43210987', '4321098765', '15 Anna Nagar', '', '', 'Velachery Main Road', 'Chennai', 'Tamil Nadu', 'India', 'TN678901234', 'Indian', 'Active', sysdate , 'System');



select * from user_info:



---LOGIN USER TABLE DATA---



--Create Login User Table--


create table user_login (
    login_id number(25) primary key,
    password varchar2(30),
    user_id number(20) references user_info(user_id),
    lead_id number(25),
    user_type varchar2(30) not null,
    status varchar2(20) not null check (status in ('Active', 'Deactive')),
    added_on date,
    added_by varchar2(30)
);


---inserting user login data---


INSERT INTO user_login VALUES ('raja_g', 'rajag2001', 1, NULL, 'Admin', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('gowtham_subramani', 'devopsgowtham2001', 2, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('murugan_vel', 'murugan789', 3, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('priya_subramani', 'priyaPass101', 4, NULL, 'Admin', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('ravi_shankar', 'raviPass112', 5, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('anitha_krishnan', 'anithaPass132', 6, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('vishal_r', 'vishal567', 7, NULL, 'User', 'Active',TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('divya_s', 'divya987', 8, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('manoj_k', 'manoj555', 9, NULL, 'Admin', 'Active',TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('sudha_t', 'sudha888', 10, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('ashwin_m', 'ashwin234', 11, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('bhuvanesh_p', 'bhuvanesh501', 12, NULL, 'Admin', 'Active',TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('pradeep_v', 'pradeep700', 13, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('komal_r', 'komal963', 14, NULL, 'User', 'Active',TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('dinesh_k', 'dinesh147', 15, NULL, 'Admin', 'Active',TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('pranav_m', 'pranav123', 1, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('kavitha_r', 'kavitha456', 2, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('sundar_p', 'sundar789', 3, NULL, 'Admin', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('nisha_j', 'nisha101', 4, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('arvind_m', 'arvind202', 5, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('raji_s', 'raji303', 6, NULL, 'Admin', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('vinod_k', 'vinod404', 7, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('ravi_j', 'ravi505', 8, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('geetha_t', 'geetha606', 9, NULL, 'Admin', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO user_login VALUES ('arun_n', 'arun707', 10, NULL, 'User', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');



select * from user_login;



-----BROKER TABLE DATA-----


---Create Broker Table---


create table broker_info (
    broker_id number(15) primary key,
    broker_name char(40),
    broker_org_name varchar2(50),
    contact_info varchar2(80),
    broker_status char(20) check (broker_status in('Active', 'Deactive')),
    added_on date ,
    added_by char(30)
);


---inserting broker info data---


INSERT INTO broker_info VALUES (1, 'Ravi Kumar', 'Kumar & Associates', 'ravi.kumar@kumarassociates.com, +91-9876543210', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (2, 'Priya Subramanian', 'Subramanian Brokers', 'priya.subramanian@subbrokers.com, +91-8765432109', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (3, 'Vishnu Reddy', 'Reddy Securities', 'vishnu.reddy@reddysec.com, +91-7654321098', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (4, 'Lakshmi Nair', 'Nair Financials', 'lakshmi.nair@nairfin.com, +91-6543210987', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (5, 'Suresh Babu', 'Babu Trading Co.', 'suresh.babu@babutrade.com, +91-5432109876', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (6, 'Anjali Iyer', 'Iyer & Sons', 'anjali.iyer@iyersons.com, +91-4321098765', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (7, 'Murugan Selvam', 'Selvam Traders', 'murugan.selvam@selvamtraders.com, +91-3210987654', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (8, 'Geetha Rao', 'Rao Capital', 'geetha.rao@raocap.com, +91-2109876543', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (9, 'Ajay Kumar', 'Kumar Securities', 'ajay.kumar@kumarsec.com, +91-1098765432', 'Active',  TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (10, 'Sita Krishnan', 'Krishnan & Co.', 'sita.krishnan@krishnanco.com, +91-9876543230', 'Deactive', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (11, 'Nithya Pillai', 'Pillai Trading', 'nithya.pillai@pillaitrade.com, +91-8765432101', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (12, 'Karthik M', 'M Traders', 'karthik.m@ktraders.com, +91-7654321090', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (13, 'Vani R', 'R Financial Solutions', 'vani.r@rfinancesolutions.com, +91-6543210980', 'Deactive', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (14, 'Ramachandran S', 'S & Associates', 'ramachandran.s@sassociates.com, +91-5432109870', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (15, 'Naveen K', 'K Financials', 'naveen.k@kfin.com, +91-4321098760', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (16, 'Divya Karthik', 'Karthik Capital', 'divya.karthik@karthikcap.com, +91-3210987650', 'Deactive', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (17, 'Raghavan T', 'T & Associates', 'raghavan.t@tassociates.com, +91-2109876540', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (18, 'Shanthi K', 'K Traders', 'shanthi.k@ktraders.com, +91-1098765430', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (19, 'Harish R', 'R Securities', 'harish.r@rsec.com, +91-9876543200', 'Deactive', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (20, 'Uma Devi', 'Devi Financials', 'uma.devi@definancials.com, +91-8765432090', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (21, 'Pradeep S', 'S & Co.', 'pradeep.s@sco.com, +91-7654321080', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (22, 'Vijayalakshmi', 'Lakshmi Brokers', 'vijayalakshmi@lakshmibrokers.com, +91-6543210970', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (23, 'Selvi N', 'N Financials', 'selvi.n@nfinancials.com, +91-5432109860', 'Deactive', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (24, 'Rajendran P', 'P Traders', 'rajendran.p@ptraders.com, +91-4321098750', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');

INSERT INTO broker_info VALUES (25, 'Madhavi S', 'Securities & Associates', 'madhavi.s@secassociates.com, +91-3210987640', 'Active', TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'System');


select * from broker_info;



----QUOTE INFO TABLE DATA---


---Create Quote Info Table---


create table quote_info
(
quote_id number(15) primary key,
user_id number(30) references user_info(user_id),
vehicle_id number(25),
coverage_type varchar2(30),
premium_amout number(10, 2),
taxes number(10, 2),
final_premium number(10, 2),
status char(20) not null check (status in('Active', 'Deactive')),
created_on date default sysdate
);



create sequence quote_id
increment by 1
start with 1
maxvalue 25


---Inserting Quote Info Table Data's---


INSERT INTO quote_info VALUES (1, 1, 201, 'Comprehensive', 12000, ROUND(12000 * 0.18, 2), ROUND(12000 + (12000 * 0.18), 2), 'Pending', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (2, 2, 202, 'Third Party', 8000, ROUND(8000 * 0.18, 2), ROUND(8000 + (8000 * 0.18), 2), 'Approved', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (3, 3, 203, 'Own Damage', 9500, ROUND(9500 * 0.18, 2), ROUND(9500 + (9500 * 0.18), 2), 'Rejected', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (4, 4, 204, 'Comprehensive', 15000, ROUND(15000 * 0.18, 2), ROUND(15000 + (15000 * 0.18), 2), 'Pending', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (5, 5, 205, 'Third Party', 7000, ROUND(7000 * 0.18, 2), ROUND(7000 + (7000 * 0.18), 2), 'Approved', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (6, 6, 206, 'Own Damage', 10500, ROUND(10500 * 0.18, 2), ROUND(10500 + (10500 * 0.18), 2), 'Pending', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (7, 7, 207, 'Comprehensive', 17000, ROUND(17000 * 0.18, 2), ROUND(17000 + (17000 * 0.18), 2), 'Approved', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (8, 8, 208, 'Third Party', 6000, ROUND(6000 * 0.18, 2), ROUND(6000 + (6000 * 0.18), 2), 'Rejected', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (9, 9, 209, 'Own Damage', 12000, ROUND(12000 * 0.18, 2), ROUND(12000 + (12000 * 0.18), 2), 'Pending', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (10, 10, 210, 'Comprehensive', 20000, ROUND(20000 * 0.18, 2), ROUND(20000 + (20000 * 0.18), 2), 'Approved', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (11, 11, 211, 'Third Party', 9000, ROUND(9000 * 0.18, 2), ROUND(9000 + (9000 * 0.18), 2), 'Pending', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (12, 12, 212, 'Own Damage', 10000, ROUND(10000 * 0.18, 2), ROUND(10000 + (10000 * 0.18), 2), 'Approved', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (13, 13, 213, 'Comprehensive', 14000, ROUND(14000 * 0.18, 2), ROUND(14000 + (14000 * 0.18), 2), 'Rejected', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (14, 14, 214, 'Third Party', 7500, ROUND(7500 * 0.18, 2), ROUND(7500 + (7500 * 0.18), 2), 'Pending', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (15, 15, 215, 'Own Damage', 11000, ROUND(11000 * 0.18, 2), ROUND(11000 + (11000 * 0.18), 2), 'Approved', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (16, 16, 216, 'Third Party', 9000, ROUND(9000 * 0.18, 2), ROUND(9000 + (9000 * 0.18), 2), 'Pending', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (17, 17, 217, 'Comprehensive', 17000, ROUND(17000 * 0.18, 2), ROUND(17000 + (17000 * 0.18), 2), 'Approved', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (18, 18, 218, 'Own Damage', 10500, ROUND(10500 * 0.18, 2), ROUND(10500 + (10500 * 0.18), 2), 'Pending', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (19, 19, 219, 'Third Party', 8000, ROUND(8000 * 0.18, 2), ROUND(8000 + (8000 * 0.18), 2), 'Approved', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (20, 20, 220, 'Comprehensive', 12000, ROUND(12000 * 0.18, 2), ROUND(12000 + (12000 * 0.18), 2), 'Pending', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (21, 21, 221, 'Own Damage', 9500, ROUND(9500 * 0.18, 2), ROUND(9500 + (9500 * 0.18), 2), 'Rejected', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (22, 22, 222, 'Third Party', 7000, ROUND(7000 * 0.18, 2), ROUND(7000 + (7000 * 0.18), 2), 'Approved', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (23, 23, 223, 'Comprehensive', 15000, ROUND(15000 * 0.18, 2), ROUND(15000 + (15000 * 0.18), 2), 'Pending', TO_DATE('2024-12-25', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (24, 24, 224, 'Own Damage', 10500, ROUND(10500 * 0.18, 2), ROUND(10500 + (10500 * 0.18), 2), 'Pending', TO_DATE('2024-12-26', 'YYYY-MM-DD'));

INSERT INTO quote_info VALUES (25, 25, 225, 'Third Party', 6000, ROUND(6000 * 0.18, 2), ROUND(6000 + (6000 * 0.18), 2), 'Rejected', TO_DATE('2024-12-26', 'YYYY-MM-DD'));


select * from quote_info;



-----PREMIUM RATE CONFIGURATION TABLE DATA-----


----Create Premium Rate Configuration Table----


create table premium_rate_config (
rate_id number(20),
coverage_type varchar2(80) not null,
base_rate number(10),
tax_amount number(10) default 0.18,
effective_date date,
expiry_date date,
status char(20) check (status in('Active', 'Expired'))
);


----Inserting Premium Rate Configuraton Datas----


INSERT INTO premium_rate_config VALUES (101, 'Comprehensive', 5000, ROUND(5000 * 0.18, 2), TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (102, 'Third Party', 3000, ROUND(3000 * 0.18, 2), TO_DATE('2024-02-01', 'YYYY-MM-DD'), TO_DATE('2025-02-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (103, 'Own Damage', 4000, ROUND(4000 * 0.18, 2), TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2025-03-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (104, 'Comprehensive', 5500, ROUND(5500 * 0.18, 2), TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (105, 'Third Party', 3200, ROUND(3200 * 0.18, 2), TO_DATE('2024-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (106, 'Own Damage', 4500, ROUND(4500 * 0.18, 2), TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2025-06-01', 'YYYY-MM-DD'), 'Active');




INSERT INTO premium_rate_config VALUES (107, 'Comprehensive', 6000, ROUND(6000 * 0.18, 2), '2024-07-01', '2025-07-01', 'Active');

INSERT INTO premium_rate_config VALUES (108, 'Third Party', 2800, ROUND(2800 * 0.18, 2), '2024-08-01', '2025-08-01', 'Active');

INSERT INTO premium_rate_config VALUES (109, 'Own Damage', 4200, ROUND(4200 * 0.18, 2), '2024-09-01', '2025-09-01', 'Active');

INSERT INTO premium_rate_config VALUES (110, 'Comprehensive', 5200, ROUND(5200 * 0.18, 2), '2024-10-01', '2025-10-01', 'Active');

INSERT INTO premium_rate_config VALUES (111, 'Third Party', 3500, ROUND(3500 * 0.18, 2), '2024-11-01', '2025-11-01', 'Active');

INSERT INTO premium_rate_config VALUES (112, 'Own Damage', 4800, ROUND(4800 * 0.18, 2), '2024-12-01', '2025-12-01', 'Active');

INSERT INTO premium_rate_config VALUES (113, 'Comprehensive', 7000, ROUND(7000 * 0.18, 2), '2024-01-27', '2025-01-27', 'Active');

INSERT INTO premium_rate_config VALUES (114, 'Third Party', 3100, ROUND(3100 * 0.18, 2), '2024-02-01', '2025-02-01', 'Active');

INSERT INTO premium_rate_config VALUES (115, 'Own Damage', 5100, ROUND(5100 * 0.18, 2), '2024-03-01', '2025-03-01', 'Active');

INSERT INTO premium_rate_config VALUES (116, 'Comprehensive', 6500, ROUND(6500 * 0.18, 2), TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (117, 'Third Party', 3400, ROUND(3400 * 0.18, 2), TO_DATE('2024-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (118, 'Own Damage', 5600, ROUND(5600 * 0.18, 2), TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2025-06-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (119, 'Comprehensive', 7300, ROUND(7300 * 0.18, 2), TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2025-07-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (120, 'Third Party', 3600, ROUND(3600 * 0.18, 2), TO_DATE('2024-08-01', 'YYYY-MM-DD'), TO_DATE('2025-08-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (121, 'Own Damage', 4700, ROUND(4700 * 0.18, 2), TO_DATE('2024-09-01', 'YYYY-MM-DD'), TO_DATE('2025-09-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (122, 'Comprehensive', 5800, ROUND(5800 * 0.18, 2), TO_DATE('2024-10-01', 'YYYY-MM-DD'), TO_DATE('2025-10-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (123, 'Third Party', 3300, ROUND(3300 * 0.18, 2), TO_DATE('2024-11-01', 'YYYY-MM-DD'), TO_DATE('2025-11-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (124, 'Own Damage', 4900, ROUND(4900 * 0.18, 2), TO_DATE('2024-12-01', 'YYYY-MM-DD'), TO_DATE('2025-12-01', 'YYYY-MM-DD'), 'Active');

INSERT INTO premium_rate_config VALUES (125, 'Comprehensive', 8000, ROUND(8000 * 0.18, 2), TO_DATE('2024-12-27', 'YYYY-MM-DD'), TO_DATE('2025-12-27', 'YYYY-MM-DD'), 'Active');



select * from premium_rate_config;




-----PREMIUM CALCULATION DATA-----


-----Creating Premium Calculation Table-----


create table premium_calculations (
quote_id number(15),
base_premium number(10) not null,
add_on_cost number(6),
tax_rate number(7) default 0.18,
tax_amount number(10),
total_premium number(10),
premium_status char(20) check (premium_status in('Approved', 'Rejected', 'Pending')),
added_on date ,
added_by char(30) default 'Admin'
);

----- Inserting Premium Calculation Data -----


INSERT INTO premium_calculations VALUES (1, 5000, 1000, 0.18, ROUND((5000 + 1000) * 0.18, 2), ROUND(5000 + 1000 + ((5000 + 1000) * 0.18), 2), 'Pending', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)     VALUES (2, 7000, 1200, 0.18, ROUND((7000 + 1200) * 0.18, 2), ROUND(7000 + 1200 + ((7000 + 1200) * 0.18), 2), 'Approved', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)     VALUES (3, 6000, 800, 0.18, ROUND((6000 + 800) * 0.18, 2), ROUND(6000 + 800 + ((6000 + 800) * 0.18), 2), 'Rejected', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)     VALUES (4, 8000, 1500, 0.18, ROUND((8000 + 1500) * 0.18, 2), ROUND(8000 + 1500 + ((8000 + 1500) * 0.18), 2), 'Pending', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)     VALUES (5, 4000, 700, 0.18, ROUND((4000 + 700) * 0.18, 2), ROUND(4000 + 700 + ((4000 + 700) * 0.18), 2), 'Approved', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (6, 9000, 2000, 0.18, ROUND((9000 + 2000) * 0.18, 2), ROUND(9000 + 2000 + ((9000 + 2000) * 0.18), 2), 'Rejected', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (7, 7500, 1300, 0.18, ROUND((7500 + 1300) * 0.18, 2), ROUND(7500 + 1300 + ((7500 + 1300) * 0.18), 2), 'Approved', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (8, 5200, 1100, 0.18, ROUND((5200 + 1100) * 0.18, 2), ROUND(5200 + 1100 + ((5200 + 1100) * 0.18), 2), 'Pending', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (9, 6700, 1000, 0.18, ROUND((6700 + 1000) * 0.18, 2), ROUND(6700 + 1000 + ((6700 + 1000) * 0.18), 2), 'Approved', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (10, 5500, 900, 0.18, ROUND((5500 + 900) * 0.18, 2), ROUND(5500 + 900 + ((5500 + 900) * 0.18), 2), 'Rejected', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (11, 6200, 1200, 0.18, ROUND((6200 + 1200) * 0.18, 2), ROUND(6200 + 1200 + ((6200 + 1200) * 0.18), 2), 'Pending', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (12, 4800, 850, 0.18, ROUND((4800 + 850) * 0.18, 2), ROUND(4800 + 850 + ((4800 + 850) * 0.18), 2), 'Approved', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (13, 7100, 1500, 0.18, ROUND((7100 + 1500) * 0.18, 2), ROUND(7100 + 1500 + ((7100 + 1500) * 0.18), 2), 'Rejected', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (14, 6800, 1400, 0.18, ROUND((6800 + 1400) * 0.18, 2), ROUND(6800 + 1400 + ((6800 + 1400) * 0.18), 2), 'Pending', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (15, 4700, 950, 0.18, ROUND((4700 + 950) * 0.18, 2), ROUND(4700 + 950 + ((4700 + 950) * 0.18), 2), 'Approved', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (16, 8500, 1800, 0.18, ROUND((8500 + 1800) * 0.18, 2), ROUND(8500 + 1800 + ((8500 + 1800) * 0.18), 2), 'Rejected', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (17, 5900, 1100, 0.18, ROUND((5900 + 1100) * 0.18, 2), ROUND(5900 + 1100 + ((5900 + 1100) * 0.18), 2), 'Pending', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (18, 7300, 1700, 0.18, ROUND((7300 + 1700) * 0.18, 2), ROUND(7300 + 1700 + ((7300 + 1700) * 0.18), 2), 'Approved', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (19, 6200, 1200, 0.18, ROUND((6200 + 1200) * 0.18, 2), ROUND(6200 + 1200 + ((6200 + 1200) * 0.18), 2), 'Rejected', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (20, 4800, 850, 0.18, ROUND((4800 + 850) * 0.18, 2), ROUND(4800 + 850 + ((4800 + 850) * 0.18), 2), 'Pending', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (21, 5400, 1050, 0.18, ROUND((5400 + 1050) * 0.18, 2), ROUND(5400 + 1050 + ((5400 + 1050) * 0.18), 2), 'Approved', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (22, 7600, 1600, 0.18, ROUND((7600 + 1600) * 0.18, 2), ROUND(7600 + 1600 + ((7600 + 1600) * 0.18), 2), 'Rejected', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (23, 8300, 1900, 0.18, ROUND((8300 + 1900) * 0.18, 2), ROUND(8300 + 1900 + ((8300 + 1900) * 0.18), 2), 'Pending', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (24, 6700, 1250, 0.18, ROUND((6700 + 1250) * 0.18, 2), ROUND(6700 + 1250 + ((6700 + 1250) * 0.18), 2), 'Approved', '2023-12-25', 'System');

INSERT INTO premium_calculations (quote_id, base_premium, add_on_cost, tax_rate, tax_amount, total_premium, premium_status, added_on, added_by)    VALUES (25, 4900, 900, 0.18, ROUND((4900 + 900) * 0.18, 2), ROUND(4900 + 900 + ((4900 + 900) * 0.18), 2), 'Rejected', '2023-12-25', 'System');


select * from premium_calculations;



-----LOV TABLE DATA-----

-----Create Lov Table-----

create table lov
(
lov_id number(20) primary key,
lov_type varchar2(50) not null,
lov_value varchar2(60) not null,
status char(20) not null  check (status in('Active', 'Deactive')),
added_on date default sysdate,
added_by char(25)
);

------Inserting Lov Table Data------


insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (1, 'Vehicle Color', 'Red', 'active', SYSDATE, 'admin');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (2, 'Vehicle Color', 'Blue', 'active', SYSDATE, 'editor');
insert into lov lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (3, 'Vehicle Color', 'Black', 'inactive', SYSDATE, 'manager');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (4, 'Vehicle Color', 'White', 'active', SYSDATE, 'admin');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (5, 'Vehicle Color', 'Silver', 'active', SYSDATE, 'editor');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (6, 'Fuel Type', 'Petrol', 'active', SYSDATE, 'manager');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (7, 'Fuel Type', 'Diesel', 'active', SYSDATE, 'admin');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (8, 'Fuel Type', 'Electric', 'active', SYSDATE, 'editor');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (9, 'Fuel Type', 'Hybrid', 'inactive', SYSDATE, 'manager');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (10, 'Transmission Type', 'Manual', 'active', SYSDATE, 'admin');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (11, 'Transmission Type', 'Automatic', 'active', SYSDATE, 'editor');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (12, 'Transmission Type', 'Semi-Automatic', 'inactive', SYSDATE, 'manager');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (13, 'Vehicle Segment', 'Sedan', 'active', SYSDATE, 'admin');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (14, 'Vehicle Segment', 'SUV', 'active', SYSDATE, 'editor');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (15, 'Vehicle Segment', 'Hatchback', 'active', SYSDATE, 'manager');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (16, 'Vehicle Segment', 'Coupe', 'inactive', SYSDATE, 'admin');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (17, 'Ownership Status', 'Owned', 'active', SYSDATE, 'editor');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (18, 'Ownership Status', 'Leased', 'active', SYSDATE, 'admin');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (19, 'Ownership Status', 'Rented', 'inactive', SYSDATE, 'manager');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (20, 'Insurance Type', 'Comprehensive', 'active', SYSDATE, 'editor');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (21, 'Insurance Type', 'Third Party', 'active', SYSDATE, 'admin');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (22, 'Insurance Type', 'Personal Accident', 'inactive', SYSDATE, 'manager');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (23, 'Payment Method', 'Cash', 'active', SYSDATE, 'admin');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (24, 'Payment Method', 'Loan', 'active', SYSDATE, 'editor');
insert into lov (lov_id, lov_type, lov_value, status, added_on, added_by) VALUES (25, 'Payment Method', 'EMI', 'inactive', SYSDATE, 'manager');


select * from lov;
