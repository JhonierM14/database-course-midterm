###################################
#   
#   JhonierM14
#   2372226
#   
###################################

### ARCHIVOS

En el archivo schema.sql se encuentra las instrucciones DDL
para la creacion de las tablas.

En el archivo data.sql estan las instrucciones para insertar
los datos requeridos para la resolucion del examen.

### CREACION DE LOS CONTENEDORES 

contenedor con postgres:

docker run --name homero -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=homero -p 5432:5432 postgres:14

contenedor con PGADMIN:

docker run --rm -p 5050:80 --link homero:homero -e "PGADMIN_DEFAULT_EMAIL=admin@admin.com" -e "PGADMIN_DEFAULT_PASSWORD=pg123" -d dpage/pgadmin4

### Para los registros de los viajes se utilizo la siguiente consulta:

SELECT vr.idVehiculo, vr.idRuta, vr.fecha, vr.hora, v.capacidad AS pasajerosEstimados
FROM vehiculoRuta vr
JOIN vehiculo v ON vr.idVehiculo = v.idVehiculo
ORDER BY vr.fecha DESC, vr.hora DESC
LIMIT 5;
