-- Ex. 1

SELECT 
    invoice_total,
    FORMAT(invoice_total, 2) AS it_format,
    CONVERT( invoice_total , SIGNED) AS it_convert,
    CAST(invoice_total AS SIGNED) AS it_cast
FROM
    ap.invoices;
-- Ex. 2
SELECT invoice_date, 
	CAST(invoice_date AS DATETIME) AS id_datetime_cast,
    CONCAT(EXTRACT(MONTH FROM CAST(invoice_date AS DATE)),"/", EXTRACT(YEAR FROM CAST(invoice_date AS DATE))) AS id_my_cast
    FROM
		ap.invoices;