
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS example_db;
USE example_db;

CREATE TABLE IF NOT EXISTS items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT
);

INSERT INTO items (name, description) VALUES ('iPhone 13', 'El último teléfono inteligente de Apple con pantalla Super Retina XDR.');
INSERT INTO items (name, description) VALUES ('Samsung Galaxy S21', 'Potente teléfono Android con una impresionante pantalla Dynamic AMOLED.');
INSERT INTO items (name, description) VALUES ('Sony PlayStation 5', 'La consola de próxima generación con gráficos asombrosos y tiempos de carga ultrarrápidos.');
INSERT INTO items (name, description) VALUES ('Dell XPS 13', 'Portátil ultradelgado con una pantalla InfinityEdge y un rendimiento excepcional.');
INSERT INTO items (name, description) VALUES ('Apple MacBook Pro', 'Potente portátil con procesadores Intel Core de última generación y una espectacular pantalla Retina.');
INSERT INTO items (name, description) VALUES ('Tesla Model 3', 'Automóvil eléctrico con un diseño elegante, una autonomía impresionante y un sistema de conducción autónoma avanzado.');
INSERT INTO items (name, description) VALUES ('Nintendo Switch', 'Consola híbrida que te permite jugar en casa o en movimiento con controles versátiles.');
INSERT INTO items (name, description) VALUES ('Canon EOS R5', 'Cámara mirrorless profesional con una resolución de 45 megapíxeles y capacidades de grabación de video 8K.');
INSERT INTO items (name, description) VALUES ('Bose QuietComfort 45', 'Auriculares con cancelación de ruido líderes en la industria y un sonido de alta calidad.');
INSERT INTO items (name, description) VALUES ('LG OLED C1', 'Televisor OLED con negros perfectos, colores vibrantes y una experiencia de visualización inmersiva.');
INSERT INTO items (name, description) VALUES ('Amazon Echo Dot', 'Altavoz inteligente con asistente virtual Alexa para controlar tu hogar inteligente y reproducir música.');
INSERT INTO items (name, description) VALUES ('Microsoft Surface Pro 8', 'Tablet versátil que se convierte en un portátil con un teclado desmontable y un lápiz óptico sensible a la presión.');
INSERT INTO items (name, description) VALUES ('Fitbit Versa 3', 'Reloj inteligente con seguimiento de actividad, monitorización del sueño y capacidad de pago sin contacto.');
INSERT INTO items (name, description) VALUES ('GoPro HERO10 Black', 'Cámara de acción con estabilización de video HyperSmooth 4.0 y capacidad de grabación de video en 5.3K.');
INSERT INTO items (name, description) VALUES ('Sony WH-1000XM4', 'Auriculares inalámbricos con cancelación de ruido adaptativa y una impresionante calidad de sonido.');
INSERT INTO items (name, description) VALUES ('Google Pixel 6', 'Teléfono Android con una increíble cámara de última generación y un rendimiento fluido.');
INSERT INTO items (name, description) VALUES ('Microsoft Xbox Series X', 'Consola de juegos de próxima generación con tiempos de carga ultrarrápidos y una potencia de procesamiento impresionante.');
INSERT INTO items (name, description) VALUES ('Asus ROG Strix G15', 'Portátil para juegos con una potente tarjeta gráfica NVIDIA GeForce RTX y una pantalla de alta frecuencia de actualización.');
INSERT INTO items (name, description) VALUES ('Amazon Kindle Paperwhite', 'Lector de libros electrónicos con una pantalla de tinta electrónica de alta resolución y resistencia al agua.');
INSERT INTO items (name, description) VALUES ('Razer DeathAdder V2', 'Ratón para juegos con un sensor óptico de alta precisión y switches mecánicos duraderos.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;