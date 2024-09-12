-- Questão 1 --
SELECT SUM(Frete) AS total_frete_pago FROM pedidos;

-- Questão 2 -- 
SELECT COUNT(*) AS total_funcionarios_contratados FROM Funcionarios WHERE YEAR(DataDeContratacao) = 1992;

-- Questão 3 --
SELECT COUNT(*) AS fornecedores_alemanha FROM Fornecedores WHERE Pais = 'Alemanha';

-- Questão 4 --
SELECT SUM(Quantidade) AS total_vendido FROM Detalhes_do_Pedido;

-- Questão 5 --
SELECT MAX(Frete) as frete_mais_caro FROM Pedidos;

-- Questão 6 --
SELECT Min(Desconto) as menor_desconto FROM Detalhes_do_Pedido

-- Questão 7 --
SELECT COUNT(*) AS total_condimentos FROM Produtos WHERE CodigoDaCategoria = 2;

-- Questão 8 --
SELECT COUNT(*) AS categoria_com_c FROM Categorias WHERE NomeDaCategoria LIKE 'C%'; 

-- Questão 9 --
SELECT COUNT(*) AS abaixo_do_estoque FROM Produtos WHERE NivelDeReposicao < 0;

-- Questão 10 --
SELECT SUM(PrecoUnitario) AS valor_total FROM Produtos;