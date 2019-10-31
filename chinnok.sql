-- 1.0 Setting up Oracle Chinook
-- In this section you will begin the process of working with the Oracle Chinook database
-- Task Open the Chinook_Oracle.sql file and execute the scripts within.

-- 2.0 SQL Queries
-- In this section you will be performing various queries against the Oracle Chinook database.

-- 2.1 SELECT
-- Task Select all records from the Employee table.
SELECT * FROM Employee;

-- Task Select all records from the Employee table where last name is King.
SELECT * FROM Employee WHERE lastname = 'King';

-- Task Select all records from the Employee table where first name is Andrew and REPORTSTO is NULL.
SELECT * FROM Employee WHERE firstname = 'Andrew' AND REPORTSTO IS NULL;

-- 2.2 ORDER BY
-- Task Select all albums in Album table and sort result set in descending order by title.
SELECT * FROM Album ORDER BY title desc;

-- Task Select first name from Customer and sort result set in ascending order by city
SELECT firstname FROM Customer ORDER BY city ASC;

-- 2.3 INSERT INTO
-- Task Insert two new records into Genre table
INSERT INTO Genre (Genreid, name) VALUES (26, 'Chillstep');
INSERT INTO Genre (Genreid, name) VALUES (27, 'Dubstep');

-- Task Insert two new records into Employee table
INSERT INTO Employee (EmployeeID, lastname, firstname, title, reportsto, birthdate, hiredate, address, city, state, country, postalcode, phone, fax, email) VALUES (employeeid_seq.nextval,'Silas','Josh','SE',reportso_seq.nextval,DATE '06-01-1975',DATE '06-02-1995','123 The Best Street','Kalamazoo','MD','USA','20732','3012453879','3214569870','thebestemail@greatmail.com');


-- Task Insert two new records into Customer table
INSERT INTO Customer (CustomerId, firstname, lastname, company, address, 
    city, state, country, postalcode, phone, fax, email, supportrepid) 
    VALUES (60, 'Jake', 'Sollie', NULL, '354 Yadayada Ave', 'Silver Springs', 
        'CO', 'USA', '23654', '2354356789','2354353889','thegoat@yahoo.com', NULL);
INSERT INTO Customer (CustomerId, firstname, lastname, company, address, 
    city, state, country, postalcode, phone, fax, email, supportrepid) 
    VALUES (61, 'Jill', 'Wollie', NULL, '512 Yamada Lane', 'Gaithersburg', 
        'ID', 'USA', '53241', '9684356789','8964353889','thesheep@yahoo.com', NULL);

-- 2.4 UPDATE
-- Task Update Aaron Mitchell in Customer table to Robert Walter
UPDATE Customer 
    SET Firstname = 'Robert', lastname = 'Walter'
    WHERE CustomerID = 32;

-- Task Update name of artist in the Artist table �Creedence Clearwater Revival� to �CCR�
UPDATE Artist
    SET name = 'CCR'
    WHERE artistid = 76;

-- 2.5 LIKE
-- Task Select all invoices with a billing address like �T
SELECT * from Invoice where billingaddress LIKE 'T%';

-- 2.6 BETWEEN
-- Task Select all invoices that have a total between 15 and 50
SELECT * FROM invoice where Total > 15 and total <50;

-- Task Select all employees hired between 1st of June 2003 and 1st of March 2004
-- You have to change the 'NLS_DATE_FORMAT' to fit first
SELECT * FROM Employee where hiredate > '01-06-2003' and hiredate < '01-03-2004';

-- 2.7 DELETE
-- Task Delete a record in Customer table where the name is Robert Walter (There may be constraints that rely on this, find out how to resolve them).


-- 3.0 SQL Functions
-- In this section you will be using the Oracle system functions, as well as your own functions, to perform various actions against the database

-- 3.1 System Defined Functions
-- Task Create a function that returns the current time.

-- Task create a function that returns the length of a mediatype from the mediatype table

-- 3.2 System Defined Aggregate Functions
-- Task Create a function that returns the average total of all invoices

-- Task Create a function that returns the most expensive track

-- 3.3 User Defined Scalar Functions


-- Task Create a function that returns the average price of invoiceline items in the invoiceline table


-- 3.4 User Defined Table Valued Functions
-- Task Create a function that returns all employees who are born after 1968.


-- 4.0 Stored Procedures
--  In this section you will be creating and executing stored procedures. You will be creating various types of stored procedures that take input and output parameters.


-- 4.1 Basic Stored Procedure
-- Task Create a stored procedure that selects the first and last names of all the employees.


-- 4.2 Stored Procedure Input Parameters
-- Task Create a stored procedure that updates the personal information of an employee.


-- Task Create a stored procedure that returns the managers of an employee.


-- 4.3 Stored Procedure Output Parameters
-- Task Create a stored procedure that returns the name and company of a customer.


-- 6.0 Triggers
-- In this section you will create various kinds of triggers that work when certain DML statements are executed on a table.

-- 6.1 AFTER/FOR
-- Task - Create an after insert trigger on the employee table fired after a new record is inserted into the table.


-- Task Create an after update trigger on the album table that fires after a row is inserted in the table


-- Task Create an after delete trigger on the customer table that fires after a row is deleted from the table.


-- Task Create a trigger that restricts the deletion of any invoice that is priced over 50 dollars.


-- 7.0 JOINS
-- In this section you will be working with combing various tables through the use of joins. You will work with outer, inner, right, left, cross, and self joins.


-- 7.1 INNER
-- Task Create an inner join that joins customers and orders and specifies the name of the customer and the invoiceId.


-- 7.2 OUTER
-- Task Create an outer join that joins the customer and invoice table, specifying the CustomerId, firstname, lastname, invoiceId, and total.


-- 7.3 RIGHT
-- Task Create a right join that joins album and artist specifying artist name and title.


-- 7.4 CROSS
-- Task Create a cross join that joins album and artist and sorts by artist name in ascending order.


-- 7.5 SELF
-- Task Perform a self-join on the employee table, joining on the reportsto column.
