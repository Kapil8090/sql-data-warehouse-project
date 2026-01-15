/*
============================================================================
Store procedure: load bronze layer

this store procedure loads data into the 'broze' schema from external CSV files.

===========================================================================
*/


CREATE OR ALTER PROCEDURE bronze.load_bronze as
BEGIN

    TRUNCATE TABLE bronze.crm_cust_info;
    BULK INSERT bronze.crm_cust_info
    FROM 'C:\Users\kapil\Downloads\sqldatawarehouse\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
    WITH(
        firstrow = 2,
        fieldterminator = ',',
        tablock
    );



    TRUNCATE TABLE bronze.crm_prd_info;
    BULK INSERT bronze.crm_prd_info
    FROM 'C:\Users\kapil\Downloads\sqldatawarehouse\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
    WITH(
        firstrow = 2,
        fieldterminator = ',',
        tablock
    );

    TRUNCATE TABLE bronze.crm_sales_details;
    BULK INSERT bronze.crm_sales_details
    FROM 'C:\Users\kapil\Downloads\sqldatawarehouse\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
    WITH(
        firstrow = 2,
        fieldterminator = ',',
        tablock
    );

    TRUNCATE TABLE bronze.erp_cust_az12;
    BULK INSERT bronze.erp_cust_az12
    FROM 'C:\Users\kapil\Downloads\sqldatawarehouse\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
    WITH(
        firstrow = 2,
        fieldterminator = ',',
        tablock
    );


    TRUNCATE TABLE bronze.erp_loc_a101;
    BULK INSERT bronze.erp_loc_a101
    FROM 'C:\Users\kapil\Downloads\sqldatawarehouse\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
    WITH(
        firstrow = 2,
        fieldterminator = ',',
        tablock
    );


    TRUNCATE TABLE bronze.erp_px_cat_g1v2;
    BULK INSERT bronze.erp_px_cat_g1v2
    FROM 'C:\Users\kapil\Downloads\sqldatawarehouse\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
    WITH(
        firstrow = 2,
        fieldterminator = ',',
        tablock
    );
END 
