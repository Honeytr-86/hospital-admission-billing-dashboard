
---------##########  Project : Hospital Admission & Billing Dashboard ###########------------------

-- Database creation
CREATE DATABASE HospitalAdmissionBillingDB 

USE HospitalAdmissionBillingDB


--- Table creation

--Pateints Table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender CHAR(1),
    DateOfBirth DATE,
    City VARCHAR(50)
);

--Departments Table

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    DepartmentHead VARCHAR(100),
    DeptType VARCHAR(50)
);

--Admissions Table

CREATE TABLE Admissions (
    AdmissionID INT PRIMARY KEY,
    PatientID INT,
    DepartmentID INT,
    AdmissionDate DATE,
    DischargeDate DATE,
    Diagnosis VARCHAR(100),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

--Billing Table

CREATE TABLE Billing (
    BillingID INT PRIMARY KEY,
    PatientID INT,
    BillingDate DATE,
    Amount DECIMAL(10,2),
    InsuranceProvider VARCHAR(100),
    PaymentMode VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);


---Insert Sample Data

--🔹 Patients
INSERT INTO Patients VALUES
(1, 'John', 'Doe', 'M', '1985-04-12', 'Mumbai'),
(2, 'Jane', 'Smith', 'F', '1992-06-22', 'Delhi'),
(3, 'Ravi', 'Kumar', 'M', '1978-09-15', 'Chennai'),
(4, 'Meera', 'Nair', 'F', '1989-12-01', 'Kochi'),
(5, 'Arun', 'Patel', 'M', '1995-03-05', 'Ahmedabad');
--(6, 'Aakriti','Ghosh', 'F', '1995-08-05', 'Rajghat');


--🔹 Departments
INSERT INTO Departments VALUES
(1, 'Cardiology', 'Dr. Sharma', 'Clinical'),
(2, 'Neurology', 'Dr. Banerjee', 'Clinical'),
(3, 'Orthopedics', 'Dr. Joshi', 'Clinical'),
(4, 'Billing & Insurance', 'Ms. Priya', 'Admin');

--🔹 Admissions
INSERT INTO Admissions VALUES
(101, 1, 1, '2024-03-01', '2024-03-05', 'Heart Checkup'),
(102, 2, 2, '2024-03-10', '2024-03-15', 'Migraine'),
(103, 3, 3, '2024-04-05', '2024-04-10', 'Fracture'),
(104, 4, 1, '2024-05-12', '2024-05-16', 'Angina'),
(105, 5, 2, '2024-06-01', '2024-06-05', 'Seizure');
--(106, 6, 1, '2024-07-02', '2024-06-05', 'Heart Checkup');

--🔹 Billing
INSERT INTO Billing VALUES
(1001, 1, '2024-03-06', 15000, 'ICICI Health', 'Card'),
(1002, 2, '2024-03-16', 18000, 'Star Health', 'Cash'),
(1003, 3, '2024-04-11', 22000, 'HDFC Ergo', 'Card'),
(1004, 4, '2024-05-17', 17000, 'ICICI Health', 'Online'),
(1005, 5, '2024-06-06', 25000, 'Star Health', 'Card');



--select * from Patients
--select * from Departments
--select * from Admissions
--select * from Billing

