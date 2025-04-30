-- Question 1: Get employee details with their office information
-- Using INNER JOIN to ensure we only get employees with valid office codes
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    e.officeCode
FROM 
    employees e
INNER JOIN 
    offices o ON e.officeCode = o.officeCode;

-- Question 2: Get product details including product line information
-- Using LEFT JOIN to ensure we get all products even if they don't have a matching product line
SELECT 
    p.productName, 
    p.productVendor, 
    p.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl ON p.productLine = pl.productLine;

-- Question 3: Get order details with customer information for first 10 orders
-- Using RIGHT JOIN to prioritize all orders (even those without matching customers)
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM 
    customers c
RIGHT JOIN 
    orders o ON c.customerNumber = o.customerNumber
ORDER BY 
    o.orderDate
LIMIT 10;