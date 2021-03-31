SELECT *
FROM Trans;

SELECT COUNT(TransKey)
FROM Trans;

SELECT COUNT(*) AS RowCount
FROM Trans;

-- this is a comment
/*
comment block
*/

SELECT DISTINCT CustName
FROM Trans;

SELECT CustName
FROM Trans
GROUP BY CustName;

SELECT COUNT(DISTINCT CustName) AS CustomerCount
FROM Trans;

SELECT DISTINCT CustName AS Name, Category AS Cat
FROM Trans
ORDER BY CustName DESC, Category;

SELECT MIN(TranAmount) AS MinAmt, MAX(TranAmount) AS MaxAmt
FROM Trans;

SELECT MIN(TranAmount) AS MinAmt, MAX(TranAmount) AS MaxAmt, SUM(TranAmount) AS Total, TRUNCATE(AVG(TranAmount), 2) AS Average
FROM Trans;

SELECT DISTINCT Category
FROM Trans;

SELECT MIN(TranAmount) AS MinAmt, MAX(TranAmount) AS MaxAmt, SUM(TranAmount) AS Total, TRUNCATE(AVG(TranAmount), 2) AS Average
FROM Trans
WHERE Category = 'Toy';

SELECT Category, MIN(TranAmount) AS MinAmt, MAX(TranAmount) AS MaxAmt, SUM(TranAmount) AS Total, TRUNCATE(AVG(TranAmount), 2) AS Average
FROM Trans
GROUP BY Category;

SELECT MIN(TranAmount) + MAX(TranAmount) AS MinMaxAmt, SUM(TranAmount) AS Total
FROM Trans;

SELECT MIN(TranDate) AS min_date, MAX(TranDate) AS max_date
FROM Trans;

SELECT CustName, MIN(TranDate) AS min_date, MAX(TranDate) AS max_date
FROM Trans
WHERE CustName = 'Alice';

SELECT TRUNCATE(AVG(TranAmount), 2) as Avg_Amt
FROM Trans;

SELECT TranAmount, TranAmount * 0.06 AS SalesTax, TranAmount * 1.06 AS Total
FROM Trans;

SELECT Category, TRUNCATE(AVG(TranAmount), 2) as Avg_Amt
FROM Trans
GROUP BY Category
ORDER BY AVG(TranAmount) DESC;

SELECT CustName, SUM(TranAmount) as Total_Amt
FROM Trans
GROUP BY CustName
ORDER BY Total_Amt DESC;

SELECT Category, CustState, SUM(TranAmount) as Total_Amt
FROM Trans
WHERE CustState <> 'UT'
GROUP BY Category, CustState
ORDER BY Category, SUM(TranAmount) DESC;

SELECT Category, CustState, SUM(TranAmount) as Total_Amt
FROM Trans
WHERE CustState <> 'UT'
GROUP BY Category, CustState
HAVING SUM(TranAmount) >= 5000
ORDER BY Category, SUM(TranAmount) DESC;

SELECT  
	SUM(CASE
        WHEN EXTRACT(MONTH FROM TranDate) = 3 THEN TranAmount
        ELSE 0
	END
    ) AS Mar
,  SUM(CASE
		WHEN EXTRACT(MONTH FROM TranDate) = 4 THEN TranAmount
		ELSE 0
    END
    ) AS Apr
,  SUM(CASE
        WHEN EXTRACT(MONTH FROM TranDate) = 5 THEN TranAmount
        ELSE 0
	END
    ) AS May
FROM Trans;

SELECT Category
,  SUM(CASE
        WHEN EXTRACT(MONTH FROM TranDate) = 3 THEN TranAmount
        ELSE 0
	END
    ) AS Mar
,  SUM(CASE
        WHEN EXTRACT(MONTH FROM TranDate) = 4 THEN TranAmount
        ELSE 0
	END
    ) AS Apr
,  SUM(CASE
        WHEN EXTRACT(MONTH FROM TranDate) = 5 THEN TranAmount
        ELSE 0
	END
    ) AS May
    FROM Trans
    GROUP BY Category
    ORDER BY Category;