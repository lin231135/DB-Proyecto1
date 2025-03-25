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

-- 6. Ventas con detalles de productos
SELECT sd.sale_id, p.name AS producto, sd.quantity, sd.unit_price, sd.discount
FROM Sale_Detail sd
JOIN Product p ON sd.product_id = p.product_id
ORDER BY sd.sale_id;

-- 7. Total de ventas por empleado
SELECT e.name AS empleado, COUNT(s.sale_id) AS total_ventas, SUM(s.total) AS monto_total
FROM Sale s
JOIN Employee e ON s.employee_id = e.employee_id
GROUP BY e.name
ORDER BY monto_total DESC;

-- 8. Productos más vendidos
SELECT p.name, SUM(sd.quantity) AS total_vendidos
FROM Sale_Detail sd
JOIN Product p ON sd.product_id = p.product_id
GROUP BY p.name
ORDER BY total_vendidos DESC;

-- 9. Turnos de empleados (requiere datos en Shift)
SELECT e.name, sh.date, sh.start_time, sh.end_time, sh.status
FROM Shift sh
JOIN Employee e ON sh.employee_id = e.employee_id
ORDER BY sh.date DESC;

-- 10. Gastos por tipo
SELECT type, COUNT(*) AS cantidad, SUM(amount) AS total
FROM Expense
GROUP BY type
ORDER BY total DESC;
