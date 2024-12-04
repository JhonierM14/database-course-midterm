INSERT INTO vehiculo (fechaCompra, estado, modelo, capacidad, tipoVehiculo)
VALUES 
    ('2022-01-15', TRUE, 'Modelo A', 50, 'Bus'),
    ('2023-03-10', TRUE, 'Modelo B', 45, 'Bus'),
    ('2021-06-20', FALSE, 'Modelo C', 60, 'Bus'),
    ('2020-11-05', TRUE, 'Modelo D', 55, 'Bus'),
('2019-08-25', FALSE, 'Modelo E', 40, 'Bus');

INSERT INTO rol (nombreRol)
VALUES 
    ('Conductor'),
    ('Operario');

INSERT INTO empleado (idRol, nombreCompleto, apellidos, experiencia, cedula, informacionLicencia)
VALUES 
    (1, 'Juan Pérez', 'González', '10 años', '123456789', 'Licencia A'),
    (1, 'María López', 'Rodríguez', '5 años', '987654321', 'Licencia B'),
(1, 'Carlos Martínez', 'Sánchez', '8 años', '456789123', 'Licencia C');

INSERT INTO empleado (idRol, nombreCompleto, apellidos, experiencia, cedula, informacionLicencia)
VALUES 
    (2, 'Ana Torres', 'Morales', '3 años', '741852963', NULL),
    (2, 'Luis Gómez', 'Fernández', '4 años', '852963741', NULL),
    (2, 'Sofía Ramírez', 'Jiménez', '2 años', '963741852', NULL);

-- Estaciones tipo Cabecera
INSERT INTO estacion (nombre, latitud, longitud, capacidad)
VALUES 
    ('Terminal Andrés Sanín', 3.4265, -76.4857, 500),
    ('Terminal Menga', 3.4887, -76.5244, 400),
    ('Terminal Paso del Comercio', 3.4748, -76.5015, 450),
    ('Terminal Aguablanca', 3.4178, -76.4815, 600),
    ('Terminal Sur (en construcción)', 3.3956, -76.5205, 550);

-- Estaciones tipo Intermedias, en Cali actualmente solo hay cuatro estaciones intermedias

INSERT INTO estacion (nombre, latitud, longitud, capacidad)
VALUES 
    ('Terminal Intermedia Cañaveralejo', 3.4133, -76.5536, 350),
    ('Terminal Intermedia Calipso', 3.4042, -76.4907, 300),
    ('Terminal Intermedia Simón Bolívar', 3.4201, -76.5017, 320),
    ('Terminal Intermedia Centro', 3.4512, -76.5325, 280);

-- Estaciones tipo Parada
INSERT INTO estacion (nombre, latitud, longitud, capacidad)
VALUES 
    ('San Pascual', 3.4485, -76.5321, 50),
    ('Sucre', 3.4438, -76.5359, 60),
    ('Petecuy', 3.4550, -76.5234, 55),
    ('San Pedro', 3.4493, -76.5352, 70),
    ('La Ermita', 3.4520, -76.5310, 65);


INSERT INTO operadorVehiculo (idEmpleado, idVehiculo, fecha, descripcion)
VALUES 
    (2, 1, '2024-01-10', 'Mantenimiento preventivo del sistema de frenos'),
    (3, 2, '2024-02-15', 'Cambio de aceite y revisión de motor'),
    (4, 3, '2024-03-20', 'Inspección general y limpieza del bus'),
    (2, 4, '2024-04-12', 'Revisión de suspensión y alineación de llantas'),
    (3, 5, '2024-05-18', 'Reparación de sistema eléctrico'),
    (4, 1, '2024-06-25', 'Mantenimiento del aire acondicionado');

INSERT INTO ruta (nombre)
VALUES 
    ('Ruta A: Terminal Andrés Sanín - Terminal Menga'),
    ('Ruta B: Terminal Paso del Comercio - Terminal Aguablanca'),
    ('Ruta C: Terminal Intermedia Cañaveralejo - Terminal Sur');

INSERT INTO vehiculoRuta (idVehiculo, idRuta, fecha, hora)
VALUES 
    (1, 1, '2024-12-05', '08:00'),
    (2, 2, '2024-12-05', '09:30'),
    (3, 3, '2024-12-05', '11:00'),
    (4, 1, '2024-12-06', '10:30'),
    (5, 2, '2024-12-06', '12:15');
