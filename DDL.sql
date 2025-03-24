CREATE TYPE Users_Type AS ENUM ('regular', 'occasional', 'frequent');

-- Tabla de Usuarios
CREATE TABLE Users (
    nit VARCHAR PRIMARY KEY,
    name VARCHAR NOT NULL,
    email VARCHAR NOT NULL UNIQUE,
    phone VARCHAR,
    user_type Users_Type,
    CHECK (email LIKE '%@%')
);

CREATE INDEX idx_user_email ON Users(email);

-- Tabla de Roles
CREATE TABLE Role (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR NOT NULL UNIQUE
);

-- Tabla de Permisos
CREATE TABLE Permission (
    permission_id SERIAL PRIMARY KEY,
    permission_name VARCHAR NOT NULL,
    description VARCHAR
);

-- Tabla de Relación Rol-Permiso
CREATE TABLE Role_Permission (
    role_permission_id SERIAL PRIMARY KEY,
    role_id INTEGER NOT NULL,
    permission_id INTEGER NOT NULL,
    FOREIGN KEY (role_id) REFERENCES Role(role_id),
    FOREIGN KEY (permission_id) REFERENCES Permission(permission_id)
);

-- Tabla de Empleados
CREATE TABLE Employee (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    role_id INTEGER NOT NULL,
    biometric_data BYTEA,
    username VARCHAR UNIQUE NOT NULL,
    password_hash VARCHAR NOT NULL,
    FOREIGN KEY (role_id) REFERENCES Role(role_id)
);

CREATE TYPE Shift_Status AS ENUM ('scheduled', 'completed', 'cancelled');

-- Tabla de Turnos
CREATE TABLE Shift (
    shift_id SERIAL PRIMARY KEY,
    employee_id INTEGER NOT NULL,
    date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    status Shift_Status,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TYPE Movement_Type_Name AS ENUM ('incoming', 'outgoing', 'adjustment');

-- Tabla de Categoría de Productos
CREATE TABLE Product_Category (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE
);

-- Tabla de Productos
CREATE TABLE Product (
    product_id SERIAL PRIMARY KEY,
    category_id INTEGER NOT NULL,
    name VARCHAR NOT NULL,
    description TEXT,
    purchase_price FLOAT CHECK (purchase_price >= 0),
    sale_price FLOAT CHECK (sale_price >= 0),
    batch VARCHAR,
    expiration_date TIMESTAMP,
    is_perishable BOOLEAN,
    FOREIGN KEY (category_id) REFERENCES Product_Category(category_id)
);

CREATE INDEX idx_product_name ON Product(name);

-- Tabla de Tipos de Movimiento
CREATE TABLE Movement_Type (
    movement_type_id SERIAL PRIMARY KEY,
    type_name Movement_Type_Name
);
