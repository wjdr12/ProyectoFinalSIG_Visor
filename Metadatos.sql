CREATE EXTENSION postgis;

CREATE SCHEMA spatial;

CREATE TABLE spatial.municipio
(
	id BIGSERIAL PRIMARY KEY,
	nombre VARCHAR(50),
	geom GEOMETRY (POINT, 4326)
);

CREATE TABLE spatial.Poblacion
(
	id BIGSERIAL PRIMARY KEY,
	id_municipio INTEGER,
	sexo VARCHAR (10),
	cantidadPoblacion INTEGER
);

CREATE VIEW spatial.vw_poblacionHombre AS
SELECT mun.nombre as NombreMunicipio, pob.cantidadpoblacion as PoblacionHombre , pob.sexo as sexo,  mun.geom "Ubicacion" 
FROM spatial.municipio mun
INNER JOIN spatial.poblacion pob
ON pob.sexo = 'Masculino' AND mun.id = pob.id_municipio


CREATE VIEW spatial.vw_poblacionMujer AS
SELECT mun.nombre as NombreMunicipio, pob.cantidadpoblacion as PoblacionMujer , pob.sexo as sexo,  mun.geom "Ubicacion" 
FROM spatial.municipio mun
INNER JOIN spatial.poblacion pob
ON pob.sexo = 'Femenino' AND mun.id = pob.id_municipio





INSERT INTO spatial.municipio (nombre, geom) VALUES('Managua', ST_GeomFromText('POINT(-86.2752914428711 12.146410177921704)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES('Tipitapa', ST_GeomFromText('POINT(-86.09676361083984 12.196163681691145)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES('Ciudad Sandino', ST_GeomFromText('POINT(-86.35683059692383 12.164533949445422)',4326);
INSERT INTO spatial.municipio (nombre, geom) VALUES('Mateare', ST_GeomFromText('POINT(-86.4288854598999 12.23420664812429)',4326);


INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(1, 'Masculino', 850645);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(2, 'Masculino', 15505);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(3, 'Masculino', 5050);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(4, 'Masculino', 14250);



INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(1, 'Femenino', 705654);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(2, 'Femenino', 20545);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(3, 'Femenino', 9012);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(4, 'Femenino', 3217);



INSERT INTO spatial.municipio (nombre, geom) VALUES ('Nindiri', ST_GeomFromText('POINT(-86.11873626708984 12.00355854036347)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('La Concepcion', ST_GeomFromText('POINT(-86.18911743164062 11.937058804323785)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Masatepe', ST_GeomFromText('POINT(-86.14654541015625 11.914384705073736)',4326));



INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(5, 'Masculino', 8023);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(6, 'Masculino', 17052);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(7, 'Masculino', 20510);


INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(5, 'Femenino', 8694);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(6, 'Femenino', 5061);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(7, 'Femenino', 10654);

INSERT INTO spatial.municipio (nombre, geom) VALUES 
('Diriamba', ST_GeomFromText('POINT(-86.23855590820311 11.858951164954124)',4326));
INSERT INTO spatial.municipio (nombre, geom) 
VALUES ('Jinotepe', ST_GeomFromText('POINT(-86.19770050048828 11.848199112116948)',4326));
INSERT INTO spatial.municipio (nombre, geom) 
VALUES ('San Marcos', ST_GeomFromText('POINT(-86.20182037353516 11.908337958689737)',4326));
INSERT INTO spatial.municipio (nombre, geom) 
VALUES ('Dolores', ST_GeomFromText('POINT(-86.21555328369139 11.857607181511689)',4326));



INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(8, 'Masculino', 21078);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(9, 'Masculino', 14321);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(10, 'Masculino', 19804);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(11, 'Masculino', 18023);



INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(8, 'Femenino', 15947);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(9, 'Femenino', 26400);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(10, 'Femenino', 20144);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(11, 'Femenino', 35047);



INSERT INTO spatial.municipio (nombre, geom) VALUES ('Rivas', ST_GeomFromText('POINT(-85.83000183105469 11.44166625479562)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Tola', ST_GeomFromText('POINT(-85.93917846679688 11.439983749989205)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('San Juan del Sur', ST_GeomFromText('POINT(-85.87098598480225 11.253963599335336)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('San Jorge', ST_GeomFromText('POINT(-85.80133438110352 11.455294175072098)',4326));

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(12, 'Masculino', 18952);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(13, 'Masculino', 5241);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(14, 'Masculino', 62483);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(15, 'Masculino', 28920);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(12, 'Femenino', 18403);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(13, 'Femenino', 5320);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(14, 'Femenino', 34064);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(15, 'Femenino', 19503);



INSERT INTO spatial.municipio (nombre, geom) VALUES ('Camoapa', ST_GeomFromText('POINT(-85.50521850585938 12.385611010840098)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('San Lorenzo', ST_GeomFromText('POINT(-85.6549072265625 12.38158699196916)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('San José de los Remates', ST_GeomFromText('POINT(-85.75653076171875 12.59477402876256)',4326));

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(16, 'Masculino', 41260);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(17, 'Masculino', 14960);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(18, 'Masculino', 27506);


INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(16, 'Femenino', 35051);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(17, 'Femenino', 21587);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(18, 'Femenino', 16094);



INSERT INTO spatial.municipio (nombre, geom) VALUES ('Siuna', ST_GeomFromText('POINT(-84.78149414062499 13.73671707957242)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Puerto Cabezas', ST_GeomFromText('POINT(-83.42468261718749 14.022020463599421)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Waslala', ST_GeomFromText('POINT(-85.37166595458984 13.33717737796851)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Waspan', ST_GeomFromText('POINT(-83.97236824035645 14.739607738875254)',4326));


INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(19, 'Masculino', 24809);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(20, 'Masculino', 8215);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(21, 'Masculino', 5694);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(22, 'Masculino', 9507);


INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(19, 'Femenino', 48723);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(20, 'Femenino', 17096);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(21, 'Femenino', 25031);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES
(22, 'Femenino', 28456);
													
													
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Altagracia', ST_GeomFromText('POINT(-85.57877540588379 11.565471064541912)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Belén', ST_GeomFromText('POINT(-85.88845252990723 11.501388686588173)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Bonanza', ST_GeomFromText('POINT(-84.62116241455078 14.02660044188372)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Buenos Aires', ST_GeomFromText('POINT(-85.53774833679199 12.49926383183115)',4326));

INSERT INTO spatial.municipio (nombre, geom) VALUES ('Cárdenas', ST_GeomFromText('POINT(-85.51002502441406 11.19700999220642)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Catarina', ST_GeomFromText('POINT(-86.07419013977051 11.9099336409481)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Ciudad Darío', ST_GeomFromText('POINT(-86.12431526184082 12.731358740861854)',4326));

INSERT INTO spatial.municipio (nombre, geom) VALUES ('El Rosario', ST_GeomFromText('POINT(-86.61715507507324 12.117124255045868)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('El Tuma-La Dalia', ST_GeomFromText('POINT(-85.74708938598633 13.061335544330676)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('La Conquista', ST_GeomFromText('POINT(-85.67215919494629 12.76484471250192)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Moyogalpa', ST_GeomFromText('POINT(-85.69808006286621 11.539738953884953)',4326));

INSERT INTO spatial.municipio (nombre, geom) VALUES ('Mulukukú', ST_GeomFromText('POINT(-84.95658874511719 13.175938366822596)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Nandasmo', ST_GeomFromText('POINT(-86.12045288085938 11.924714251965652)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Niquinohomo', ST_GeomFromText('POINT(-86.09487533569335 11.903886795492978)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Potosí', ST_GeomFromText('POINT(-85.85635185241699 11.493230170289909)',4326));

INSERT INTO spatial.municipio (nombre, geom) VALUES ('Prinzapolka', ST_GeomFromText('POINT(-83.56535911560059 13.406235045513435)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Rosita', ST_GeomFromText('POINT(-84.39937591552733 13.9231539710842431)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('San Francisco Libre', ST_GeomFromText('POINT(-86.30078315734863 12.50437536150371)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('San Juan de Oriente', ST_GeomFromText('POINT( -86.07436180114746 11.904474689150518)',4326));

INSERT INTO spatial.municipio (nombre, geom) VALUES ('Santa Lucía', ST_GeomFromText('POINT(-86.35228157043457 11.745865481924202)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Santa Teresa', ST_GeomFromText('POINT(-86.1631965637207 11.80325431319368)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Teustepe', ST_GeomFromText('POINT(-85.79978942871094 12.419645019382324)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Ticuantepe', ST_GeomFromText('POINT(-86.20834350585938 12.023622792618958)',4326));

INSERT INTO spatial.municipio (nombre, geom) VALUES ('Tisma', ST_GeomFromText('POINT(-86.01814270019531 12.081960119698053)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Villa El Carmen', ST_GeomFromText('POINT(-86.51081085205078 11.97988248047344)',4326));													

INSERT INTO spatial.municipio (nombre, geom) VALUES ('San Rafael del Sur', ST_GeomFromText('POINT(-86.43879890441895 11.84626705774653)',4326));
INSERT INTO spatial.municipio (nombre, geom) VALUES ('Esquipulas', ST_GeomFromText('POINT(-85.78760147094727 12.663787343371284)',4326));
													
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (23, 'Masculino', 14832);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (23, 'Femenino', 16002);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (24, 'Masculino', 5345);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (24, 'Femenino', 14035);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (25, 'Masculino', 49192);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (25, 'Femenino', 39392);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (26, 'Masculino', 6932);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (26, 'Femenino', 19023);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (27, 'Masculino', 14394);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (27, 'Femenino', 17923);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (28, 'Masculino', 4324);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (28, 'Femenino', 7392);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (29, 'Masculino', 38921);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (29, 'Femenino', 68038);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (30, 'Masculino', 13923);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (30, 'Femenino', 6843);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (31, 'Masculino', 17321);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (31, 'Femenino', 45932);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (32, 'Masculino', 18932);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (32, 'Femenino', 17235);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (33, 'Masculino', 28573);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (33, 'Femenino', 13826);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (34, 'Masculino', 6932);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (34, 'Femenino', 18293);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (35, 'Masculino', 38921);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (35, 'Femenino', 68038);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (36, 'Masculino', 2348);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (36, 'Femenino', 45365);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (37, 'Masculino', 18273);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (37, 'Femenino', 17382);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (38, 'Masculino', 4537);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (38, 'Femenino', 6749);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (39, 'Masculino', 8754);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (39, 'Femenino', 12563);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (40, 'Masculino', 10948);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (40, 'Femenino', 18362);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (41, 'Masculino', 9832);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (41, 'Femenino', 8563);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (42, 'Masculino', 18573);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (42, 'Femenino', 19372);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (43, 'Masculino', 40282);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (43, 'Femenino', 22483);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (44, 'Masculino', 15443);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (44, 'Femenino', 5674);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (45, 'Masculino', 48754);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (45, 'Femenino', 5563);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (46, 'Masculino', 3484);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (46, 'Femenino', 13554);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (47, 'Masculino', 15724);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (47, 'Femenino', 54383);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (48, 'Masculino', 13573);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (48, 'Femenino', 21324);

INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (49, 'Masculino', 12473);
INSERT INTO spatial.poblacion (id_municipio, sexo, cantidadpoblacion) VALUES (49, 'Femenino', 25373);													
													
													
													