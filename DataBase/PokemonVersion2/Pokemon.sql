

CREATE DATABASE IF NOT EXISTS pokemon3;
USE pokemon3;
-- Create tables script

SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
SET @old_autocommit=@@autocommit;
SET autocommit=0;

-- Torneo table
CREATE TABLE Torneo (
    IDTorneo INT AUTO_INCREMENT PRIMARY KEY,
    NombreTorneo VARCHAR(255) NOT NULL,
    Ubicacion VARCHAR(255),
    FechaInicio DATE,
    FechaFin DATE,
    IDPartida INT,
    FOREIGN KEY (IDPartida) REFERENCES Partida(IDPartida)
);

-- Jugador table
CREATE TABLE Jugador (
    IDJugador INT AUTO_INCREMENT PRIMARY KEY,
    FechaRegistro DATE,
    NombreCompleto VARCHAR(255),
    CartasQueTiene INT,
    Puntos INT,
    deMonedas INT,
    Correo VARCHAR(255),
    Clave VARCHAR(255),
    FechaCreacion DATE,
    UltimaModificacion DATE
);

-- Carta table
CREATE TABLE Carta (
    IDCarta INT AUTO_INCREMENT PRIMARY KEY,
    NombreCarta VARCHAR(255) NOT NULL,
    TipoCarta VARCHAR(50),
    HP INT,
    Energia INT,
    Rareza VARCHAR(50),
    Habilidad VARCHAR (50),
    Efecto VARCHAR (50),
    DescripcionGeneral TEXT,
    Poder INT,
    NivelRareza INT,
    IDMazo INT,
    FOREIGN KEY (IDMazo) REFERENCES Mazo(IDMazo)
);

-- Mazo table
CREATE TABLE Mazo (
    IDMazo INT AUTO_INCREMENT PRIMARY KEY,
    IDJugador INT,
    IDCarta INT,
    NumCartasTiene INT,
    NombreDeMazo VARCHAR(255),
    FechaCreacion DATE,
    UltimaModificacion DATE,
    FOREIGN KEY (IDJugador) REFERENCES Jugador(IDJugador),
    FOREIGN KEY (IDCarta) REFERENCES Carta(IDCarta)
);

-- Partida table
CREATE TABLE Partida (
    IDPartida INT AUTO_INCREMENT PRIMARY KEY,
    IDJugador1 INT,
    IDJugador2 INT,
    IDMazo INT,
    IDTurno INT,
    Fecha DATE,
    IDGanador INT,
    NumeroNivel INT,
    FechaCreacion DATE,
    UltimaModificacion DATE,
    FOREIGN KEY (IDJugador1) REFERENCES Jugador(IDJugador),
    FOREIGN KEY (IDJugador2) REFERENCES Jugador(IDJugador),
    FOREIGN KEY (IDMazo) REFERENCES Mazo(IDMazo),
    FOREIGN KEY (IDTurno) REFERENCES Turno(IDTurno)
);

-- Turno table
CREATE TABLE Turno (
    IDTurno INT AUTO_INCREMENT PRIMARY KEY,
    IDJugador INT,
    IDCarta INT,
    IDPartida INT,
    IDMazo INT,
    Fecha DATE,
    Accion VARCHAR(255),
    FechaCreacion DATE,
    UltimaModificacion DATE,
    FOREIGN KEY (IDJugador) REFERENCES Jugador(IDJugador),
    FOREIGN KEY (IDCarta) REFERENCES Carta(IDCarta),
    FOREIGN KEY (IDPartida) REFERENCES Partida(IDPartida),
    FOREIGN KEY (IDMazo) REFERENCES Mazo(IDMazo)
);

-- Tienda table
CREATE TABLE Tienda (
    IDTienda INT AUTO_INCREMENT PRIMARY KEY,
    IDCarta INT,
    CartasDisponibles INT,
    FechaCreacion DATE,
    UltimaModificacion DATE,
    FOREIGN KEY (IDCarta) REFERENCES Carta(IDCarta)
);

-- Compra table
CREATE TABLE Compra (
    IDCompra INT AUTO_INCREMENT PRIMARY KEY,
    IDJugador INT,
    IDCarta INT,
    Fecha DATE,
    Costo DECIMAL(10, 2),
    FOREIGN KEY (IDJugador) REFERENCES Jugador(IDJugador),
    FOREIGN KEY (IDCarta) REFERENCES Carta(IDCarta)
);

-- List all players
SELECT * FROM Jugador;
-- Find all cards that belong to a specific deck:
SELECT * FROM Carta WHERE IDMazo = 1;
-- Retrieve the details of a specific match:
SELECT * FROM Partida WHERE IDPartida = 1;
-- List all tournaments and their locations:
SELECT NombreTorneo, Ubicacion FROM Torneo;
-- Get the cards available in the shop and their quantities
SELECT * FROM Tienda;
-- Find all purchases made by a specific player
SELECT * FROM Compra WHERE IDJugador = 1;








-- Reset settings
COMMIT;
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
SET autocommit=@old_autocommit;
