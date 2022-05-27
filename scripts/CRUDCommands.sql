SELECT id,
	order_date,
	region,
	rep,
	item
FROM first_table;

SELECT *
FROM first_table;

SELECT *
FROM first_table
WHERE region = 'East';

SELECT *
FROM first_table
WHERE order_date >= '2/1/2020';

INSERT INTO first_table(order_date, rep, item)
VALUES ('4/18/2020','Jones','Pencil'),
    ('04/05/2020','Kivell','Pen');

INSERT INTO first_table(order_date, region, rep, item)
SELECT order_date,
    'East',
    rep,
    item
FROM first_table
WHERE order_date = '4/18/2020'
AND rep = 'Jones';

SELECT *
FROM first_table
WHERE region IS NULL;

UPDATE first_table SET
	region = 'East'
WHERE region IS NULL;

DELETE
--SELECT * 
FROM first_table
WHERE rep = 'Jones'