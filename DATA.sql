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