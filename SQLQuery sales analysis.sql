--SELECT * FROM Sales_January_2019$;


-- Merge all 12 csv files into one csv file
SELECT *
INTO MergedSalesData
FROM (
    SELECT * FROM Sales_January_2019$
    UNION ALL
    SELECT * FROM Sales_February_2019$
    UNION ALL
     SELECT * FROM Sales_March_2019$
    UNION ALL
    SELECT * FROM Sales_April_2019$
    UNION ALL
    SELECT * FROM Sales_May_2019$
    UNION ALL
    SELECT * FROM Sales_June_2019$
    UNION ALL
    SELECT * FROM Sales_July_2019$
    UNION ALL
    SELECT * FROM Sales_August_2019$
    UNION ALL
    SELECT * FROM Sales_September_2019$
    UNION ALL
    SELECT * FROM Sales_October_2019$
    UNION ALL
    SELECT * FROM Sales_November_2019$
    UNION ALL
    SELECT * FROM Sales_December_2019$
) AS MergedTable;
  
  -- Check for Null Values
  SELECT *
 FROM MergedSalesData
 WHERE [Order ID] IS NULL
 OR Product IS NULL
 OR [Quantity Ordered] IS NULL
 OR [Price Each] IS NULL
 OR [Order Date] IS NULL
 OR [Purchase Address] IS NULL;
 
 -- Delete all Null Values
DELETE FROM MergedSalesData
WHERE [Order ID] IS NULL 
OR Product IS NULL
OR [Quantity Ordered] IS NULL
OR [Price Each] IS NULL
OR [Order Date] IS NULL
OR [Purchase Address] IS NULL;

-- Check for missing values: No missing values were identified
 SELECT *
 FROM MergedSalesData
 WHERE [Order ID] = ''
 OR Product = ''
 OR [Quantity Ordered] = ''
 OR [Price Each] = ''
 OR [Order Date] = ''
 OR [Purchase Address] = '';

 -- Convert columns into the right data type
UPDATE MergedSalesData
SET [Order ID] = CAST([Order ID] AS INT);

UPDATE MergedSalesData
SET [Quantity Ordered] = CAST([Quantity Ordered] AS INT);

UPDATE MergedSalesData
SET [Price Each] = CAST([Price Each] AS DECIMAL(10, 2));

UPDATE MergedSalesData
SET [Order Date] = CONVERT(DATETIME, [Order Date], 120);


ALTER TABLE MergedSalesData
ALTER COLUMN Product VARCHAR(MAX);

ALTER TABLE MergedSalesData
ALTER COLUMN [Purchase Address] VARCHAR(MAX);

-- Find 'Or' duplicated rows and delete them
DELETE FROM MergedSalesData
WHERE 
    [Order ID] LIKE '%Or%' OR
    Product LIKE '%Or%' OR
    [Quantity Ordered] LIKE '%Or%' OR
    [Price Each] LIKE '%Or%' OR
    [Order Date] LIKE '%Or%' OR
    [Purchase Address] LIKE '%Or%';

-- Add a Month column
ALTER TABLE MergedSalesData
ADD [Month] INT;

UPDATE MergedSalesData
SET [Month] = MONTH([Order Date]);

SELECT * FROM MergedSalesData;

-- Add a Sales column 
ALTER TABLE MergedSalesData
ADD [Sales] DECIMAL(18, 2);

UPDATE MergedSalesData
SET [Sales] = [Quantity Ordered] * [Price Each];

-- Add a City column

ALTER TABLE MergedSalesData
ADD [City] NVARCHAR(MAX);


UPDATE MergedSalesData
SET [City] = SUBSTRING([Purchase Address], CHARINDEX(',', [Purchase Address]) + 2, CHARINDEX(',', [Purchase Address], CHARINDEX(',', [Purchase Address]) + 2) - CHARINDEX(',', [Purchase Address]) - 2) +
            ' ' +
            SUBSTRING([Purchase Address], CHARINDEX(',', [Purchase Address], CHARINDEX(',', [Purchase Address]) + 2) + 2, CHARINDEX(' ', [Purchase Address], CHARINDEX(',', [Purchase Address], CHARINDEX(',', [Purchase Address]) + 2) + 2) - CHARINDEX(',', [Purchase Address], CHARINDEX(',', [Purchase Address]) + 2) - 2);


SELECT * FROM MergedSalesData;




