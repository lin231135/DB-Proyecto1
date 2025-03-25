INSERT INTO Product_Category (category_id, name) VALUES
(1, 'Categoría 1'),
(2, 'Categoría 2'),
(3, 'Categoría 3');

INSERT INTO Role (role_id, role_name) VALUES
(1, 'Rol 1'),
(2, 'Rol 2'),
(3, 'Rol 3'),
(4, 'Rol 4'),
(5, 'Rol 5');

INSERT INTO Users (nit, name, email, phone, user_type) VALUES
('10001', 'Usuario 1', 'usuario1@correo.com', '555-0101', 'occasional'),
('10002', 'Usuario 2', 'usuario2@correo.com', '555-0102', 'regular'),
('10003', 'Usuario 3', 'usuario3@correo.com', '555-0103', 'frequent'),
('10004', 'Usuario 4', 'usuario4@correo.com', '555-0104', 'occasional'),
('10005', 'Usuario 5', 'usuario5@correo.com', '555-0105', 'regular'),
('10006', 'Usuario 6', 'usuario6@correo.com', '555-0106', 'frequent'),
('10007', 'Usuario 7', 'usuario7@correo.com', '555-0107', 'frequent'),
('10008', 'Usuario 8', 'usuario8@correo.com', '555-0108', 'regular'),
('10009', 'Usuario 9', 'usuario9@correo.com', '555-0109', 'frequent'),
('10010', 'Usuario 10', 'usuario10@correo.com', '555-0110', 'frequent');

INSERT INTO Employee (employee_id, name, role_id, biometric_data, username, password_hash) VALUES
(1, 'Empleado 1', 3, NULL, 'user1', 'hash1'),
(2, 'Empleado 2', 5, NULL, 'user2', 'hash2'),
(3, 'Empleado 3', 3, NULL, 'user3', 'hash3'),
(4, 'Empleado 4', 1, NULL, 'user4', 'hash4'),
(5, 'Empleado 5', 5, NULL, 'user5', 'hash5'),
(6, 'Empleado 6', 4, NULL, 'user6', 'hash6'),
(7, 'Empleado 7', 2, NULL, 'user7', 'hash7'),
(8, 'Empleado 8', 4, NULL, 'user8', 'hash8'),
(9, 'Empleado 9', 5, NULL, 'user9', 'hash9'),
(10, 'Empleado 10', 1, NULL, 'user10', 'hash10');

INSERT INTO Supplier (supplier_id, name, contact, phone) VALUES
(1, 'Proveedor 1', 'Contacto 1', '300-40001'),
(2, 'Proveedor 2', 'Contacto 2', '300-40002'),
(3, 'Proveedor 3', 'Contacto 3', '300-40003'),
(4, 'Proveedor 4', 'Contacto 4', '300-40004'),
(5, 'Proveedor 5', 'Contacto 5', '300-40005'),
(6, 'Proveedor 6', 'Contacto 6', '300-40006'),
(7, 'Proveedor 7', 'Contacto 7', '300-40007'),
(8, 'Proveedor 8', 'Contacto 8', '300-40008'),
(9, 'Proveedor 9', 'Contacto 9', '300-40009'),
(10, 'Proveedor 10', 'Contacto 10', '300-40010');

INSERT INTO Product (product_id, category_id, name, description, purchase_price, sale_price, batch, expiration_date, is_perishable) VALUES
(1, 2, 'Producto 1', 'Descripción del producto 1', 29.61, 135.01, 'Lote1', '2025-02-08', TRUE),
(2, 3, 'Producto 2', 'Descripción del producto 2', 55.5, 144.55, 'Lote2', '2025-02-25', TRUE),
(3, 1, 'Producto 3', 'Descripción del producto 3', 93.74, 168.26, 'Lote3', '2025-01-29', FALSE),
(4, 2, 'Producto 4', 'Descripción del producto 4', 62.89, 152.57, 'Lote4', '2025-01-30', FALSE),
(5, 3, 'Producto 5', 'Descripción del producto 5', 63.94, 188.64, 'Lote5', '2024-12-30', TRUE),
(6, 1, 'Producto 6', 'Descripción del producto 6', 41.8, 142.93, 'Lote6', '2024-11-16', FALSE),
(7, 2, 'Producto 7', 'Descripción del producto 7', 19.92, 182.8, 'Lote7', '2024-10-04', TRUE),
(8, 3, 'Producto 8', 'Descripción del producto 8', 89.91, 110.98, 'Lote8', '2025-01-14', TRUE),
(9, 1, 'Producto 9', 'Descripción del producto 9', 83.17, 141.17, 'Lote9', '2024-07-21', FALSE),
(10, 2, 'Producto 10', 'Descripción del producto 10', 91.2, 173.38, 'Lote10', '2024-08-27', FALSE);

INSERT INTO Sale (sale_id, datetime, employee_id, user_nit, total, payment_method) VALUES
(1, '2024-03-23 00:00:00', 4, '10006', 524.77, 'credit_card'),
(2, '2024-03-22 00:00:00', 6, '10008', 207.58, 'debit_card'),
(3, '2024-03-21 00:00:00', 10, '10005', 254.7, 'debit_card'),
(4, '2024-03-20 00:00:00', 7, '10001', 942.49, 'cash'),
(5, '2024-03-19 00:00:00', 5, '10006', 823.28, 'cash'),
(6, '2024-03-18 00:00:00', 2, '10001', 292.73, 'debit_card'),
(7, '2024-03-17 00:00:00', 6, '10001', 231.66, 'credit_card'),
(8, '2024-03-16 00:00:00', 7, '10009', 812.9, 'online_payment'),
(9, '2024-03-15 00:00:00', 3, '10009', 628.74, 'cash'),
(10, '2024-03-14 00:00:00', 5, '10002', 149.5, 'debit_card');

INSERT INTO Sale_Detail (sale_detail_id, sale_id, product_id, quantity, unit_price, discount) VALUES
(1, 1, 6, 3, 127.33, 7.56),
(2, 1, 3, 3, 144.58, 8.57),
(3, 2, 9, 3, 132.17, 3.45),
(4, 2, 9, 5, 171.46, 5.42),
(5, 3, 7, 5, 157.61, 15.41),
(6, 3, 7, 3, 152.49, 7.27),
(7, 4, 1, 2, 110.28, 13.62),
(8, 4, 5, 2, 121.25, 7.82),
(9, 5, 2, 4, 128.4, 14.56),
(10, 5, 8, 3, 105.07, 4.83),
(11, 6, 6, 4, 135.32, 5.17),
(12, 6, 1, 4, 143.39, 19.97),
(13, 7, 5, 3, 131.93, 3.65),
(14, 7, 10, 1, 157.24, 6.23),
(15, 8, 6, 2, 108.67, 8.73),
(16, 8, 5, 1, 126.41, 2.65),
(17, 9, 4, 1, 148.0, 6.15),
(18, 9, 9, 2, 125.83, 13.82),
(19, 10, 7, 4, 132.42, 11.47),
(20, 10, 8, 3, 155.45, 0.3);

INSERT INTO Movement_Type (movement_type_id, type_name) VALUES
(1, 'incoming'),
(2, 'outgoing'),
(3, 'adjustment');

INSERT INTO Inventory (inventory_id, product_id, quantity, update_date, movement_type_id, supplier_id) VALUES
(1, 2, 94, '2025-02-16 11:24:41', 1, 2),
(2, 3, 35, '2025-02-06 11:24:41', 2, 3),
(3, 4, 37, '2025-02-09 11:24:41', 3, 4),
(4, 5, 23, '2025-03-01 11:24:41', 2, 5),
(5, 6, 92, '2025-03-03 11:24:41', 3, 6),
(6, 7, 70, '2025-02-22 11:24:41', 2, 7),
(7, 8, 46, '2025-03-02 11:24:41', 2, 8),
(8, 9, 57, '2025-03-15 11:24:41', 2, 9),
(9, 10, 39, '2025-03-10 11:24:41', 1, 10),
(10, 1, 15, '2025-03-12 11:24:41', 1, 1);

INSERT INTO Expense (expense_id, type, amount, description, date) VALUES
(1, 'administrative', 514.86, 'Gasto 1', '2025-03-23 11:24:41'),
(2, 'marketing', 940.12, 'Gasto 2', '2025-03-22 11:24:41'),
(3, 'travel', 412.33, 'Gasto 3', '2025-03-21 11:24:41'),
(4, 'administrative', 649.77, 'Gasto 4', '2025-03-20 11:24:41'),
(5, 'marketing', 798.55, 'Gasto 5', '2025-03-19 11:24:41'),
(6, 'operational', 301.62, 'Gasto 6', '2025-03-18 11:24:41'),
(7, 'travel', 278.40, 'Gasto 7', '2025-03-17 11:24:41'),
(8, 'marketing', 733.25, 'Gasto 8', '2025-03-16 11:24:41'),
(9, 'operational', 964.08, 'Gasto 9', '2025-03-15 11:24:41'),
(10, 'travel', 886.11, 'Gasto 10', '2025-03-14 11:24:41');

INSERT INTO Report (report_id, sale_id, expense_id, generation_date, report_type, description) VALUES
(1, 1, 1, '2025-03-23 11:24:41', 'gastos', 'Reporte generado número 1'),
(2, 2, 2, '2025-03-22 11:24:41', 'ventas', 'Reporte generado número 2'),
(3, 3, 3, '2025-03-21 11:24:41', 'gastos', 'Reporte generado número 3'),
(4, 4, 4, '2025-03-20 11:24:41', 'ventas', 'Reporte generado número 4'),
(5, 5, 5, '2025-03-19 11:24:41', 'gastos', 'Reporte generado número 5'),
(6, 6, 6, '2025-03-18 11:24:41', 'ventas', 'Reporte generado número 6'),
(7, 7, 7, '2025-03-17 11:24:41', 'gastos', 'Reporte generado número 7'),
(8, 8, 8, '2025-03-16 11:24:41', 'ventas', 'Reporte generado número 8'),
(9, 9, 9, '2025-03-15 11:24:41', 'gastos', 'Reporte generado número 9'),
(10, 10, 10, '2025-03-14 11:24:41', 'ventas', 'Reporte generado número 10');

INSERT INTO Shift (shift_id, employee_id, date, start_time, end_time, status) VALUES
(1, 3, '2025-03-21', '08:00:00', '16:00:00', 'completed'),
(2, 7, '2025-03-17', '08:00:00', '16:00:00', 'scheduled'),
(3, 10, '2025-03-15', '08:00:00', '16:00:00', 'completed'),
(4, 2, '2025-03-22', '08:00:00', '16:00:00', 'scheduled'),
(5, 4, '2025-03-18', '08:00:00', '16:00:00', 'cancelled'),
(6, 6, '2025-03-14', '08:00:00', '16:00:00', 'completed'),
(7, 9, '2025-03-20', '08:00:00', '16:00:00', 'scheduled'),
(8, 1, '2025-03-19', '08:00:00', '16:00:00', 'completed'),
(9, 5, '2025-03-16', '08:00:00', '16:00:00', 'cancelled'),
(10, 8, '2025-03-13', '08:00:00', '16:00:00', 'scheduled');



