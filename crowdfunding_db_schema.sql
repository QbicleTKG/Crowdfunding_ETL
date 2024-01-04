DROP TABLE campaign;
DROP TABLE category;
DROP TABLE contacts;
DROP TABLE subcategory;

CREATE TABLE campaign
(
  cf_id          INT     NOT NULL,
  contact_id     INT     NOT NULL,
  company_name   VARCHAR NOT NULL,
  description    VARCHAR NOT NULL,
  goal           FLOAT   NOT NULL,
  pledged        FLOAT   NOT NULL,
  outcome        VARCHAR NOT NULL,
  backers_count  FLOAT   NOT NULL,
  country        VARCHAR NOT NULL,
  currency       VARCHAR NOT NULL,
  launchdate     DATE    NOT NULL,
  end_date       DATE    NOT NULL,
  category_id    VARCHAR NOT NULL,
  subcategory_id VARCHAR NOT NULL,
  contact_id     INT     NOT NULL,
  subcategory_id VARCHAR NOT NULL,
  category_id    VARCHAR NOT NULL,
  PRIMARY KEY (cf_id)
);

CREATE TABLE category
(
  category_id VARCHAR NOT NULL,
  category    VARCHAR NOT NULL,
  PRIMARY KEY (category_id)
);

CREATE TABLE contacts
(
  contact_id INT     NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name  VARCHAR NOT NULL,
  email      VARCHAR NOT NULL,
  PRIMARY KEY (contact_id)
);

CREATE TABLE subcategory
(
  subcategory_id VARCHAR NOT NULL,
  subcategory    VARCHAR NOT NULL,
  PRIMARY KEY (subcategory_id)
);

ALTER TABLE campaign
  ADD CONSTRAINT FK_contacts_TO_campaign
    FOREIGN KEY (contact_id)
    REFERENCES contacts (contact_id);

ALTER TABLE campaign
  ADD CONSTRAINT FK_subcategory_TO_campaign
    FOREIGN KEY (subcategory_id)
    REFERENCES subcategory (subcategory_id);

ALTER TABLE campaign
  ADD CONSTRAINT FK_category_TO_campaign
    FOREIGN KEY (category_id)
    REFERENCES category (category_id);


SELECT * 
FROM campaign

SELECT * 
FROM category

SELECT * 
FROM contacts

SELECT * 
FROM subcategory