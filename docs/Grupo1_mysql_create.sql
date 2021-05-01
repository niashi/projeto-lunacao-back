CREATE TABLE `tb_produto` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`descricao` varchar(255) NOT NULL,
	`quantidade` INT(5) NOT NULL,
	`doado` BOOLEAN NOT NULL,
	`categoria_id` INT(5) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_usuario` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_categoria` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`descricao` varchar(500) NOT NULL,
	`reut_descart` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_produto` ADD CONSTRAINT `tb_produto_fk0` FOREIGN KEY (`doado`) REFERENCES `tb_usuario`(`id`);

ALTER TABLE `tb_produto` ADD CONSTRAINT `tb_produto_fk1` FOREIGN KEY (`categoria_id`) REFERENCES `tb_categoria`(`id`);

