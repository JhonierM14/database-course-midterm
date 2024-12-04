CREATE TABLE rol (
    idRol SERIAL,
    nombreRol VARCHAR(100),
    PRIMARY KEY (idRol)
);

CREATE TABLE empleado (
    idEmpleado SERIAL,
    idRol INTEGER,
    nombreCompleto VARCHAR(100),
    apellidos VARCHAR(100),
    experiencia VARCHAR(200),
    cedula VARCHAR(12),
    informacionLicencia VARCHAR(200),
    PRIMARY KEY (idEmpleado),
    FOREIGN KEY (idRol) REFERENCES rol(idRol)
);

CREATE TABLE estacion (
    idEstacion SERIAL,
    nombre VARCHAR(100),
    latitud DECIMAL(10, 5),
    longitud DECIMAL(10, 5),
    capacidad INTEGER,
    PRIMARY KEY (idEstacion)
);

CREATE TABLE vehiculo (
    idVehiculo SERIAL,
    fechaCompra DATE,
    estado BOOLEAN,
    modelo VARCHAR(100),
    capacidad INTEGER,
    tipoVehiculo VARCHAR(50),
    PRIMARY KEY (idVehiculo)
);

CREATE TABLE ruta (
    idRuta SERIAL,
    nombre VARCHAR(100),
    PRIMARY KEY (idRuta)
);






CREATE TABLE operadorEstacion (
    idEmpleado INTEGER,
    idEstacion INTEGER,
    fecha DATE,
    descripcion TEXT,
    PRIMARY KEY (idEmpleado, idEstacion),
    FOREIGN KEY (idEmpleado) REFERENCES empleado(idEmpleado),
    FOREIGN KEY (idEstacion) REFERENCES estacion(idEstacion)
);

CREATE TABLE vehiculoRuta (
    idVehiculo INTEGER,
    idRuta INTEGER,
    fecha DATE,
    hora TIME,
    PRIMARY KEY (idVehiculo, idRuta),
    FOREIGN KEY (idVehiculo) REFERENCES vehiculo(idVehiculo),
    FOREIGN KEY (idRuta) REFERENCES ruta(idRuta)
);

CREATE TABLE rutaEstacion (
    idRuta INTEGER,
    idEstacion INTEGER,
    tiempoPromedio VARCHAR(50),
    PRIMARY KEY (idRuta, idEstacion),
    FOREIGN KEY (idRuta) REFERENCES ruta(idRuta),
    FOREIGN KEY (idEstacion) REFERENCES estacion(idEstacion)
);

CREATE TABLE conductorVehiculo (
    idEmpleado INTEGER,
    idVehiculo INTEGER,
    PRIMARY KEY (idEmpleado, idVehiculo),
    FOREIGN KEY (idEmpleado) REFERENCES empleado(idEmpleado),
    FOREIGN KEY (idVehiculo) REFERENCES vehiculo(idVehiculo)
);

CREATE TABLE operadorVehiculo (
    idEmpleado INTEGER,
    idVehiculo INTEGER,
    fecha DATE,
    descripcion TEXT,
    PRIMARY KEY (idEmpleado, idVehiculo),
    FOREIGN KEY (idEmpleado) REFERENCES empleado(idEmpleado),
    FOREIGN KEY (idVehiculo) REFERENCES vehiculo(idVehiculo)
);
