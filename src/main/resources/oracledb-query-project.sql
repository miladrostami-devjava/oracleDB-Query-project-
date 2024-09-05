create table employees (
                           employee_id number(10) primary key not null ,
                           first_name varchar2(20) not null unique,
                           last_name varchar2(20) not null ,
                           email varchar2(50) unique not null ,
                           hire_date date not null check (hire_date >= TO_DATE('2000-01-01','YYYY-MM-DD')),
                           salary number(8,2) not null check(salary > 100),
                           department_id number(10),
                           constraint fk_department foreign key (department_id) references departments(department_id)
);


create table departments (
                             department_id number(10) primary key not null ,
                             department_name varchar2(100) not null unique
);

create table products(
                         product_id number(10) primary key not null ,
                         product_name varchar2(15) not null unique,
                         price number(15,2) not null ,
                         stock_quantity number(15) not null check (stock_quantity >=90)
);


create table customers (
                           customer_id number(10) primary key not null ,
                           first_name varchar2(12) not null ,
                           last_name varchar2(12) not null ,
                           email varchar2(50) not null unique ,
                           phonenumber varchar2(20),
                           address varchar2(255)

);

create table orders(
                       order_id number(10) primary key not null ,
                       order_date date not null ,
                       customer_id number(10) not null ,
                       product_id number(10) not null ,
                       quantity number(5) check(quantity >5),
                       constraint fk_customer foreign key  (customer_id) references customers(customer_id),
                       constraint fk_product foreign key (product_id) references products(product_id)
);


select * from customers;
