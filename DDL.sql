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
