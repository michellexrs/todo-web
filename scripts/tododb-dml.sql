CREATE TABLE `persona` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `alias` varchar(25) NOT NULL,
 `nombre` varchar(25) NOT NULL,
 `apellido` varchar(25) DEFAULT NULL,
 `email` varchar(50) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1
tarea
CREATE TABLE `tarea` (
 `ID` int(11) NOT NULL AUTO_INCREMENT,
 `Descripcion` varchar(200) NOT NULL,
 `Fecha_Limite` date DEFAULT NULL,
 `Persona_ID` int(11) NOT NULL,
 `Realizada` tinyint(1) NOT NULL,
 `Fecha_Realizada` date NOT NULL,
 PRIMARY KEY (`ID`),
 KEY `Persona_ID` (`Persona_ID`),
 CONSTRAINT `tarea_ibfk_1` FOREIGN KEY (`Persona_ID`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
