-- drop the tables if it exists
drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;

-- create contacts table with datatypes and set keys
create table contacts (
	contact_id int NOT NULL primary key,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	email varchar(100) NOT NULL
);

-- create category table with datatypes and set keys
create table category (
	category_id varchar(50) NOT NULL primary key,
	category varchar(50) NOT NULL
);

-- create subcategory table with datatypes and set keys
create table subcategory (
	subcategory_id varchar(50) NOT NULL primary key,
	subcategory varchar(50) NOT NULL
);

-- create campaign table with datatypes and set keys
create table campaign (
	cf_id int NOT NULL primary key,
	contact_id int NOT NULL,
	company_name varchar(255) NOT NULL,
	description varchar NOT NULL,
	goal FLOAT NOT NULL,
	pledged	FLOAT,
	outcome	varchar(50) NOT NULL,
	backers_count int,
	country	varchar(10) NOT NULL,
	currency varchar(10) NOT NULL,
	launched_date date NOT NULL,
	end_date date NOT NULL,
	category_id	varchar(50) NOT NULL,
	subcategory_id varchar(50) NOT NULL,
	foreign key(contact_id) references contacts(contact_id),
	foreign key(category_id) references category(category_id),
	foreign key(subcategory_id) references subcategory(subcategory_id)
);

SELECT * from subcategory;
SELECT * from category;
SELECT * from contacts;
SELECT * from campaign;