DDL Script: Create Bronze Tables

Script Purpose
    This script creates tables in the 'bronze' schema, dropping existing tables if they already exist.
    Run the script to re-define the DDL structure of 'bronze' tables



--Souce CRM Created Tables
----------cust_info table
Create table bronze.crm_cust_info (
cst_id INT,
cst_key NVARChar(50),
cst_firstname nvarChar(50),
cst_lastname nvarChar(50),
cst_marital_status nvarchar(50),
cst_gndr nvarchar(50),
cst_create_date datetime
);

----------prd_info table
Create Table bronze.crm_prd_info(
prd_id int,
prd_key nvarchar(50),
prd_nm nvarchar(50),
prd_cost int,
prd_line nvarchar(50),
prd_start_dt datetime,
prd_end_dt datetime
);

----------sales_details
Create Table bronze.crm_sales_details(
sls_ord_num nvarchar(50),
sls_prd_key	nvarchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt	int,
sls_due_dt	int,
sls_sales int,
sls_quantity int,
sls_price int
);


--Source ERP Created Tables
----------cust_az12
Create Table bronze.erp_cust_AZ12(
CID	NVARCHAR(50),
BDATE DATE,
GEN nvarchar(50)
)

----------LOC_A101
Create Table bronze.erp_LOC_A101(
CID NVARCHAR(50),
CNTRY NVARCHAR(50)
)

----------PX_CAt_G1V2
Create Table bronze.erp_px_cat_g1v2(
ID NVARCHAR(50),
CAT NVARCHAR(50),
SUBCAT NVARCHAR(50),
MAINTENANCE NVARCHAR(50)
)
