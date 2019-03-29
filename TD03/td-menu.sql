CREATE TABLE `client` (
    `id_client` int(15) NOT NULL AUTO_INCREMENT,
    `nom_client` varchar(50) NOT NULL,
    `prenom_client` varchar(50) NOT NULL,
    `mail_client` varchar(50) NOT NULL,
    `num_add_client` varchar(5) NOT NULL,
    `rue_add_client` varchar(50) NOT NULL,
    `ville_add_client` varchar(50) NOT NULL,
    `code_postal_client` int(5) NOT NULL,
    CONSTRAINT pk_client PRIMARY KEY (id_client)
);

CREATE TABLE `commande` (
  `id_commande` int(15) NOT NULL AUTO_INCREMENT,
  `date_commande` date NOT NULL,
  CONSTRAINT pk_commande PRIMARY KEY (id_commande)
);

CREATE TABLE `menu` (
  `id_menu` int(15) NOT NULL AUTO_INCREMENT,
  `nom_menu` varchar(60) NOT NULL,
  CONSTRAINT pk_menu PRIMARY KEY (id_menu)
);

CREATE TABLE `plat` (
  `id_plat` int(15) NOT NULL AUTO_INCREMENT,
  `nom_plat` varchar(60) NOT NULL,
  `type_plat` varchar(60) NOT NULL,
  `id_menu_plat` int(15) NOT NULL AUTO_INCREMENT,
  CONSTRAINT pk_plat PRIMARY KEY (id_plat),
  CONSTRAINT fk_menu_plat FOREIGN KEY (id_menu_plat)
  REFERENCES menu(id_menu)
);

CREATE TABLE `contenir` (
  `id_commande` int(15) NOT NULL AUTO_INCREMENT,
  `id_menu` int(15) NOT NULL AUTO_INCREMENT,
  CONSTRAINT pk_contenir PRIMARY KEY (id_commande,id_menu)
);

CREATE TABLE `vin` (
  `id_vin` int(15) NOT NULL AUTO_INCREMENT,
  `nom_vin` varchar(60) NOT NULL,
  CONSTRAINT pk_vin PRIMARY KEY (id_vin)
);

CREATE TABLE `aller_avec` (
  `id_vin` int(15) NOT NULL AUTO_INCREMENT,
  `id_plat` int(15) NOT NULL AUTO_INCREMENT,
  CONSTRAINT pk_aller_avec PRIMARY KEY (id_vin,id_plat)
);