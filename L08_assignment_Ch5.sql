USE ap;
-- Ch 5, Problem 1
INSERT INTO terms
(terms_id, terms_description, terms_due_days)
VALUES
(6, 'Net due 120 days', 120);

-- Ch 5, Problem 2
UPDATE terms 
SET 
    terms_description = 'Net due 125 days',
    terms_due_days = 125
WHERE
    terms_id = 6;

-- Ch 5, Problem 3

DELETE FROM terms 
WHERE
    terms_id = 6;

-- Ch 5, Problem 4

INSERT INTO invoices
VALUES
(DEFAULT, 32, 'AX-014-027', '2014-08-01', 435.58, 0.00, 0.00, 2, '2014-08-31', NULL);

SELECT 
    MAX(invoice_id)
FROM
    invoices;

SELECT 
    *
FROM
    invoices
WHERE
    invoice_id = 115;

-- Ch 5, Problem 5

INSERT INTO invoice_line_items
(invoice_id, invoice_sequence, account_number, line_item_amount, line_item_description)
VALUES
(115, 1, '160', 180.23, 'Hard drive'),
(115, 2, '527', 254.35, 'Exchange Server update');

-- Ch 5, Problem 6

UPDATE invoices 
SET 
    credit_total = invoice_total * .1,
    payment_total = invoice_total - credit_total
WHERE
    invoice_id = 115;

SELECT 
    *
FROM
    invoices
WHERE
    invoice_id = 115;

-- Ch 5, Problem 7

UPDATE vendors 
SET 
    default_account_number = 403
WHERE
    vendor_id = 44;

-- Ch 5, Problem 8

UPDATE invoices 
SET 
    terms_id = 2
WHERE
    vendor_id = (SELECT 
            vendor_id
        FROM
            vendors
        WHERE
            default_terms_id = 2);

-- Ch 5, Problem 9

DELETE FROM invoice_line_items 
WHERE
    invoice_id = 115;
DELETE FROM invoices 
WHERE
    invoice_id = 115; 
