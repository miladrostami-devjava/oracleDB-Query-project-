

# example  a manufacturing company create project database in oracle db 

## 
 assume that we have a manufacturing company that
consists of different departments. These sections include
information about employees, products, orders, customers,
and departments. We want to create 5 tables that
are joined using primary and foreign keys.

Required tables:
Employees: information about employees
Departments: information about the company's departments
Products: information about manufactured products
Customers: information about customers
Orders: Information about orders that include customers and products
Relationships between tables:
Each employee belongs to a department (foreign key in 
Employees table to Departments table).
Each order contains a customer and several products 
(foreign keys in the Orders table to the Customers and Products tables).