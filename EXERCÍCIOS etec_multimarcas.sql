CREATE DATABASE IF NOT EXISTS etec_multimarcas;
USE etec_multimarcas;

CREATE TABLE carros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fabricante VARCHAR(50),
    modelo VARCHAR(50),
    ano_fabricacao VARCHAR(25),
    cor VARCHAR(50),
    quantidade INT,
    categoria VARCHAR(50)
    );
    
INSERT INTO carros (fabricante, modelo, ano_fabricacao, cor, quantidade, categoria) VALUES
('FIAT', 'Uno', 2020, 'Vermelho', 10, 'Hatch'),
('FIAT', 'Mobi', 2021, 'Azul', 3, 'Hatch'),
('Volkswagen', 'Gol', 2022, 'Preto', 8, 'Hatch'),
('Chevrolet', 'Onix', 2021, 'Branco', 12, 'Hatch'),
('Ford', 'Ka', 2020, 'Prata', 7, 'Hatch'),
('Hyundai', 'HB20', 2022, 'Cinza', 9, 'Hatch'),
('Renault', 'Kwid', 2021, 'Amarelo', 4, 'Hatch'),
('Honda', 'Civic', 2020, 'Azul', 6, 'Sedan'),
('Toyota', 'Corolla', 2021, 'Preto', 10, 'Sedan'),
('BMW', '320i', 2021, 'Branco', 3, 'Sedan'),
('Mercedes-Benz', 'A200', 2020, 'Prata', 2, 'Sedan'),
('Audi', 'A3', 2022, 'Vermelho', 5, 'Sedan'),
('Nissan', 'Sentra', 2021, 'Cinza', 4, 'Sedan'),
('Jeep', 'Renegade', 2021, 'Verde', 11, 'SUV'),
('Toyota', 'RAV4', 2022, 'Preto', 13, 'SUV'),
('Honda', 'HR-V', 2020, 'Branco', 7, 'SUV'),
('Ford', 'EcoSport', 2021, 'Azul', 6, 'SUV'),
('Chevrolet', 'Tracker', 2021, 'Prata', 9, 'SUV'),
('Volkswagen', 'T-Cross', 2022, 'Cinza', 8, 'SUV'),
('Fiat', 'Toro', 2022, 'Preto', 2, 'Picape');

SELECT * FROM carros;

-- 1. Selecione todos carros da fabricante "Toyota"?
SELECT * FROM carros 
WHERE fabricante = 'Toyota';

-- 2. Selecione campos (fabricante, modelo, cor) de todos os carros da "Fiat":
SELECT fabricante, modelo, cor FROM carros 
WHERE fabricante = 'Fiat';

-- 3. Selecione todos os carros ordenando pelo carro com maior quantidade:
SELECT * FROM carros 
ORDER BY quantidade DESC;

-- 4. Selecione todos os carros da cor "Preto":
SELECT * FROM carros 
WHERE cor = 'Preto';

-- 5. Atualize todos registros de carros da "Fiat", alterando a quantidade em 5:
UPDATE carros 
SET quantidade = 5 
WHERE fabricante = "Fiat";

-- 6. Atualize a cor "vermelha" para "azul" em todos os carros que tenham essa cor:
UPDATE carros
SET cor = 'Azul'
WHERE cor = 'Vermelho';

-- 7. Atualize todos os carros do modelo "Gol" para "Polo":
UPDATE carros
SET modelo = 'Polo'
WHERE modelo = 'Gol';

-- 8. Atualize todos os carros com quantidade = 1 para 8:
UPDATE carros
SET quantidade = 8
WHERE quantidade = 1;

SELECT * FROM carros;




