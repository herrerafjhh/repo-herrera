
INSERT INTO Equipos (nombre) VALUES ('Betis');
INSERT INTO Equipos (nombre) VALUES ('Sevilla');


/*
* Listar todos los jugadores junto con su equipo, ordenados por el nombre del equipo y el
* nombre del jugador
*/
Select e.nombre, j.nombre from Jugadores j join Equipos e on j.id_equipo=e.id order by e.nombre;

-- Listar el total de goles marcados por cada equipo, ordenado por el total de goles.
Select e.nombre,sum(goles) as total from JugadoresGoles jg join Equipos e on jg.Jugadores_id_equipo=e.id order by e.nombre;

-- Insertar un nuevo jugador
INSERT INTO Jugadores(nombre, id_equipo) VALUES ('Adan', '1');
INSERT INTO Jugadores(nombre, id_equipo) VALUES ('Bruno', '1');
INSERT INTO Jugadores(nombre, id_equipo) VALUES ('Diego González', '2');
INSERT INTO Jugadores(nombre, id_equipo) VALUES ('Vietto', '2');

--Borrar el jugador recién creado
Delete from Jugadores LIMIT 1;
-- o
Delete from Jugadores Where id=4;

-- Incrementar los goles de un jugador en 5
UPDATE JugadoresGoles SET goles = goles +5 where id_jugador=1;

-- Listar el máximo goleador de cada equipo
Select e.nombre, j.nombre, max(goles) 
	from Jugadores j join Equipos e join JugadoresGoles jg
        on j.id_equipo=e.id and e.id=jg.Jugadores_id_equipo and j.id=jg.id_jugador
        group by Jugadores_id_equipo;


