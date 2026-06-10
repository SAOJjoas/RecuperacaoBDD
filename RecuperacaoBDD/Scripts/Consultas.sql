SELECT id_dep, nome_dep, localizacao
FROM Departamento;

SELECT nome, cargo, email_corp
FROM Colaborador;

SELECT patrimonio, descricao, cnpj
FROM Equipamentos;

SELECT descricao, status_equip
FROM Equipamentos;

SELECT cpf, nome, cargo, email_corp, data_admissao, id_dep
FROM Colaborador
WHERE data_admissao > '2026-03-01';

SELECT modelo, descricao, cnpj, data_aquisicao, status_equip,id_categoria
FROM Equipamentos
WHERE data_aquisicao > '2026-06-01';

SELECT cnpj, razao_social, telefone, cidade
FROM Fornecedor
WHERE cidade = 'Jaraguá do Sul';

SELECT modelo, descricao, cnpj, data_aquisicao, status_equip,id_categoria
FROM Equipamentos
WHERE id_categoria = 3;

SELECT cpf, nome, cargo, email_corp, data_admissao, id_dep
FROM Colaborador
WHERE cargo = 'cargo1';

SELECT cnpj, razao_social, telefone, cidade
FROM Fornecedor
WHERE telefone;

SELECT data_abertura, descricao_problema, prioridade, status_c, data_encerramento, cpf, patrimonio
FROM Chamado
WHERE status_c = 'FECHADO';

SELECT data_abertura, descricao_problema, prioridade, status_c, data_encerramento, cpf, patrimonio
FROM Chamado
WHERE prioridade = 'ALTA';

