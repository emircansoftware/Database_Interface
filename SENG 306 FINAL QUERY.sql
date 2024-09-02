USE SENG306



CREATE TABLE Main_Location(
	id int,
	locatioNN varchar(100) NOT NULL,
	employee_numbers int,
	manage_numbers int,
	main_storage_size float NOT NULL,
	main_storage_vehicles int DEFAULT 2,
	main_storage_min_size float

	CONSTRAINT PK_locatioNN Primary Key(id),
);






CREATE TABLE Product_Info(
	barkod_no int,
	namee varchar(50),
	weightt float,
	brand varchar(30),
	shelf_section varchar(50),
	main_location_id int,
	price float

	CONSTRAINT PK_ProductId Primary Key(barkod_no),
	CONSTRAINT FK_MainLocationIdProduct Foreign Key(main_location_id) REFERENCES Main_Location
);

CREATE TABLE Product_Inventory(
	expiration_date date,
	product_info_barkod int,
	production_date date,
	product_number int

	CONSTRAINT PK_expirationdate_infobarkod Primary Key(expiration_date,product_info_barkod)
	CONSTRAINT FK_inforbarkodno Foreign Key(product_info_barkod) REFERENCES Product_Info

);





CREATE TABLE Market(
	id int,
	main_location_id int,
	locatioNN varchar(100),
	employee_numbers int,
	income float,
	expense float,
	local_storage_section varchar(100),
	local_storage_vehicles int,
	local_storage_Size float,

	CONSTRAINT PK_id_main_locationid Primary Key(id,main_location_id),
	CONSTRAINT FK_MainLocationIdMarket Foreign Key(main_location_id) REFERENCES Main_Location,
	CONSTRAINT Market_income_check CHECK(income>expense)

);

CREATE TABLE SellStore_Product_Inventory (
    market_id int,
    product_inventory_date date NOT NULL,
	mainn_location_id int NOT NULL,
	expirationn_date date NOT NULL,
	barkodd_no int NOT NULL
    CONSTRAINT PK_marketid_productinventory PRIMARY KEY (market_id, product_inventory_date),
    CONSTRAINT FK_marketid FOREIGN KEY (market_id,mainn_location_id) REFERENCES Market(id,main_location_id),
    CONSTRAINT FK_productinventory_date FOREIGN KEY (product_inventory_date,barkodd_no) REFERENCES Product_Inventory(expiration_date,product_info_barkod)
);

CREATE TABLE EMPLOYEE(
	SSN int,
	phone int NOT NULL,
	email varchar(50),
	salary float,
	fname varchar(30),
	lname varchar(20),
	market_id int,
	hours_numbers_daily float,
	deneme int,

	CONSTRAINT PK_SSN2 Primary Key(SSN),
	CONSTRAINT FK_MarketLocationIdEmployee Foreign Key(market_id,deneme) REFERENCES Market,
	CONSTRAINT Salary_check CHECK(salary BETWEEN 17000 and 50000)
);


CREATE TABLE Phone(
	Ephone_number int,
	ESSN int,
	
	CONSTRAINT PK_Ephone_ESSN Primary Key(Ephone_number,ESSN),
	CONSTRAINT FK_ESSN Foreign Key(ESSN) REFERENCES Employee
);

CREATE TABLE Manager(
	SSN int,
	meeting_numbers int,

	CONSTRAINT PK_SSN3 Primary Key(SSN),
	CONSTRAINT FK_SSN2 Foreign Key(SSN) REFERENCES Employee
);

CREATE TABLE Assistant_Manager(
	SSN int,
	signed_document_numbers int,

	CONSTRAINT PK_SSN4 Primary Key(SSN),
	CONSTRAINT FK_SSN3 Foreign Key(SSN) REFERENCES Employee
);

CREATE TABLE Cashier(
	SSN int,
	sold_product_numbers int,

	CONSTRAINT PK_SSN5 Primary Key(SSN),
	CONSTRAINT FK_SSN4 Foreign Key(SSN) REFERENCES Employee
);

CREATE TABLE Rayon(
	SSN int,
	arranged_shelves_numbers int,

	CONSTRAINT PK_SSN6 Primary Key(SSN),
	CONSTRAINT FK_SSN5 Foreign Key(SSN) REFERENCES Employee
);

CREATE TABLE Baker(
	SSN int,
	baked_bread_numbers int,

	CONSTRAINT PK_SSN7 Primary Key(SSN),
	CONSTRAINT FK_SSN6 Foreign Key(SSN) REFERENCES Employee
);

CREATE TABLE Greengrocer(
	SSN int,
	sorted_vegetablesfruits_rotten_numbers int,

	CONSTRAINT PK_SSN8 Primary Key(SSN),
	CONSTRAINT FK_SSN7 Foreign Key(SSN) REFERENCES Employee
);

CREATE TABLE Delicatessen(
	SSN int,
	sold_meat_kgs float,

	CONSTRAINT PK_SSN9 Primary Key(SSN),
	CONSTRAINT FK_SSN8 Foreign Key(SSN) REFERENCES Employee
);