-- 1. Usuarios frecuentes ordenados por tipo
SELECT nit, name, email, user_type
FROM Users
ORDER BY user_type;

-- 2. Empleados con su Rol
SELECT e.employee_id, e.name, r.role_name
FROM Employee e
JOIN Role r ON e.role_id = r.role_id;

-- 3. Productos con su categoría
SELECT p.product_id, p.name, c.name AS category, p.sale_price, p.is_perishable
FROM Product p
JOIN Product_Category c ON p.category_id = c.category_id;

-- 4. Inventario por producto (requiere datos en Inventory)
SELECT i.inventory_id, p.name AS product, i.quantity, m.type_name, s.name AS supplier
FROM Inventory i
JOIN Product p ON i.product_id = p.product_id
JOIN Movement_Type m ON i.movement_type_id = m.movement_type_id
JOIN Supplier s ON i.supplier_id = s.supplier_id;

-- 5. Ventas realizadas con nombre de usuario y total
SELECT s.sale_id, u.name AS cliente, s.datetime, s.total, s.payment_method
FROM Sale s
JOIN Users u ON s.user_nit = u.nit;
