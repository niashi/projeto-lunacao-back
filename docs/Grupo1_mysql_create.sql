CREATE TABLE `Produto` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255) NOT NULL,
	`Descricao` varchar(255) NOT NULL,
	`Quantidade` INT(5) NOT NULL,
	`Doado` BOOLEAN NOT NULL,
	`Categoria_id` INT(5) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Categoria` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`Consulta` varchar(50) NOT NULL,
	`Descartavel` BOOLEAN NOT NULL,
	`Reutilizavel` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuario` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255) NOT NULL,
	`Email` varchar(255) NOT NULL,
	`Senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Produto` ADD CONSTRAINT `Produto_fk0` FOREIGN KEY (`Doado`) REFERENCES `Usuario`(`id`);

ALTER TABLE `Produto` ADD CONSTRAINT `Produto_fk1` FOREIGN KEY (`Categoria_id`) REFERENCES `Categoria`(`id`);

