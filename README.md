## Project II: Crowdfunding_ETL

## Table of Contents

- [Project Structure](#project-structure)
- [Overview](#overview)
- [Jupyter Notebook (ETL.ipynb)](#jupyter-notebook-etlipynb)
- [SQL Scripts](#sql-scripts)
- [How to Run](#how-to-run)
- [Data Sources](#data-sources)
- [Requirements](#requirements)
- [Authors](#authors)

## Project Structure

- `ETL.ipynb`: Jupyter Notebook containing the ETL process for crowdfunding data.
- `Resources/`: Directory containing the necessary data files and CSV exports.
- `SQL/`: Directory containing SQL scripts for creating the database schema.
- `README.md`: Documentation file providing an overview of the project.

## Overview

The ETL process involves extracting crowdfunding data from an Excel file, transforming and cleaning the data, and loading it into a PostgreSQL database. The database schema includes tables for categories, subcategories, contacts, and campaigns.

## Jupyter Notebook (ETL.ipynb)

The `ETL.ipynb` notebook provides a step-by-step walkthrough of the ETL process. It covers the following tasks:

1. Loading and exploring the crowdfunding data.
2. Creating Category, Subcategory, contacts, and campaign DataFrames.
3. Creating a Campaign DataFrame.
4. Creating a Contacts DataFrame.
5. Creating the Crowdfunding Database.

## SQL Scripts

The `SQL/` directory contains SQL scripts for creating the necessary tables in the PostgreSQL database. The scripts cover the schema for categories, subcategories, contacts, and campaigns. Foreign key constraints are also defined to maintain data integrity.

## How to Run

To run the ETL process and set up the database:

1. Open and run the Jupyter Notebook `ETL.ipynb`. instructions included in each cell.
2. Execute the SQL scripts in the `SQL/` directory using a PostgreSQL database management tool (e.g., pgAdmin 4).

## Data Sources

- Crowdfunding data: Excel file located in the `Resources/` directory provided by GW and Edex

## Requirements

- Python 3.x
- Jupyter Notebook
- PostgreSQL

## Authors
H. Abu Sharar and M. Alizadeh
