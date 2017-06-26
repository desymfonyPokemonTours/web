
SET foreign_key_checks = 0;

DROP TABLE IF EXISTS `pokemon`;
DROP TABLE IF EXISTS `type`;
DROP TABLE IF EXISTS `pokemon_type`;
DROP TABLE IF EXISTS `route`;
DROP TABLE IF EXISTS `route_pokemon`;
DROP TABLE IF EXISTS `city`;
DROP TABLE IF EXISTS `city_route`;

CREATE TABLE `pokemon` (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  generation TINYINT UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (id)
);

CREATE TABLE `type` (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE `pokemon_type` (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  pokemon_id INT(11) UNSIGNED NOT NULL,
  type_id INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (pokemon_id) REFERENCES pokemon(id),
  FOREIGN KEY (type_id) REFERENCES type(id),
  UNIQUE (pokemon_id, type_id)
);

CREATE TABLE `route` (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id)
);

CREATE TABLE `route_pokemon` (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  route_id INT(11) UNSIGNED NOT NULL,
  pokemon_id INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (route_id) REFERENCES route(id),
  FOREIGN KEY (pokemon_id) REFERENCES pokemon(id),
  UNIQUE (route_id, pokemon_id)
);

CREATE TABLE `city` (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE `city_route` (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  city_id INT(11) UNSIGNED NOT NULL,
  route_id INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (city_id) REFERENCES city(id),
  FOREIGN KEY (route_id) REFERENCES route(id),
  UNIQUE (city_id, route_id)
);


INSERT INTO `pokemon`(id, name) VALUES (1, 'Bulbasaur');
INSERT INTO `pokemon`(id, name) VALUES (2, 'Ivysaur');
INSERT INTO `pokemon`(id, name) VALUES (3, 'Venusaur');
INSERT INTO `pokemon`(id, name) VALUES (4, 'Charmander');
INSERT INTO `pokemon`(id, name) VALUES (5, 'Charmeleon');
INSERT INTO `pokemon`(id, name) VALUES (6, 'Charizard');
INSERT INTO `pokemon`(id, name) VALUES (7, 'Squirtle');
INSERT INTO `pokemon`(id, name) VALUES (8, 'Wartortle');
INSERT INTO `pokemon`(id, name) VALUES (9, 'Blastoise');
INSERT INTO `pokemon`(id, name) VALUES (16, 'Pidgey');
INSERT INTO `pokemon`(id, name) VALUES (17, 'Pidgeotto');
INSERT INTO `pokemon`(id, name) VALUES (18, 'Pidgeot');
INSERT INTO `pokemon`(id, name) VALUES (19, 'Rattata');
INSERT INTO `pokemon`(id, name) VALUES (20, 'Raticate');

INSERT INTO `type`(id, name) VALUES (1, 'Normal');
INSERT INTO `type`(id, name) VALUES (2, 'Water');
INSERT INTO `type`(id, name) VALUES (3, 'Electric');
INSERT INTO `type`(id, name) VALUES (4, 'Fighting');
INSERT INTO `type`(id, name) VALUES (5, 'Ground');
INSERT INTO `type`(id, name) VALUES (6, 'Psychic');
INSERT INTO `type`(id, name) VALUES (7, 'Rock');
INSERT INTO `type`(id, name) VALUES (8, 'Dark');
INSERT INTO `type`(id, name) VALUES (9, 'Steel');
INSERT INTO `type`(id, name) VALUES (10, 'Fire');
INSERT INTO `type`(id, name) VALUES (11, 'Grass');
INSERT INTO `type`(id, name) VALUES (12, 'Ice');
INSERT INTO `type`(id, name) VALUES (13, 'Poison');
INSERT INTO `type`(id, name) VALUES (14, 'Flying');
INSERT INTO `type`(id, name) VALUES (15, 'Bug');
INSERT INTO `type`(id, name) VALUES (16, 'Ghost');
INSERT INTO `type`(id, name) VALUES (17, 'Dragon');
INSERT INTO `type`(id, name) VALUES (18, 'Fairy');

INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (1, 11);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (1, 13);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (2, 11);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (2, 13);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (3, 11);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (3, 13);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (4, 10);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (5, 10);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (6, 10);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (6, 14);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (7, 2);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (8, 2);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (9, 2);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (16, 1);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (16, 14);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (17, 1);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (17, 14);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (18, 1);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (18, 14);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (19, 1);
INSERT INTO `pokemon_type`(pokemon_id, type_id) VALUES (20, 1);

INSERT INTO `route`(id) VALUES (1);

INSERT INTO `route_pokemon`(route_id, pokemon_id) VALUES (1,6);
INSERT INTO `route_pokemon`(route_id, pokemon_id) VALUES (1,19);

INSERT INTO `city`(id, name) VALUES (1, 'Nuvema Town');
INSERT INTO `city`(id, name) VALUES (2, 'Accumula Town');

INSERT INTO `city_route`(city_id, route_id) VALUES (1,1);
INSERT INTO `city_route`(city_id, route_id) VALUES (1,2);

SET foreign_key_checks = 1;
