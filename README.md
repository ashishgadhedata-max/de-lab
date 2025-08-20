# DE Lab (Medallion Playground)

Hands-on practice for building a modern **data engineering stack** with  
SQL • Python • PySpark • Medallion architecture.

---

## 📂 Repo Structure

/data/raw → Raw sample CSVs (customers, products, orders)
/data/bronze → Ingested data (cleaned)
/data/silver → Transformed data (joins, enrichments)
/data/gold → Analytics-ready tables
/src → Python / PySpark code
/sql → SQL scripts (queries, transformations)
/tests → Unit tests or data checks
/notebooks → Jupyter notebooks
/pipelines → Orchestration flows (Prefect/Airflow style later)
/docs → Documentation (data models, runbooks, sprint notes)
/docs_assets → Images, screenshots, exported query results

## 🗓️ Progress Tracker

- **Week 0 – Setup**
  - ✅ Installed Python 3.11, VS Code, Git
  - ✅ Created repo & folder structure
  - ✅ Added `.gitignore`, README
  - ✅ Setup virtual environment (venv)
  - ✅ Added pre-commit (Black + Ruff)

- **Week 1 – Foundations**
  - ✅ **Day 1 – Scrum + Repo Hygiene**
    - README.md with project description
    - Virtual environment + linting tools
    - Pre-commit hooks setup
  - ✅ **Day 2 – Data Modelling Basics**
    - Added `/docs/DataModel.md`
    - Defined **DimCustomer, DimProduct, DimDate, FactSales**
    - Documented star schema, keys, grain, and facts
  - ✅ **Day 3 – SQL Basics
    - Added `sql/01_basics.sql` with 10 practice queries
    - Saved outputs in `/docs_assets/sql_basics/`
