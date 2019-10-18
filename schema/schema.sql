DROP TABLE IF EXISTS Country_code;
DROP TABLE IF EXISTS Starbucks_Locations;
DROP TABLE IF EXISTS Happiness;

create table Country_code(
Country VARCHAR, 
primary key (Country)
);

create table Starbucks_Locations(
Brand VARCHAR, 
Store_Number VARCHAR,
Store_Name VARCHAR,
State_Province VARCHAR,
Country_Code VARCHAR,
Country VARCHAR,
primary key (Store_Number),
foreign key(Country) references Country_code (Country)
);    



create table Happiness(
Country VARCHAR, 
Happiness_Rank real, 
Happiness_Score real,
Economy_GDP_per_Capita real, 
Family real, 
Health_Life_Expectancy real, 
Freedom real, 
Trust_Government_Corruption real, 
Generosity real, 
Dystopia_Residual real, 
Year real,    
foreign key(Country) references Country_code (Country)
);    

