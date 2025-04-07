-- Drop the database if it already exists
DROP DATABASE IF EXISTS "ntt-data-challenge" WITH (FORCE);

-- Create the new database
CREATE DATABASE "ntt-data-challenge"
WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Connect to the newly created database using pgAdmin or a psql-specific command
-- \connect database

-- tables

DROP TABLE IF EXISTS cuenta cascade;

CREATE TABLE cuenta (
id BIGSERIAL PRIMARY KEY,
numero_cuenta VARCHAR(255) NOT NULL,
tipo_cuenta VARCHAR(255) NOT NULL,
saldo_inicial NUMERIC(19, 2) NOT NULL,
estado VARCHAR(255) NOT NULL,
 cliente_id VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS movimiento_cuenta cascade;

CREATE TABLE movimiento_cuenta (
id BIGSERIAL PRIMARY KEY,
fecha TIMESTAMP NOT NULL,
 tipo_movimiento VARCHAR(255) NOT NULL,
 valor NUMERIC(19, 2) NOT NULL,
  saldo NUMERIC(19, 2) NOT NULL,
 saldo_anterior NUMERIC(19, 2) NOT NULL,
  cuenta BIGINT NOT NULL,
FOREIGN KEY (cuenta) REFERENCES cuenta(id)
);

DROP TABLE IF EXISTS cliente CASCADE;

CREATE TABLE cliente (
id BIGSERIAL PRIMARY KEY,
nombre VARCHAR(255),
genero VARCHAR(50),
fecha_nacimiento DATE,
identificacion VARCHAR(50),
direccion VARCHAR(255),
telefono VARCHAR(50),
cliente_id VARCHAR(50),
clave VARCHAR(255),
estado VARCHAR(50)
);

/*
INSERT INTO cliente (nombre, genero, fecha_nacimiento, identificacion, direccion, telefono, cliente_id, clave, estado) VALUES
('Paul Atreides', UPPER('Male'), '1965-08-01', 'ID00123456', 'Arrakis', '555-1234', 'C001234567', MD5('password1'), UPPER('True')),
('Leia Organa', UPPER('Female'), '1956-10-21', 'ID00234567', 'Alderaan', '555-5678', 'C002345678', MD5('password2'), UPPER('True')),
('Ender Wiggin', UPPER('Male'), '1985-06-15', 'ID00345678', 'Battle School', '555-8765', 'C003456789', MD5('password3'), UPPER('True')),
('Arthur Dent', UPPER('Male'), '1979-03-11', 'ID00456789', 'Earth', '555-4321', 'C004567890', MD5('password4'), UPPER('True')),
('Katniss Everdeen', UPPER('Female'), '2008-09-14', 'ID00567890', 'District 12', '555-6789', 'C005678901', MD5('password5'), UPPER('True')),
('Rick Deckard', UPPER('Male'), '1968-01-01', 'ID00678901', 'San Francisco', '555-9876', 'C006789012', MD5('password6'), UPPER('True')),
('Neo', UPPER('Male'), '1999-03-31', 'ID00789012', 'Matrix', '555-1111', 'C007890123', MD5('password7'), UPPER('True')),
('Trillian', UPPER('Female'), '1979-03-11', 'ID00890123', 'Heart of Gold', '555-2222', 'C008901234', MD5('password8'), UPPER('True')),
('Gully Foyle', UPPER('Male'), '1956-01-01', 'ID00901234', 'Nomad', '555-3333', 'C009012345', MD5('password9'), UPPER('True')),
('Molly Millions', UPPER('Female'), '1984-07-01', 'ID01012345', 'Chiba City', '555-4444', 'C010123456', MD5('password10'), UPPER('True'));


INSERT INTO cuenta (numero_cuenta, tipo_cuenta, saldo_inicial, estado, cliente_id) VALUES
 ('1234567890', 'AHORROS', 1000.00, 'TRUE', 'C001234567'),
 ('2345678901', 'CORRIENTE', 1500.50, 'TRUE', 'C002345678'),
 ('3456789012', 'AHORROS', 2000.75, 'TRUE', 'C003456789'),
  ('4567890123', 'CORRIENTE', 2500.00, 'TRUE', 'C004567890'),
 ('5678901234', 'AHORROS', 3000.25, 'TRUE', 'C005678901'),
 ('6789012345', 'CORRIENTE', 3500.50, 'TRUE', 'C006789012'),
 ('7890123456', 'AHORROS', 4000.75, 'TRUE', 'C007890123'),
  ('8901234567', 'CORRIENTE', 4500.00, 'TRUE', 'C008901234'),
   ('9012345678', 'AHORROS', 5000.25, 'TRUE', 'C009012345'),
('0123456789', 'CORRIENTE', 5500.50, 'TRUE', 'C010123456');
*/