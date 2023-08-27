-- drop the tables if it exists
drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;

-- create contacts table with datatypes and set keys
create table contacts (
	contact_id int NOT NULL primary key,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	email varchar NOT NULL
);

-- create category table with datatypes and set keys
create table category (
	category_id varchar NOT NULL primary key,
	category varchar NOT NULL
);

-- create subcategory table with datatypes and set keys
create table subcategory (
	subcategory_id varchar NOT NULL primary key,
	subcategory varchar NOT NULL
);

-- create campaign table with datatypes and set keys
create table campaign(
	cf_id int NOT NULL primary key,
	contact_id int NOT NULL,
	company_name varchar NOT NULL,
	description varchar NOT NULL,
	goal int NOT NULL,
	pledged	int NOT NULL,
	outcome	varchar NOT NULL,
	backers_count int NOT NULL,
	country	varchar NOT NULL,
	currency varchar NOT NULL,
	launched_date date NOT NULL,
	end_date date NOT NULL,
	category_id	varchar NOT NULL,
	subcategory_id varchar NOT NULL,
	foreign key(contact_id) references contacts(contact_id),
	foreign key(category_id) references category(category_id),
	foreign key(subcategory_id) references subcategory(subcategory_id)
);

select * from contacts;
select * from category;
select * from subcategory;
select * from campaign;