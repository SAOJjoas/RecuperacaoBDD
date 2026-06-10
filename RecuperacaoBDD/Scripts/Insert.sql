INSERT INTO Departamento (nome_dep, localizacao)
VALUES
('Produção', 'Bloco B'),
('Engenharia', 'Bloco C'),
('Qualidade', 'Bloco A'),
('Logistica', 'Bloco D'),
('Tecnologia da Informação', 'Bloco E');
INSERT INTO Colaborador (cpf, nome, cargo,email_corp, data_admissao, id_dep)
VALUES
(1111111111,'Wagner', 'cargo', 'wg@techfac.com', '2026-02-14', 1),
(22222222222,'Welintom', 'cargo1', 'wl@techfac.com', '2026-02-14', 2),
(33333333333,'Wanda', 'cargo2', 'wd@techfac.com', '2026-04-20', 3),
(44444444444,'Wilto', 'cargo3', 'wt@techfac.com', '2026-06-12', 4),
(55555555555,'Waldisney', 'cargo4', 'wn@techfac.com', '2026-06-12', 5);

INSERT INTO Categorias (nome)
VALUES
('Computação'),
('Rede'),
('Impressão'),
('Mobilidade'),
('Servidores');

INSERT INTO Fornecedor (cnpj, cidade, telefone, razao_social)
VALUES
(11111111111111, 'Jaraguá do Sul', '47993177490', 'Eletronicos UAU'),
(22222222222222, 'Jaraguá do Sul', '47991385301', 'Rainbow Cloud'),
(33333333333333, 'Jaraguá do Sul', '47994000736', 'Eletronicos Jaraguá'),
(44444444444444, 'Guaramirim', '47996767012', 'Tap Industrial');

INSERT INTO Equipamentos (modelo, descricao, cnpj, data_aquisicao, status_equip,id_categoria)
VALUES
('computadores', 'Computadores Basicos', 11111111111111, '2026-05-10', 'Bom', 1),
('notebooks', 'Notebokes Basicos', 11111111111111, '2026-05-10', 'Bom', 1),
('servidores', 'Servidores Basicos', 22222222222222, '2026-07-10', 'Bom', 2),
('impressoras', 'Impressoras Basicos', 33333333333333, '2026-06-10', 'Bom', 3),
('switches', 'Switches Basicos', 33333333333333, '2026-05-10', 'Bom', 1),
('tablets industriais', 'Tablets Industriais Basicos', 44444444444444, '2026-08-10', 'Bom', 4),
('coletores de dados', 'Controles de Dados Basicos', 22222222222222, '2026-05-10', 'Bom', 3);

INSERT INTO Chamado (data_abertura, descricao_problema, prioridade, status_c, data_encerramento, cpf, patrimonio)
VALUES
('2026-06-01', 'Processador queimado', 'ALTA', 'Fechado', '2026-06-09', 1111111111, 1);

INSERT INTO Manutencao (custo, tempo_gasto, descricao_serv, data_manutencao, num_chamado)
VALUES
(800.99, 2.5, 'Trocar processador', '2026-06-09', 1);