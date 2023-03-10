DROP TABLE IF EXISTS "contacts";
DROP TABLE IF EXISTS "category";
DROP TABLE IF EXISTS "subcategory";
DROP TABLE IF EXISTS "campaign";


CREATE TABLE "contacts" (
    "contact_id" CHAR(20) PRIMARY KEY  NOT NULL ,
    "first_name" varchar(20) NOT NULL,
    "last_name" varchar(20) NOT NULL,
    "email" varchar(60)  NOT NULL
);

CREATE TABLE "category" (
    "category_id" varchar(20) PRIMARY KEY  NOT NULL,
    "category" varchar(30)  UNIQUE NOT NULL
    
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(20) PRIMARY KEY  NOT NULL,
    "subcategory" varchar(30)  UNIQUE NOT NULL
);

CREATE TABLE "campaign" (
    "cf_id" varchar(40) PRIMARY KEY  NOT NULL,
    "contact_id" CHAR(8),
    "company_name" varchar(40) NOT NULL,
	"description" varchar(60) NOT NULL,
    "goal" float  NOT NULL, 
	"pledged" float  NOT NULL, 
    "outcome" varchar(20)  NOT NULL,
	"backers_count" CHAR(12),
    "country" varchar(3)  NOT NULL,
	"currency" varchar(3)  NOT NULL,
	"launched_date" date  NOT NULL,
	"end_date" date  NOT NULL,
    "category_id" varchar(20),
	"subcategory_id" varchar(20),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)    
);


SELECT * FROM "contacts";
SELECT * FROM "category";
SELECT * FROM "subcategory";
SELECT * FROM "campaign";