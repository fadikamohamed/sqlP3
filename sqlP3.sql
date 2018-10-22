-- Aller a la bdd webDevelopement --
USE `webDevelopment`;
-- Modfier la table languages pour lui ajouter une colonne versions --
ALTER TABLE `languages` ADD COLUMN `versions` VARCHAR(255);
-- Modfier la table frameworks pour lui ajouter une colonne versions --
ALTER TABLE `frameworks` ADD COLUMN `versions` INT;
-- Modfier la table languages pour renommer la colonne versions en version --
ALTER TABLE `languages` CHANGE `versions` `version` VARCHAR(255);
-- Modfier la table frameworks pour renomer la colonne name en framework --
ALTER TABLE `frameworks` CHANGE `name` `framework` VARCHAR(255);
-- Modfier la table frameworks pour changer le type de la colonne version en VARCHAR --
ALTER TABLE `frameworks` MODIFY `version` VARCHAR(10);


-- Aller a la bdd codex --
USE `codex`;
-- Modfier la table clients --
ALTER TABLE `clients`
-- Pour supprimer la colonnes secondPhoneNumber --
DROP `secondPhoneNumber`,
-- Modfier la table clients pour renommer la colonne firstPhoneNumber en phoneNumber et pour changer le type en VARCHAR --
CHANGE `firstPhoneNumber` `phoneNumber` varchar(255),
-- Modfier la table clients pour lui ajouter des colonnes zipCode et city --
ADD COLUMN (`zipCode` VARCHAR(255), `city` VARCHAR(255));
