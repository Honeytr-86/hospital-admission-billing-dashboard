# hospital-admission-billing-dashboard
Healthcare analytics project using Power BI

A Power BI project simulating a hospital's patient admission, department-wise analysis, and billing trends using realistic healthcare data.


# Project Objectives

Track hospital admissions and revenue in real-time

Analyze patient-wise and department-wise performance

Implement Row-Level Security (RLS) for department heads

Enable drillthrough to patient-level billing insights

# Tools & Technologies

Power BI Desktop

DAX (Data Analysis Expressions)

Power Query (M)

SQL Server (for data source simulation)

Power BI Service (for publishing and sharing)

# Data Model

Fact Table: Admissions

Dimension Tables: Patients, Departments, Billing, DateTable

# Relationships:

Patients[PatientID] → Admissions[PatientID]

Departments[DepartmentID] → Admissions[DepartmentID]

Patients[PatientID] → Billing[PatientID]

## Key Visuals & Features

Visual

Purpose

Cards

Total Revenue, Total Admissions (KPIs)

Bar Chart

Admissions by Department

Line Chart

Monthly Revenue (Date-wise trend)

Matrix

Patient-wise billing summary

Slicers

Gender, City, Department, YearMonth

Drillthrough

Patient-level detail report

Tooltip Page

Hover insights for department KPIs
