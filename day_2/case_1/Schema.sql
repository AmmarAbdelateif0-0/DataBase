CREATE TABLE Employee (
    SSN INT PRIMARY KEY,
    Fname VARCHAR(50) NOT NULL,
    Lname VARCHAR(50) NOT NULL,
    Birth_Date DATE,
    Gender CHAR(1),
    Supervisor_SSN INT,
    DNUM INT,
    FOREIGN KEY (Supervisor_SSN) REFERENCES Employee(SSN),
    FOREIGN KEY (DNUM) REFERENCES Department(DNUM)
);

CREATE TABLE Department (
    DNUM INT PRIMARY KEY,
    DName VARCHAR(100) UNIQUE NOT NULL,
    Manager_SSN INT UNIQUE,
    Hire_Date DATE,
    FOREIGN KEY (Manager_SSN) REFERENCES Employee(SSN)
);

CREATE TABLE Department_Location (
    DNUM INT,
    Location VARCHAR(100),
    PRIMARY KEY (DNUM, Location),
    FOREIGN KEY (DNUM) REFERENCES Department(DNUM)
);

CREATE TABLE Project (
    PNumber INT PRIMARY KEY,
    Pname VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    City VARCHAR(100),
    DNUM INT,
    FOREIGN KEY (DNUM) REFERENCES Department(DNUM)
);

CREATE TABLE Works_On (
    SSN INT,
    PNumber INT,
    Working_Hours INT,
    PRIMARY KEY (SSN, PNumber),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN),
    FOREIGN KEY (PNumber) REFERENCES Project(PNumber)
);

CREATE TABLE Dependent (
    SSN INT,
    Dependent_Name VARCHAR(100),
    Gender CHAR(1),
    Birth_Date DATE,
    PRIMARY KEY (SSN, Dependent_Name),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN) ON DELETE CASCADE
);
