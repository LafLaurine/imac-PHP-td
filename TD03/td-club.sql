CREATE TABLE `gage` (
  `id_gage` int(15) NOT NULL AUTO_INCREMENT,
  `nom_gage` varchar(60) NOT NULL,
  `date_gage` date,
  CONSTRAINT pk_gage PRIMARY KEY (id_gage)
);

CREATE TABLE `membre` (
    `id_membre` int(15) NOT NULL AUTO_INCREMENT,
    `id_gage_membre` int(15) NOT NULL,
    `nom_membre` varchar(50) NOT NULL,
    `prenom_membre` varchar(50) NOT NULL,
    `mail_membre` varchar(50) NOT NULL,
    `num_tel_membre` int(10) NOT NULL,
    `promo_membre` int(1) NOT NULL,
    `formation_membre` varchar(50) NOT NULL,
    CONSTRAINT pk_membre PRIMARY KEY (id_membre),
    CONSTRAINT fk_formation_membre FOREIGN KEY (formation_membre)
    REFERENCES formation(id_formation),
    CONSTRAINT fk_gage_membre FOREIGN KEY (id_gage_membre)
    REFERENCES gage(id_gage)
);

CREATE TABLE `formation` (
  `id_formation` int(15) NOT NULL AUTO_INCREMENT,
  `nom_formation` varchar(60) NOT NULL,
  CONSTRAINT pk_formation PRIMARY KEY (id_formation)
);

CREATE TABLE `parrain` (
  `id_membre` int(15) NOT NULL,
  `id_membre` int(15) NOT NULL,
  `date_gage` date,
  CONSTRAINT pk_parrain PRIMARY KEY (id_membre,id_membre)
)
