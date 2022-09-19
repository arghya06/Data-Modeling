create database Megamart;

-- WORK STATION  ( BRANCH - DEPERTMENT - EMPLOYEE - SALARY )

create table Location (
 loc_id int primary key auto_increment not null,
 City char (50),
 State char (50)
 );

INSERT INTO Location VALUES   
(51, 'Gurgaon', 'Haryana'),
(52, 'New Delhi', 'Delhi'),
(53, 'Kolkata', 'WestBengal'),
(54, 'Bangalore', 'Karnataka'),
(55, 'Hyderabad', 'Telengana'),
(56, 'Chennai', 'Tamilnadu');   


create table Branch (
Brn_id int primary key auto_increment not null, 
Loc_id int,
Brn_name varchar(50),
Foreign Key (Loc_id) references Location (Loc_id) 
);

INSERT INTO Branch VALUES   
(101, 51, 'Dhundhera'),
(102, 51, 'Huda City Center'),
(103, 53, 'Esplanade'),
(104, 52, 'Sorojini Nagar');      


create table Department (
 Dep_id int primary key auto_increment not null,
 Brn_id int,
 Dep_name varchar(40) not null,
 Sub_dep varchar(40),
 FOREIGN KEY Department(Brn_id) REFERENCES Branch(Brn_id)
 );
 
INSERT INTO Department VALUES   
(501, 102, 'Store Manager', ''),
(502, 102, 'Admin', 'Inventory Collector'),
(503, 102, 'Floor Manager', 'Team Leader'),
(504, 102, 'IT', 'Technition' ),
(505, 102, 'Cashier', 'Helper'),
(506, 102, 'Grocery', ''),
(507, 102, 'Garments', ''),
(508, 102, 'Electronics', ''),
(509, 103, 'Store Manager', ''),
(510, 103, 'Admin', 'Inventory Collector'),
(511, 103, 'Floor Manager', 'Team Leader'),
(512, 103, 'IT', 'Technition' ),
(513, 103, 'Cashier', 'Helper'),
(514, 103, 'Grocery', ''),
(515, 103, 'Garments', ''),
(516, 103, 'Electronics', ''),
(517, 101, 'Store Manager', ''),
(518, 101, 'Admin', 'Inventory Collector'),
(519, 101, 'Floor Manager', 'Team Leader'),
(520, 101, 'Cashier', 'Helper'),
(521, 101, 'Grocery', ''),
(522, 101, 'Garments', ''),
(523, 104, 'Store Manager', ''),
(524, 104, 'Admin', 'Inventory Collector'),
(525, 104, 'Floor Manager', 'Team Leader'),
(526, 104, 'Cashier', 'Helper'),
(527, 104, 'Grocery', ''),
(528, 104, 'Garments', '');

INSERT INTO Department VALUES 
(517, 101, 'Store Manager', '');
DELETE FROM department WHERE Dep_id = 517 ;

create table Employee (
    Emp_id int primary key auto_increment not null,
    Dep_id int,
	Brn_id int,
    Loc_id int,
    F_name varchar(50),
    L_name varchar(50),
    Email varchar(70),
    Ph_no varchar(15),
    Street varchar(200),
    Foreign key (Loc_id) References Location(Loc_id),
    FOREIGN KEY (Dep_id) REFERENCES Department(Dep_id),
    FOREIGN KEY (Brn_id) REFERENCES Branch(Brn_id)
    );
 
 
 INSERT INTO Employee VALUES   
(001, 501, 102, 52, 'Shivam','Dube','shivam@mega.com', '+91 8976452310', 'KPHB Colony, Kukatpally'),
(002, 509, 103, 53, 'Pankaj','Chuahan','pankaj@mega.com', '+91 9876452310', 'Sukhdev colony paharganj'),
(003, 517, 101, 51, 'Balvinder','singh','balvinder@mega.com', '+91 7896452310', 'Hanuman chak dhundhera'),
(004, 523, 104, 51, 'Munna','Yadav','munna@mega.com', '+91 8976321310', 'sector 21 Sundor Bihar'),
(005, 502, 102, 54, 'Allu','Arjun','allu@mega.com', '+91 9764582310', 'Chatakol lelin road'),
(006, 510, 103, 55, 'Nirmal','Pathak','nirmal@mega.com', '+91 7776452310', 'sanijivani seth len'),
(007, 518, 101, 56, 'Sukhdev','Singh','sukhdev@mega.com', '+91 9096452310', 'Kuttupally street '),
(008, 524, 104, 52, 'Love','Pandey','love@mega.com', '+91 8975551310', 'sector 22 Ella ouram'),
(009, 503, 102, 55, 'Nagmani','Das','nagmani@mega.com', '+91 9700082310', 'Sunsan Gali no1'),
(010, 511, 103, 52, 'Kanha','Pathak','kanha@mega.com', '+91 9996452310', 'Hoskhas seth len'),
(011, 519, 101, 51, 'Depak','Sharma','depak@mega.com', '+91 9078952456', 'Cyber-City street '),
(012, 525, 104, 53, 'Arghya','Biswas','arghya@mega.com', '+91 9845551310', 'Dumdum');
Insert into Employee values
(013, 504, 102, 53, 'Sukhen','Das','sukhen@mega.com', '+91 9700934310', 'sukalayan road'),
(014, 512, 103, 53, 'Pamita','Pal','pamita@mega.com', '+91 9900156745', 'Bosundhar len'),
(015, 520, 101, 56, 'Tapi','Pagoda','tapi@mega.com', '+91 9078952456', 'tirubantichiram street '),
(016, 526, 104, 56, 'Sapti','sahu','sapti@mega.com', '+91 9896551310', 'kalakhataa road');

 create table Salary (
 Emp_id int,
 Dep_id int,
 Brn_id int,
 amount double,
 FOREIGN KEY (Emp_id) REFERENCES Employee(Emp_id),
 FOREIGN KEY (Dep_id) REFERENCES Department(Dep_id),
 FOREIGN KEY (Brn_id) REFERENCES Branch(Brn_id)
 );
 
  INSERT INTO Salary VALUES   
(001, 501, 102, 59000.00),
(002, 509, 103, 58500.00),
(003, 517, 101, 53800.00),
(004, 523, 104, 54000.00),
(005, 502, 102, 33000.00),
(006, 510, 103, 32800.00),
(007, 518, 101, 30000.00),
(008, 524, 104, 31000.00),
(009, 503, 102, 27000.00),
(010, 511, 103, 27000.00),
(011, 519, 101, 24500.00),
(012, 525, 104, 24500.00),
(013, 504, 102, 25000.00),
(014, 512, 103, 25000.00),
(015, 520, 101, 17500.00),
(016, 526, 104, 17500.00);
 
truncate table Salary; 
 -- Date & Time --
 
	create table Date (
    Dat_id int primary key auto_increment,
    Delivery_dt datetime not null,
    receive_dt datetime 
    );
    
    INSERT INTO Date VALUES   
(201,'2022-02-11 13:23:44','2022-02-12 15:23:44'),   
(202,'2022-02-12 14:23:44','2022-02-13 16:23:44'),
(203,'2022-02-13 13:53:44','2022-02-14 14:23:44'),
(204,'2022-02-14 12:23:44','2022-02-15 13:23:44');
    
    -- *** -
    create table Time (
    Tim_id int primary key auto_increment,
    Full_date datetime not null
    -- day
    -- month 
    -- year 
    );
 
 -- PRODUCT & CATEGORY  *****
 
 create table Category (
 Cat_id int primary key auto_increment not null,
 Cat_name varchar(100),
 Sub_category varchar(100)
 );
 alter table Category
 add Sub_category1 varchar(70),
 add Sub_category2 varchar(70);
 
 Insert into Category values
(1001,'Grocery','Vegetables','Frozen food','Bakery'),
(1002,'Electronics','Home appliance','Computer & accessories','Mobile & audio'),
(1003,'Garments','Mens','Womens','Kids');
 
 Create table Product (
 Prod_id int primary key auto_increment not null,
 Cat_id int,
 Brn_id int,
 Prod_type varchar(100),
 Prod_name varchar(255),
 P_unit_Price double,
 Supplier_cost double,
 -- margin
 -- list price 
 Foreign key (Cat_id) References Category (Cat_id),
 Foreign key (Brn_id) References Branch(Brn_id)
 );
 
 Insert into Product values
(1111,1001,102,'Vegetables','Sweet Potato',4.00,2.50),
(1112,1001,102,'Frozen Food','Fish Finger',40.00,25.00),
(1113,1001,102,'Bakery','Chapati',80.00,50.00),
(1114,1002,102,'Home appliance','Smart TV',24000.00,16000.00),
(1115,1002,102,'Computer & accessories','Lenovo L14 Laptop',95000.00,70000.00),
(1116,1002,102,'Mobile & Audio','Samsung Bluetooth headset',4000.00,2500.00),
(1117,1003,102,'Denim','Stone wash',2500.00,1000.00),
(1118,1003,102,'Top','Tank Top',450.00,200.00),
(1119,1003,102,'Kids clothing','Pants',400.00,250.00),
(1120,1001,101,'Vegetables','Onion',40.00,30.00),
(1121,1001,101,'Frozen Food','Crispy Corn',140.00,125.00),
(1122,1001,101,'Bakery','Whole Grain Bread',30.00,18.00),
(1123,1002,101,'Home appliance','Refrigator',38000.00,26000.00),
(1124,1002,101,'Computer & accessories','Zotac 1080',18000.00,7000.00),
(1125,1002,101,'Mobile & Audio','Vivo 1980',17000.00,8500.00),
(1126,1003,101,'Denim','Ankel length',2000.00,800.00),
(1127,1003,101,'Top','crop Top',250.00,100.00),
(1128,1003,101,'Kids clothing','shirt',300.00,200.00),
(1129,1001,103,'Vegetables','Rice',48.00,35.50),
(1130,1001,103,'Frozen Food','Chicken Nugets',450.00,250.00),
(1131,1001,103,'Bakery','Milk',30.00,18.00),
(1132,1002,103,'Home appliance','Mixer Grinder',4000.00,3000.00),
(1133,1002,103,'Computer & accessories','Dell Monitor',9500.00,6500.00),
(1134,1002,103,'Mobile & Audio','Redmi 9A',8000.00,5500.00),
(1135,1003,103,'Shorts','One Color',1250.00,800.00),
(1136,1003,103,'Tees','Sport Tees',650.00,400.00),
(1137,1003,103,'Kids clothing','Tees',100.00,50.00),
(1138,1001,104,'Vegetables','Tomato',40.00,30.00),
(1139,1001,104,'Frozen Food','Crispy Ball',340.00,250.00),
(1140,1001,104,'Bakery','Egg',60.00,28.00),
(1141,1002,104,'Home appliance','A.C',32000.00,19000.00),
(1142,1002,104,'Computer & accessories','Seaget 1tb',5000.00,2700.00),
(1143,1002,104,'Mobile & Audio','Boat Speaker',1200.00,500.00),
(1144,1003,104,'Shirt','Dual Welder',1850.00,1200.00),
(1145,1003,104,'Top','',450.00,200.00),
(1146,1003,104,'Kids clothing','NightWear',800.00,650.00);

 
 create table Supplier (
    Sup_id int primary key auto_increment not null,
    F_name varchar(50),
    L_name varchar(50),
    Email varchar(100),
    Ph_no varchar(15),
    Street varchar(255),
    Loc_id int,
    FOREIGN KEY (Loc_id) REFERENCES Location(Loc_id)
    );
    
    create table Order_to_Supplier (
    Ord_id int primary key auto_increment not null,
    Prod_id int,
    Sup_id int,
    Quantity int,
    Weight Varchar(50),
    height varchar(50),
    FOREIGN KEY (Prod_id) REFERENCES Product(Prod_id),
    FOREIGN KEY (Sup_id) REFERENCES Supplier(Sup_id)
    );
    
    create table Supplied_Product (
    SupProduct_id int primary key auto_increment not null,
    Ord_id int,
    Loc_id int,
    Dat_id int,
    SupProduct_name varchar(100),
    SupProd_UnitCost double,
    Quantity int,
    Foreign key (Ord_id) references Order_to_Supplier(Ord_id),
    Foreign Key (Loc_id) references Location(Loc_id),
    Foreign Key (Dat_id) references Date(Dat_id)
    );
    
  
    
    create table Inventory (
    Inv_id int primary key auto_increment,
    Sup_id int,
    SupProduct_id int,
    SupProd_UnitCost double,
    Recived_qty_in_stock int,
    Qty_out_from_stock int,
    Remaining_stock int,
    Stock_location varchar(50),
    Category varchar(75),
    descrip varchar(150),
    Foreign key (Sup_id) references Supplier(Sup_id),
    Foreign key (SupProduct_id) references Supplied_Product(SupProduct_id)
    );
    
    create table Inventory_Details (
    Inv_details_id int primary key auto_increment,
    Inv_id int,
    Prod_id int,
	Emp_id int,
    dat_id int,
    quantity int,
    Foreign Key (Inv_id) references Inventory(Inv_id),
    Foreign key (Prod_id) references Product(Prod_id),
    Foreign Key (Emp_id) references Employee(Emp_id),
    foreign key (Dat_id) references Date(Dat_id)
    );
    
    create table Purchase (
    Pur_id int primary key auto_increment,
    prod_id int,
    Ord_id int,
    Sup_id int,
    Dat_id int,
    Tim_id int,
    Quantity int,
    Pur_amount double,
    Foreign Key (Ord_id) references Order_to_Supplier (Ord_id),
    Foreign key (Prod_id) references Product (Prod_id),
    foreign key (Dat_id) references Date (Dat_id),
    foreign key (Sup_id) references Supplier (Sup_id),
    foreign key (Tim_id) references Time (Tim_id)
	);
    
    create table Customer (
    Cus_id int primary key auto_increment not null,
    F_name varchar(50),
    L_name varchar(50),
    Email varchar(70),
    Ph_no char(15) not null,
    Street varchar(100),
    Loc_id int,
    FOREIGN KEY (Loc_id) REFERENCES Location(Loc_id)
    );
    
    create table Billing (
    Billing_id int primary key auto_increment not null,
    Brn_id int,
    loc_id int,
    emp_id int,
    cus_id int,
    prod_id int,
    tim_id int,
    dat_id int,
    Quantity int,
    Billing_amount double,
    foreign key (Brn_id) references Branch (Brn_id),
    FOREIGN KEY (Loc_id) REFERENCES Location(Loc_id),
    foreign key (Emp_id) references Employee (Emp_id),
    FOREIGN KEY (Cus_id) REFERENCES Customer(Cus_id),
    Foreign key (Prod_id) references Product (Prod_id),
    Foreign key (Dat_id) references Date (Dat_id),
    Foreign key (Tim_id) references Time (Tim_id)
    );