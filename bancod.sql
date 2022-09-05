

CREATE TABLE Cliente (
    Nome VARCHAR,
    Sobrenome VARCHAR,
    E_mail VARCHAR,
    CPF INTEGER PRIMARY KEY,
    Rua VARCHAR,
    CEP NUMERIC
);

CREATE TABLE Destino (
    Rio_de_Janeiro VARCHAR,
    Sao_Paulo VARCHAR,
    Curitiba VARCHAR,
    Salvador VARCHAR,
    PRIMARY KEY (Rio_de_Janeiro, Sao_Paulo, Curitiba, Salvador)
);

CREATE TABLE venda (
    Destino VARCHAR,
    Quantidade NUMERIC,
    Forma_de_Pagemnto VARCHAR,
    data DATE
);

CREATE TABLE Compra (
    fk_Cliente_CPF INTEGER
);
 
ALTER TABLE Compra ADD CONSTRAINT FK_Compra_1
    FOREIGN KEY (fk_Cliente_CPF)
    REFERENCES Cliente (CPF)
    ON DELETE SET NULL;