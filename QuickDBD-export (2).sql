-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Starbucks_Locations" (
    "Brand" string   NOT NULL,
    "Store_Number" string   NOT NULL,
    "Store_Name" string   NOT NULL,
    "State_Province" string   NOT NULL,
    "Country_Code" string   NOT NULL,
    "Country" string   NOT NULL,
    CONSTRAINT "pk_Starbucks_Locations" PRIMARY KEY (
        "Store_Number"
     )
);

CREATE TABLE "Happiness" (
    "Country" string   NOT NULL,
    "Happiness_Rank" int   NOT NULL,
    "Happiness_Score" int   NOT NULL,
    "Economy_GDP_per_Capita" int   NOT NULL,
    "Family" int   NOT NULL,
    "Health_Life_Expectancy" int   NOT NULL,
    "Freedom" int   NOT NULL,
    "Trust_Government_Corruption" int   NOT NULL,
    "Generosity" int   NOT NULL,
    "Dystopia_Residual" int   NOT NULL,
    "Year" int   NOT NULL
);

CREATE TABLE "Country_code" (
    "Country" string   NOT NULL,
    CONSTRAINT "pk_Country_code" PRIMARY KEY (
        "Country"
     )
);

ALTER TABLE "Starbucks_Locations" ADD CONSTRAINT "fk_Starbucks_Locations_Country" FOREIGN KEY("Country")
REFERENCES "Country_code" ("Country");

ALTER TABLE "Happiness" ADD CONSTRAINT "fk_Happiness_Country" FOREIGN KEY("Country")
REFERENCES "Country_code" ("Country");

