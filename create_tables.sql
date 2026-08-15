CREATE DATABASE BiobankDB;
USE BiobankDB;

CREATE TABLE Donors (
    DonorID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    BirthDate DATE NOT NULL,
    ConsentGiven BOOLEAN NOT NULL
);

CREATE TABLE SampleTypes (
    TypeID INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(50) NOT NULL,
    Description TEXT
);

CREATE TABLE StorageLocations (
    LocationID INT AUTO_INCREMENT PRIMARY KEY,
    FreezerName VARCHAR(50) NOT NULL,
    ShelfNumber INT NOT NULL,
    BoxNumber INT NOT NULL
);

CREATE TABLE Researchers (
    ResearcherID INT AUTO_INCREMENT PRIMARY KEY,
    ResearcherName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Department VARCHAR(50) NOT NULL
);

CREATE TABLE Samples (
    SampleID INT AUTO_INCREMENT PRIMARY KEY,
    DonorID INT,
    TypeID INT,
    LocationID INT,
    CollectionDate DATE NOT NULL,
    VolumeML DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (DonorID) REFERENCES Donors(DonorID),
    FOREIGN KEY (TypeID) REFERENCES SampleTypes(TypeID),
    FOREIGN KEY (LocationID) REFERENCES StorageLocations(LocationID)
);

CREATE TABLE TestRequests (
    RequestID INT AUTO_INCREMENT PRIMARY KEY,
    SampleID INT,
    ResearcherID INT,
    TestName VARCHAR(100) NOT NULL,
    RequestDate DATE NOT NULL,
    Status VARCHAR(30) DEFAULT 'Pending',
    FOREIGN KEY (SampleID) REFERENCES Samples(SampleID),
    FOREIGN KEY (ResearcherID) REFERENCES Researchers(ResearcherID)
);

CREATE TABLE Instruments (
    InstrumentID INT AUTO_INCREMENT PRIMARY KEY,
    InstrumentName VARCHAR(100) NOT NULL,
    ModelNumber VARCHAR(50) NOT NULL,
    CalibrationDate DATE NOT NULL
);

CREATE TABLE TestResults (
    ResultID INT AUTO_INCREMENT PRIMARY KEY,
    RequestID INT,
    InstrumentID INT,
    ResultData TEXT NOT NULL,
    CompletionDate DATE NOT NULL,
    FOREIGN KEY (RequestID) REFERENCES TestRequests(RequestID),
    FOREIGN KEY (InstrumentID) REFERENCES Instruments(InstrumentID)
);