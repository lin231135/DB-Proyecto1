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
