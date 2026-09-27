USE classicmodels;

-- =========================================================
-- 1. TẠO VIEW VÀ TRUY VẤN DỮ LIỆU
-- =========================================================
-- Tạo View lấy thông tin cơ bản gồm mã, tên và số điện thoại khách hàng
CREATE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM customers;

-- Truy vấn dữ liệu từ bảng ảo customer_views
SELECT * FROM customer_views;


-- =========================================================
-- 2. CẬP NHẬT (THAY THẾ) VIEW
-- =========================================================
-- Cập nhật View để lấy thêm họ tên người liên hệ và lọc khách hàng ở thành phố 'Nantes'
CREATE OR REPLACE VIEW customer_views AS
SELECT customerNumber, customerName, contactFirstName, contactLastName, phone
FROM customers
WHERE city = 'Nantes';

-- Truy vấn kiểm tra lại dữ liệu sau khi cập nhật View
SELECT * FROM customer_views;


-- =========================================================
-- 3. XÓA VIEW
-- =========================================================
-- Xóa View customer_views khi không còn sử dụng
DROP VIEW customer_views;