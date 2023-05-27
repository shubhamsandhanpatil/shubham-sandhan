

create table Farmer 
(
  FarmerID int primary key AUTO_INCREMENT,
  Username varchar(50)   not null,
    email varchar(50) not null,
  Password varchar(20) not null
 );


create table Expert
 (
  ExpertID int primary key AUTO_INCREMENT,
  Username varchar(50) not null,
   Email varchar(50)  not null,
  Password varchar(50) not null
);


create table Article
 (
  ArticleID int primary key AUTO_INCREMENT,
  Title varchar(50) not null,
  Content text not null,
    AuthorID INT,
  FOREIGN KEY (AuthorID) references Farmer(FarmerID) ON DELETE SET NULL
);


create table Crop
 (
  CropID int primary key AUTO_INCREMENT,
    Name varchar(50) not null,
  Techniques TEXT,
  Season varchar(50)
);

create table Livestock
 (
  LivestockID int primary key AUTO_INCREMENT,
  Type varchar(50) not null,
  Breed varchar(50),
  Age INT
);


create table Weather 
(
  WeatherID int primary key AUTO_INCREMENT,
    Location varchar(50) not null,
  Temperature DECIMAL(5, 2),
  Rainfall DECIMAL(5, 2)
);


create table Market
 (
  MarketID int primary key AUTO_INCREMENT,
     Name varchar(50) not null,
  Location varchar(100),
  Website varchar(100)
);


create table GovernmentScheme 
(
  SchemeID int primary key AUTO_INCREMENT,
  Name varchar(100) not null,
     Eligibility text,
  Benefits text
);


create table TrainingResource 
(
  ResourceID int primary key AUTO_INCREMENT,
    Title varchar(50) not null,
  Description text,
  URL varchar(150)
);


