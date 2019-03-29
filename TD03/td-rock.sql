CREATE TABLE `label` (
    `id_label` int(15) NOT NULL AUTO_INCREMENT,
    `nom_label` varchar(50) NOT NULL,
    CONSTRAINT pk_label PRIMARY KEY (id_label)
);

CREATE TABLE `disque` (
  `id_disque` int(15) NOT NULL AUTO_INCREMENT,
  `titre_disque` varchar(60) NOT NULL,
  `annee_disque` int(4) NOT NULL,
  CONSTRAINT pk_disque PRIMARY KEY (id_disque)
);

CREATE TABLE `artiste` (
  `id_artiste` int(15) NOT NULL AUTO_INCREMENT,
  `nom_artiste` varchar(60) NOT NULL,
  CONSTRAINT pk_artiste PRIMARY KEY (id_artiste)
);

