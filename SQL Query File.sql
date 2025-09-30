1.SELECT* FROM Books WHERE Price < 20.00 AND Stock > 50;

2.SELECT
    *
FROM
    Customers
ORDER BY
    Country ASC, City DESC; 
	
3.SELECT
    Published_Year,
    AVG(Price) AS Average_Price
FROM
    books
GROUP BY
    Published_Year
ORDER BY
    Published_Year;

4.SELECT 
    b.Book_ID,
    b.Title,
    COALESCE(SUM(o.Quantity), 0) AS Total_Ordered
FROM Books b
LEFT JOIN Orders o
    ON b.Book_ID = o.Book_ID
GROUP BY b.Book_ID, b.Title
ORDER BY Total_Ordered DESC;

5.SELECT 
    Book_ID,
    Title,
    Author
FROM Books
WHERE Book_ID IN (SELECT DISTINCT Book_ID FROM Orders);

6.SELECT 
      AVG(Price) AS Average_Book_Price
  FROM
      Books;
7.SELECT
       SUM(Price) AS Total_Price_Sum
  FROM
       Books;
8.SELECT
    c.Name,
    c.Country,
    o.Order_ID,
    o.Order_Date
FROM
    Customers AS c  
RIGHT JOIN
    Orders AS o   
ON
    c.Customer_ID = o.Customer_ID;
9.SELECT
    C.Name,
    O.Order_ID,
    O.Order_Date,
    O.Total_Amount
FROM
    Customers C
INNER JOIN
    Orders O ON C.Customer_ID = O.Customer_ID;