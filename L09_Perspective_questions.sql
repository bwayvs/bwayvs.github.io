-- Ch. 9; Ex. 1
USE ap;

SELECT 
    invoice_total,
    ROUND(invoice_total, 1) AS invoice_tot_round1,
    ROUND(invoice_total, 0) AS invoice_tot_round2
FROM
    invoices;

-- Ch 9; Ex. 2
USE ex;
SELECT 
    start_date,
    DATE_FORMAT(start_date, '%b %d/%y') AS date_style1,
    DATE_FORMAT(start_date, '%c/%e/%y') AS date_style2,
    DATE_FORMAT(start_date, '%l:%i %p') AS date_style3,
    DATE_FORMAT(start_date, '%c/%y %l:%i %p') AS date_style4
FROM
    date_sample;

-- Ch 9; Ex. 3
USE ap;
SELECT 
    vendor_name,
    UPPER(vendor_name) AS vendor_name2,
    vendor_phone,
    SUBSTRING(vendor_phone, 11, 4) AS phone_style2,
    CONCAT_WS('.',
            SUBSTRING(vendor_phone, 2, 3),
            SUBSTRING(vendor_phone, 7, 3),
            SUBSTRING(vendor_phone, 11, 4)) AS phone_style3,
    SUBSTRING_INDEX(SUBSTRING(vendor_name,
                LOCATE(' ', vendor_name, 1),
                999),
            ' ',
            2) AS vendor_2name
FROM
    vendors;

-- Ch. 9; Ex. 4
USE ap;
SELECT 
    invoice_number,
    invoice_date,
    DATE_ADD(invoice_date, INTERVAL 30 DAY) AS 30_days,
    payment_date,
    ABS(DATEDIFF(invoice_date, payment_date)) AS date_difference,
    MONTH(invoice_date) AS date_month,
    YEAR(invoice_date) AS date_year
FROM
    invoices
WHERE
    MONTH(invoice_date) = 5;