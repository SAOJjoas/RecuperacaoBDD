CREATE TABLE Departamento(
    id_dep INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_dep TEXT(100) NOT NULL,
    localizacao TEXT(100) NOT NULL
);
CREATE TABLE Colaborador(
    cpf CHAR(11) PRIMARY KEY NOT NULL UNIQUE,
    nome TEXT(100) NOT NULL,
    cargo TEXT(100) NOT NULL,
    email_corp TEXT(200) NOT NULL,
    data_admissao DATE NOT NULL,
    id_dep INT NOT NULL,
    FOREIGN KEY (id_dep) REFERENCES Departamento (id_dep)
);
CREATE TABLE Categorias(
    id_categoria INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome TEXT(100) NOT NULL
);
CREATE TABLE Fornecedor(
    cnpj CHAR(14) PRIMARY KEY NOT NULL UNIQUE,
    cidade TEXT(100) NOT NULL,
    telefone CHAR(11) NOT NULL,
    razao_social TEXT(100) NOT NULL
);
CREATE TABLE Equipamentos(
    patrimonio INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
    descricao TEXT(100) NOT NULL,
    cnpj CHAR(14) NOT NULL,
    modelo TEXT(100) NOT NULL,
    data_aquisicao DATE NOT NULL,
    status_equip TEXT(100) NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categorias (id_categoria),
    FOREIGN KEY (cnpj) REFERENCES Fornecedor (cnpj)
);
CREATE TABLE Chamado(
    num_chamado INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
    data_abertura DATE NOT NULL, 
    descricao_problema TEXT(100) NOT NULL,
    prioridade TEXT(100) NOT NULL,
    status_c TEXT(100) NOT NULL,
    data_encerramento DATE NOT NULL,
    cpf CHAR(11) NOT NULL,
    patrimonio INT NOT NULL,
    FOREIGN KEY (cpf) REFERENCES Colaborador (cpf),
    FOREIGN KEY (patrimonio) REFERENCES Equipamentos (patrimonio)
);
CREATE TABLE Manutencao(
    id_manutencao INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    custo DOUBLE NOT NULL,
    tempo_gasto DOUBLE NOT NULL,
    descricao_serv TEXT(100) NOT NULL,
    data_manutencao DATE NOT NULL,
    num_chamado INT NOT NULL,
    FOREIGN KEY (num_chamado) REFERENCES Chamado (num_chamado)
);