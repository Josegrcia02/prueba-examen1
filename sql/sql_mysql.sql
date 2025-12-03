-- MySQL schema for entity com.hellin.despliegue_api_rest.entity.Pet
-- Compatible con MySQL 8.x y Spring Boot JPA GenerationType.IDENTITY

CREATE DATABASE IF NOT EXISTS pets CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE pets;

CREATE TABLE IF NOT EXISTS pet (
  id BIGINT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  born DATE NOT NULL,
  chip VARCHAR(255) NOT NULL,
  category VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Datos iniciales (opcional)
INSERT INTO pet (name, born, chip, category) VALUES
('Mugu', '2017-09-12', '2r2r2r2r33y3y3', 'pinscher'),
('Alonso', '2025-09-16', '2324GFee111111', 'champion');