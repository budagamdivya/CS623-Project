# CS623-Project
stock transactions using postgre sql

# CS623 Project

This project demonstrates the use of Python, Jupyter Notebook, and PostgreSQL to perform various transactions on the Product, Depot, and Stock tables.

## Requirements

- Python 3.7 or higher
- Jupyter Notebook
- PostgreSQL
- psycopg2 Python library

## Setting up the environment

1. Install [Anaconda](https://www.anaconda.com/products/distribution) or [Miniconda](https://docs.conda.io/en/latest/miniconda.html) to manage Python and Jupyter Notebook.

2. Install [PostgreSQL](https://www.postgresql.org/download/) and set up a user with the appropriate privileges.

3. Launch Jupyter Notebook from Anaconda:


## Setting up the PostgreSQL database

1. Start PostgreSQL and log in with the user you created during the installation.

2. Create a new database named `my_database`:


## Running the Jupyter Notebook

1. Open the Jupyter Notebook file (`projectdb_cs623.ipynb`) in the Jupyter Notebook interface.

Note: Update the path in ipynb file specific to create_tables.sql file exactly.

2. Update the `psycopg2.connect()` function in the notebook with your PostgreSQL connection details, such as the username, password, and the name of the database you created earlier.

3. Run the cells in the notebook to execute the transactions and observe the results.

## Expected results as per Sample Data

'''
Requirement already satisfied: psycopg2 in c:\users\akshara\anaconda3\lib\site-packages (2.9.6)
Connected to the database
Tables created

Data in Product table:
productid, productname, price
p1, tape, 2.50
p2, tv, 250.00
p3, vcr, 80.00



Data in Depot table:
deptid, addr, volume
d1, New York, 9000
d2, Syracuse, 6000
d4, New York, 2000



Data in Stock table:
productid, deptid, quantity
p1, d1, 1000
p1, d2, -100
p1, d4, 1200
p3, d1, 3000
p3, d4, 2000
p2, d4, 1500
p2, d1, -400
p2, d2, 2000


Transaction 1: Successfully deleted product p1 from Product and Stock

Data in Product table:
productid, productname, price
p2, tv, 250.00
p3, vcr, 80.00



Data in Depot table:
deptid, addr, volume
d1, New York, 9000
d2, Syracuse, 6000
d4, New York, 2000



Data in Stock table:
productid, deptid, quantity
p3, d1, 3000
p3, d4, 2000
p2, d4, 1500
p2, d1, -400
p2, d2, 2000


Transaction 2: Successfully deleted depot d1 from Depot and Stock

Data in Product table:
productid, productname, price
p2, tv, 250.00
p3, vcr, 80.00



Data in Depot table:
deptid, addr, volume
d2, Syracuse, 6000
d4, New York, 2000



Data in Stock table:
productid, deptid, quantity
p3, d4, 2000
p2, d4, 1500
p2, d2, 2000


Transaction 3: Successfully changed product p1 name to pp1 in Product

Data in Product table:
productid, productname, price
p2, tv, 250.00
p3, vcr, 80.00



Data in Depot table:
deptid, addr, volume
d2, Syracuse, 6000
d4, New York, 2000



Data in Stock table:
productid, deptid, quantity
p3, d4, 2000
p2, d4, 1500
p2, d2, 2000


Transaction 4: Successfully changed depot d1 name to dd1 in Depot

Data in Product table:
productid, productname, price
p2, tv, 250.00
p3, vcr, 80.00



Data in Depot table:
deptid, addr, volume
d2, Syracuse, 6000
d4, New York, 2000



Data in Stock table:
productid, deptid, quantity
p3, d4, 2000
p2, d4, 1500
p2, d2, 2000


Transaction 5: Successfully added product (p100, cd, 5) in Product and (p100, d2, 50) in Stock

Data in Product table:
productid, productname, price
p2, tv, 250.00
p3, vcr, 80.00
p100, cd, 5.00



Data in Depot table:
deptid, addr, volume
d2, Syracuse, 6000
d4, New York, 2000



Data in Stock table:
productid, deptid, quantity
p3, d4, 2000
p2, d4, 1500
p2, d2, 2000
p100, d2, 50


Error during Transaction 6: insert or update on table "stock" violates foreign key constraint "stock_productid_fkey"
DETAIL:  Key (productid)=(p1) is not present in table "product".

Cursor closed
Connection closed

'''
