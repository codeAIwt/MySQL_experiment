CREATE DATABASE DB;
USE DB;

CREATE TABLE device_sellers (  
    seller_name VARCHAR(100),  -- 买家姓名
    device_type VARCHAR(100),  -- 设备类型
    specifications VARCHAR(255),  -- 规格型号
    manufacture_date DATE,  -- 出厂日期
    manufacturer VARCHAR(100),  -- 生产厂家
    price DECIMAL(10, 2)  -- 报价
);


INSERT INTO device_sellers(seller_name,device_type,specifications,manufacture_date,manufacturer,price) VALUE 
('A', 'Laptop', '15.6 inch, i7, 16GB RAM', '2021-03-15', 'Manufacturer X', 1100.00),  
('B', 'Laptop', '14 inch, i5, 8GB RAM', '2020-09-20', 'Manufacturer Y', 900.00),  
('C', 'Smartphone', '6.5 inch, 128GB Storage', '2022-01-05', 'Manufacturer Z', 700.00),  
('D', 'Laptop', '15.6 inch, i7, 16GB RAM', '2021-05-20', 'Manufacturer X', 1000.00),  
('E', 'Smartphone', '6.7 inch, 256GB Storage', '2021-11-10', 'Manufacturer W', 850.00),  
('F', 'Laptop', '13 inch, i5, 8GB RAM', '2020-06-15', 'Manufacturer Y', 880.00);

-- 假如需求为：
-- 设备类型：Laptop
-- 规格型号：15.6 inch, i7, 16GB RAM
-- 出厂日期：2021-01-01 至 2022-12-31
-- 生产厂家：Manufacturer X
-- 期望价格：不超过1200.00

SELECT * 
FROM device_sellers
WHERE device_type='Laptop' AND specifications='15.6 inch, i7, 16GB RAM'
AND manufacture_date BETWEEN '2020-01-01' AND '2022-12-31'  
AND manufacturer='Manufacturer X' AND price<=1200
ORDER BY price ASC;






