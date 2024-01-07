create table Contacts (
	contact_id varchar(255) primary key not null,
	first_name varchar(255),
    last_name varchar(255),
    email varchar(255)
);


create table Campaign (
	cf_id varchar(255) primary key not null,
    contact_id varchar(255) not null,
	foreign key (contact_id) references Contacts(contact_id),
    company_name varchar(255),
    description varchar(255),
    goal numeric,
    pledged numeric,
    outcome varchar(255),
    backers_count int,
    country varchar(255),
    currency varchar(255),
    launch_date date,
    end_date date,
    category_id varchar(255) not null,
    foreign key (category_id) references Category(category_id),
    subcategory_id varchar(255) not null,
    foreign key (subcategory_id) references Subcategory(subcategory_id)
);

create table Category (
	category_id varchar(255) primary key not null,
	categories varchar(255)
);

create table Subcategory (
	subcategory_id varchar(255) primary key not null,
	subcategories varchar(255)
);


-- SELECT statements to look a created tables--
SELECT *
FROM contacts
;

SELECT *
FROM campaign
;

SELECT *
FROM category
;

SELECT *
FROM subcategory
;