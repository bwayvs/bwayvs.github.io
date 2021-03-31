-- Problem 1 I had to add the order by vendor id asc to get it to match your rating descritpion.
SELECT v.vendor_id, SUM(i.invoice_total) AS invoice_total_sum
FROM invoices i
JOIN vendors v
USING (vendor_id)
GROUP BY v.vendor_id
ORDER BY v.vendor_id ASC;

-- Problem 2 I know you said to use GROUP BY i.payment_total, but this works better for me. 
SELECT v.vendor_name, SUM(i.payment_total) AS payment_total
FROM invoices i
JOIN vendors v
USING (vendor_id)
GROUP BY v.vendor_id
ORDER BY payment_total DESC;

-- Problem 3
SELECT v.vendor_name, COUNT(*) AS invoice_qty, SUM(i.invoice_total) AS invoice_total
FROM invoices i
JOIN vendors v 
USING (vendor_id)
GROUP BY v.vendor_id
ORDER BY invoice_qty DESC;

-- Problem 4
SELECT gla.account_description, COUNT(ili.account_number) AS item_qty, SUM(ili.line_item_amount) AS item_amt_sum
FROM invoice_line_items ili
JOIN general_ledger_accounts gla
USING (account_number)
GROUP BY gla.account_description
HAVING item_qty > 1
ORDER BY item_amt_sum DESC;

-- Problem 5 I believe your rating description is incorrect on the select statement. The questions asks for account description, count of items, and sum of li amounts. 
SELECT 
    gla.account_description,
    COUNT(ili.account_number) AS item_qty,
    SUM(ili.line_item_amount) AS item_amt_sum
FROM
    general_ledger_accounts gla
        JOIN
    invoice_line_items ili USING (account_number)
        JOIN
    invoices USING (invoice_id)
WHERE
    invoice_date BETWEEN '2014-04-01' AND '2014-06-30'
GROUP BY gla.account_description
HAVING item_qty > 1
ORDER BY item_amt_sum DESC;

-- Problem 6
SELECT ili.account_number AS account_number, SUM(ili.line_item_amount) AS item_sum
FROM general_ledger_accounts gla 
JOIN invoice_line_items ili
USING (account_number)
JOIN invoices i 
USING (invoice_id)
GROUP BY gla.account_number WITH ROLLUP;

-- Problem 7
SELECT v.vendor_name, COUNT(DISTINCT gla.account_number) AS account_qty
FROM vendors v 
JOIN invoices 
USING (vendor_id)
JOIN invoice_line_items
USING (invoice_id)
JOIN general_ledger_accounts gla
USING (account_number)
GROUP BY v.vendor_name
HAVING account_qty > 1
ORDER BY account_qty DESC;

