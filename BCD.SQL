```JSON
CREATE DATABASE empresaBCD;

USE empresaBCD;

CREATE TABLE clientes(
	id_cliente INT AUTO_INCREMENT  PRIMARY KEY 
    nome_cliente VARCHAR (100) NOT NULL,
    email VARCHAR (100) NOT NULL,
    telefone VARCHAR (20) NOT NULL
    dt_entrada DATE NOT NULL
);
CREATE TABLE produto(
    id_produto INT AUTO_INCREMENT PRIMARY KEY
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL (10) NOT NULL,
    dt_entrada DATE NOT NULL
);
CREATE TABLE compra(
    id_compra INT AUTO_INCREMENT PRIMARY KEY
    id_cliente INT,
    id_produto INT,
    quantidade INT NOT NULL,
    
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
)
INSERT INTO cliente (nome, email, telefone, dt_entrada)
VALUES ("Maria Silva", "maria@gmail.com", "19999999", "2000-10-10");
INSERT INTO cliente (nome, email, telefone, dt_entrada);
VALUES ("Fulano de tall","fulanix@gmail.com", "198989898", "1999-06-10");
SELECT * FROM cliente;

INSERT INTO produto (nome, preco, dt_entrada)
VALUES ("Notebook", 2500,00, "2026-10-11");
INSERT INTO produto (nome, preco, dt_entrada)
VALUES ("celular" 1500,00, "2025-10-12");
SELECT * FROM produto;

INSERT INTO compra (id_cliente, id_produto, quantidade)
VALUES (1, 1, 20);
INSERT INTO compra (id_cliente, id_produto, quantidade)
VALUES (2, 2, 30);
SELECT * FROM compra;
```

