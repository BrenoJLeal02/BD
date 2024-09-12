-- Quest�o 1 --
SELECT SUM(Frete) AS total_frete_pago FROM pedidos;

-- Quest�o 2 -- 
SELECT COUNT(*) AS total_funcionarios_contratados FROM Funcionarios WHERE YEAR(DataDeContratacao) = 1992;

-- Quest�o 3 --
SELECT COUNT(*) AS fornecedores_alemanha FROM Fornecedores WHERE Pais = 'Alemanha';

-- Quest�o 4 --
SELECT SUM(Quantidade) AS total_vendido FROM Detalhes_do_Pedido;

-- Quest�o 5 --
SELECT MAX(Frete) as frete_mais_caro FROM Pedidos;

-- Quest�o 6 --
SELECT Min(Desconto) as menor_desconto FROM Detalhes_do_Pedido

-- Quest�o 7 --
SELECT COUNT(*) AS total_condimentos FROM Produtos WHERE CodigoDaCategoria = 2;

-- Quest�o 8 --
SELECT COUNT(*) AS categoria_com_c FROM Categorias WHERE NomeDaCategoria LIKE 'C%'; 

-- Quest�o 9 --
SELECT COUNT(*) AS abaixo_do_estoque FROM Produtos WHERE NivelDeReposicao < 0;

-- Quest�o 10 --
SELECT SUM(PrecoUnitario) AS valor_total FROM Produtos;