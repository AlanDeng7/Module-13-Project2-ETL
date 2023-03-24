-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cf_id" int(64)   NOT NULL,
    "contact_id" int(64)   NOT NULL,
    "company_name" varchar(64)   NOT NULL,
    "description" varchar(64)   NOT NULL,
    "goal" float(64)   NOT NULL,
    "pledged" float(64)   NOT NULL,
    "outcome" varchar(64)   NOT NULL,
    "backers_count" int(64)   NOT NULL,
    "country" varchar(64)   NOT NULL,
    "currency" varchar(64)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(64)   NOT NULL,
    "subcategory_id" varchar(64)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" varchar(64)   NOT NULL,
    "category" varchar(64)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int(64)   NOT NULL,
    "first_name" varchar(64)   NOT NULL,
    "last_name" varchar(64)   NOT NULL,
    "email" varchar(128)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(64)   NOT NULL,
    "subcategory" varchar(64)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

