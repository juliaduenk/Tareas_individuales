USE pokemon3;

-- Insert dummy data into Jugador
INSERT INTO Jugador (IDJugador, FechaRegistro, NombreCompleto, CartasQueTiene, Puntos, deMonedas, Correo, Clave, FechaCreacion, UltimaModificacion) VALUES
(1, '2024-01-01', 'Ash Ketchum', 10, 100, 500, 'ash@example.com', 'password1', '2024-01-01', '2024-01-01'),
(2, '2024-01-02', 'Misty Waterflower', 15, 150, 600, 'misty@example.com', 'password2', '2024-01-02', '2024-01-02'),
(3, '2024-01-03', 'Brock Slate', 20, 200, 700, 'brock@example.com', 'password3', '2024-01-03', '2024-01-03'),
(4, '2024-01-04', 'Tracey Sketchit', 25, 250, 800, 'tracey@example.com', 'password4', '2024-01-04', '2024-01-04'),
(5, '2024-01-05', 'May Maple', 30, 300, 900, 'may@example.com', 'password5', '2024-01-05', '2024-01-05'),
(6, '2024-01-06', 'Dawn Berlitz', 35, 350, 1000, 'dawn@example.com', 'password6', '2024-01-06', '2024-01-06'),
(7, '2024-01-07', 'Serena Yvonne', 40, 400, 1100, 'serena@example.com', 'password7', '2024-01-07', '2024-01-07'),
(8, '2024-01-08', 'Clemont Lumiose', 45, 450, 1200, 'clemont@example.com', 'password8', '2024-01-08', '2024-01-08'),
(9, '2024-01-09', 'Bonnie Lumiose', 50, 500, 1300, 'bonnie@example.com', 'password9', '2024-01-09', '2024-01-09'),
(10, '2024-01-10', 'Lillie Aether', 55, 550, 1400, 'lillie@example.com', 'password10', '2024-01-10', '2024-01-10'),
(11, '2024-01-11', 'Gladion Aether', 60, 600, 1500, 'gladion@example.com', 'password11', '2024-01-11', '2024-01-11'),
(12, '2024-01-12', 'Kiawe Wela', 65, 650, 1600, 'kiawe@example.com', 'password12', '2024-01-12', '2024-01-12'),
(13, '2024-01-13', 'Mallow Lush', 70, 700, 1700, 'mallow@example.com', 'password13', '2024-01-13', '2024-01-13'),
(14, '2024-01-14', 'Lana Brooklet', 75, 750, 1800, 'lana@example.com', 'password14', '2024-01-14', '2024-01-14'),
(15, '2024-01-15', 'Sophocles Hokulani', 80, 800, 1900, 'sophocles@example.com', 'password15', '2024-01-15', '2024-01-15');

-- Insert dummy data into Carta
INSERT INTO Carta (IDCarta, NombreCarta, TipoCarta, HP, Energia, Rareza, Habilidad, Efecto, DescripcionGeneral, Poder, NivelRareza, IDMazo) VALUES
(1, 'Pikachu', 'Electric', 60, 50, 'Common', 'Static', 'Paralyze', 'Electric Mouse Pokémon', 55, 1, 1),
(2, 'Charizard', 'Fire', 150, 90, 'Rare', 'Blaze', 'Burn', 'Flame Pokémon', 84, 4, 2),
(3, 'Blastoise', 'Water', 150, 80, 'Rare', 'Torrent', 'Drench', 'Shellfish Pokémon', 83, 4, 3),
(4, 'Venusaur', 'Grass', 160, 80, 'Rare', 'Overgrow', 'Poison', 'Seed Pokémon', 82, 4, 4),
(5, 'Eevee', 'Normal', 55, 30, 'Common', 'Run Away', 'Quick Attack', 'Evolution Pokémon', 50, 1, 5),
(6, 'Gengar', 'Ghost', 130, 60, 'Rare', 'Levitate', 'Haunt', 'Shadow Pokémon', 65, 4, 6),
(7, 'Jigglypuff', 'Fairy', 115, 40, 'Common', 'Cute Charm', 'Sing', 'Balloon Pokémon', 45, 1, 7),
(8, 'Snorlax', 'Normal', 160, 50, 'Rare', 'Immunity', 'Rest', 'Sleeping Pokémon', 85, 4, 8),
(9, 'Machamp', 'Fighting', 160, 70, 'Rare', 'Guts', 'Punch', 'Superpower Pokémon', 80, 4, 9),
(10, 'Dragonite', 'Dragon', 150, 100, 'Rare', 'Inner Focus', 'Hyper Beam', 'Dragon Pokémon', 91, 5, 10),
(11, 'Lucario', 'Fighting', 120, 70, 'Rare', 'Steadfast', 'Aura Sphere', 'Aura Pokémon', 80, 4, 11),
(12, 'Garchomp', 'Dragon', 170, 90, 'Rare', 'Sand Veil', 'Dragon Rush', 'Mach Pokémon', 102, 5, 12),
(13, 'Sylveon', 'Fairy', 95, 60, 'Rare', 'Pixilate', 'Moonblast', 'Intertwining Pokémon', 75, 4, 13),
(14, 'Greninja', 'Water', 125, 70, 'Rare', 'Battle Bond', 'Water Shuriken', 'Ninja Pokémon', 103, 5, 14),
(15, 'Togepi', 'Fairy', 35, 20, 'Common', 'Serene Grace', 'Metronome', 'Spike Ball Pokémon', 20, 1, 15);

-- Insert dummy data into Mazo
INSERT INTO Mazo (IDMazo, IDJugador, IDCarta, NumCartasTiene, NombreDeMazo, FechaCreacion, UltimaModificacion) VALUES
(1, 1, 1, 3, 'Electric Deck', '2024-01-01', '2024-01-01'),
(2, 2, 2, 2, 'Fire Deck', '2024-01-02', '2024-01-02'),
(3, 3, 3, 2, 'Water Deck', '2024-01-03', '2024-01-03'),
(4, 4, 4, 2, 'Grass Deck', '2024-01-04', '2024-01-04'),
(5, 5, 5, 3, 'Normal Deck', '2024-01-05', '2024-01-05'),
(6, 6, 6, 1, 'Ghost Deck', '2024-01-06', '2024-01-06'),
(7, 7, 7, 4, 'Fairy Deck', '2024-01-07', '2024-01-07'),
(8, 8, 8, 2, 'Normal Deck', '2024-01-08', '2024-01-08'),
(9, 9, 9, 2, 'Fighting Deck', '2024-01-09', '2024-01-09'),
(10, 10, 10, 1, 'Dragon Deck', '2024-01-10', '2024-01-10'),
(11, 11, 11, 2, 'Fighting Deck', '2024-01-11', '2024-01-11'),
(12, 12, 12, 3, 'Dragon Deck', '2024-01-12', '2024-01-12'),
(13, 13, 13, 2, 'Fairy Deck', '2024-01-13', '2024-01-13'),
(14, 14, 14, 2, 'Water Deck', '2024-01-14', '2024-01-14'),
(15, 15, 15, 4, 'Fairy Deck', '2024-01-15', '2024-01-15');

-- Insert dummy data into Partida
INSERT INTO Partida (IDPartida, IDJugador1, IDJugador2, IDMazo, IDTurno, Fecha, IDGanador, NumeroNivel, FechaCreacion, UltimaModificacion) VALUES
(1, 1, 2, 1, 1, '2024-01-01', 1, 1, '2024-01-01', '2024-01-01'),
(2, 2, 3, 2, 2, '2024-01-02', 2, 2, '2024-01-02', '2024-01-02'),
(3, 3, 4, 3, 3, '2024-01-03', 3, 3, '2024-01-03', '2024-01-03'),
(4, 4, 5, 4, 4, '2024-01-04', 4, 4, '2024-01-04', '2024-01-04'),
(5, 5, 6, 5, 5, '2024-01-05', 5, 5, '2024-01-05', '2024-01-05'),
(6, 6, 7, 6, 6, '2024-01-06', 6, 6, '2024-01-06', '2024-01-06'),
(7, 7, 8, 7, 7, '2024-01-07', 7, 7, '2024-01-07', '2024-01-07'),
(8, 8, 9, 8, 8, '2024-01-08', 8, 8, '2024-01-08', '2024-01-08'),
(9, 9, 10, 9, 9, '2024-01-09', 9, 9, '2024-01-09', '2024-01-09'),
(10, 10, 11, 10, 10, '2024-01-10', 10, 10, '2024-01-10', '2024-01-10'),
(11, 11, 12, 11, 11, '2024-01-11', 11, 11, '2024-01-11', '2024-01-11'),
(12, 12, 13, 12, 12, '2024-01-12', 12, 12, '2024-01-12', '2024-01-12'),
(13, 13, 14, 13, 13, '2024-01-13', 13, 13, '2024-01-13', '2024-01-13'),
(14, 14, 15, 14, 14, '2024-01-14', 14, 14, '2024-01-14', '2024-01-14'),
(15, 15, 1, 15, 15, '2024-01-15', 15, 15, '2024-01-15', '2024-01-15');

-- Insert dummy data into Turno
INSERT INTO Turno (IDTurno, IDJugador, IDCarta, IDPartida, IDMazo, Fecha, Accion, FechaCreacion, UltimaModificacion) VALUES
(1, 1, 1, 1, 1, '2024-01-01', 'Attack', '2024-01-01', '2024-01-01'),
(2, 2, 2, 2, 2, '2024-01-02', 'Defend', '2024-01-02', '2024-01-02'),
(3, 3, 3, 3, 3, '2024-01-03', 'Attack', '2024-01-03', '2024-01-03'),
(4, 4, 4, 4, 4, '2024-01-04', 'Defend', '2024-01-04', '2024-01-04'),
(5, 5, 5, 5, 5, '2024-01-05', 'Attack', '2024-01-05', '2024-01-05'),
(6, 6, 6, 6, 6, '2024-01-06', 'Defend', '2024-01-06', '2024-01-06'),
(7, 7, 7, 7, 7, '2024-01-07', 'Attack', '2024-01-07', '2024-01-07'),
(8, 8, 8, 8, 8, '2024-01-08', 'Defend', '2024-01-08', '2024-01-08'),
(9, 9, 9, 9, 9, '2024-01-09', 'Attack', '2024-01-09', '2024-01-09'),
(10, 10, 10, 10, 10, '2024-01-10', 'Defend', '2024-01-10', '2024-01-10'),
(11, 11, 11, 11, 11, '2024-01-11', 'Attack', '2024-01-11', '2024-01-11'),
(12, 12, 12, 12, 12, '2024-01-12', 'Defend', '2024-01-12', '2024-01-12'),
(13, 13, 13, 13, 13, '2024-01-13', 'Attack', '2024-01-13', '2024-01-13'),
(14, 14, 14, 14, 14, '2024-01-14', 'Defend', '2024-01-14', '2024-01-14'),
(15, 15, 15, 15, 15, '2024-01-15', 'Attack', '2024-01-15', '2024-01-15');

-- Insert dummy data into Tienda
INSERT INTO Tienda (IDTienda, IDCarta, CartasDisponibles, FechaCreacion, UltimaModificacion) VALUES
(1, 1, 10, '2024-01-01', '2024-01-01'),
(2, 2, 20, '2024-01-02', '2024-01-02'),
(3, 3, 30, '2024-01-03', '2024-01-03'),
(4, 4, 40, '2024-01-04', '2024-01-04'),
(5, 5, 50, '2024-01-05', '2024-01-05'),
(6, 6, 60, '2024-01-06', '2024-01-06'),
(7, 7, 70, '2024-01-07', '2024-01-07'),
(8, 8, 80, '2024-01-08', '2024-01-08'),
(9, 9, 90, '2024-01-09', '2024-01-09'),
(10, 10, 100, '2024-01-10', '2024-01-10'),
(11, 11, 110, '2024-01-11', '2024-01-11'),
(12, 12, 120, '2024-01-12', '2024-01-12'),
(13, 13, 130, '2024-01-13', '2024-01-13'),
(14, 14, 140, '2024-01-14', '2024-01-14'),
(15, 15, 150, '2024-01-15', '2024-01-15');

-- Insert dummy data into Compra
INSERT INTO Compra (IDCompra, IDJugador, IDCarta, Fecha, Costo) VALUES
(1, 1, 1, '2024-01-01', 10.00),
(2, 2, 2, '2024-01-02', 20.00),
(3, 3, 3, '2024-01-03', 30.00),
(4, 4, 4, '2024-01-04', 40.00),
(5, 5, 5, '2024-01-05', 50.00),
(6, 6, 6, '2024-01-06', 60.00),
(7, 7, 7, '2024-01-07', 70.00),
(8, 8, 8, '2024-01-08', 80.00),
(9, 9, 9, '2024-01-09', 90.00),
(10, 10, 10, '2024-01-10', 100.00),
(11, 11, 11, '2024-01-11', 110.00),
(12, 12, 12, '2024-01-12', 120.00),
(13, 13, 13, '2024-01-13', 130.00),
(14, 14, 14, '2024-01-14', 140.00),
(15, 15, 15, '2024-01-15', 150.00);

-- Insert dummy data into Torneo
INSERT INTO Torneo (IDTorneo, NombreTorneo, Ubicacion, FechaInicio, FechaFin, IDPartida) VALUES
(1, 'Kanto Championship', 'Kanto', '2024-02-01', '2024-02-05', 1),
(2, 'Johto Tournament', 'Johto', '2024-03-01', '2024-03-05', 2),
(3, 'Hoenn League', 'Hoenn', '2024-04-01', '2024-04-05', 3),
(4, 'Sinnoh Cup', 'Sinnoh', '2024-05-01', '2024-05-05', 4),
(5, 'Unova Challenge', 'Unova', '2024-06-01', '2024-06-05', 5),
(6, 'Kalos Clash', 'Kalos', '2024-07-01', '2024-07-05', 6),
(7, 'Alola Battle', 'Alola', '2024-08-01', '2024-08-05', 7),
(8, 'Galar Gala', 'Galar', '2024-09-01', '2024-09-05', 8),
(9, 'Pallet Town Tournament', 'Pallet Town', '2024-10-01', '2024-10-05', 9),
(10, 'Cerulean Cup', 'Cerulean City', '2024-11-01', '2024-11-05', 10),
(11, 'Pewter Brawl', 'Pewter City', '2024-12-01', '2024-12-05', 11),
(12, 'Lavender League', 'Lavender Town', '2024-12-10', '2024-12-15', 12),
(13, 'Saffron Showdown', 'Saffron City', '2024-12-20', '2024-12-25', 13),
(14, 'Vermilion Victory', 'Vermilion City', '2025-01-01', '2025-01-05', 14),
(15, 'Celadon Clash', 'Celadon City', '2025-01-10', '2025-01-15', 15);