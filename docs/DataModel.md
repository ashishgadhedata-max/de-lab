# Data Model (Star Schema)

## Overview
This model follows a simple **star schema** design, separating facts (transactions) from dimensions (descriptive attributes).  
The **grain** of the fact table is **one row per sales transaction**.

---

## Dimensions

### DimCustomer
- **Grain:** one row per unique customer.  
- **Keys:** surrogate `CustomerKey` (PK).  
- **Attributes:** CustomerID (business), Name, Email, Country, Segment.

### DimProduct
- **Grain:** one row per unique product.  
- **Keys:** surrogate `ProductKey` (PK).  
- **Attributes:** ProductID (business), ProductName, Category, SubCategory, Price.

### DimDate
- **Grain:** one row per unique date.  
- **Keys:** `DateKey` (YYYYMMDD, PK).  
- **Attributes:** Date, DayOfWeek, Month, Quarter, Year.

---

## Fact

### FactSales
- **Grain:** one row per sales transaction (Order Line).  
- **Keys:** `CustomerKey`, `ProductKey`, `DateKey` (FKs).  
- **Measures (facts):** Quantity, SalesAmount, Discount, Profit.
