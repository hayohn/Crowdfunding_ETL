## Using the database schema, create the tables in the correct order to handle the foreign keys.

CREATE TABLE category (
    category_id VARCHAR NOT NULL,
    category VARCHAR NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR NOT NULL,
    subcategory VARCHAR NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts (
    contact_id INTEGER NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
    cf_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal NUMERIC NOT NULL,
    pledged NUMERIC NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR NOT NULL,
    subcategory_id VARCHAR NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (cf_id),
    CONSTRAINT fk_campaign_contact_id FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
    CONSTRAINT fk_campaign_category_id FOREIGN KEY (category_id) REFERENCES category (category_id),
    CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

## Verify the table creation by running a SELECT statement for each table.

SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM contacts;

SELECT * FROM campaign;


## Import each CSV file into its corresponding SQL table.
COPY category FROM '/Users/owner/Library/CloudStorage/OneDrive-Personal/Crowdfunding_ETL/Resources/category.csv' DELIMITER ',' CSV HEADER;

COPY subcategory FROM '/Users/owner/Library/CloudStorage/OneDrive-Personal/Crowdfunding_ETL/Resources/subcategory.csv' DELIMITER ',' CSV HEADER;

COPY contacts FROM '/Users/owner/Library/CloudStorage/OneDrive-Personal/Crowdfunding_ETL/Resources/contacts.csv' DELIMITER ',' CSV HEADER;

COPY campaign FROM '/Users/owner/Library/CloudStorage/OneDrive-Personal/Crowdfunding_ETL/Resources/campaign.csv' DELIMITER ',' CSV HEADER;


## Verify that each table has the correct data by running a SELECT statement for each.
SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM contacts;

SELECT * FROM campaign;