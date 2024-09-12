
-- Questão 1 --
SELECT CodigoDoCliente, NomeDaEmpresa, Endereco FROM Clientes;

-- Questão 2 --
SELECT CodigoDoProduto, Desconto from Detalhes_do_Pedido;

-- Questão 3 --
SELECT Sobrenome, Nome, DataDeNascimento, DataDeContratacao from Funcionarios;

-- Questão 4 --
SELECT CodigoDoProduto FROM Detalhes_do_Pedido

-- Questão 5 --
SELECT CodigoDoCliente FROM Pedidos

-- Questão 6 -- 
SELECT CodigoDaCategoria, NomeDaCategoria, Descricao FROM Categorias

-- Questão 7 --
SELECT NomeDaEmpresa, NomeDoContato, Telefone FROM Fornecedores

-- Questão 8 -- 
SELECT CodigoDoProduto, NomeDoProduto, PrecoUnitario FROM Produtos

-- Questão 9 --
SELECT CodigoDaTransportadora, NomeDaEmpresa, Telefone FROM Transportadoras

-- Questão 10 --
SELECT CodigoDoCliente, DataDoPedido, DataDeEntrega, DataDeEnvio FROM Pedidos

-- Questão 11 --
SELECT NomeDoContato AS NomeDoCliente, Endereco, 'Cliente preferencial' AS TipoDeCliente
FROM Clientes;

-- Questão 12 --
SELECT NumeroDoPedido, 'Pedidos Realizados' AS StatusDoPedido FROM Pedidos;

-- Questão 13 --
SELECT CodigoDoProduto, 'Produto existente' AS StatusDoProduto FROM Produtos

-- Questão 14 --
SELECT Endereco, TelefoneResidencial, 'Pertence ao quadro' AS MembroDoQuadro , Ramal, 'Ativo' AS statusDoFuncionario FROM Funcionarios

-- Questão 15 --
SELECT NomeDaCategoria, Descricao, 'Definição' AS Detalhes FROM Categorias;

-- Questão 16 --
SELECT TOP 5 * FROM Pedidos;

-- Questão 17 --
SELECT TOP 15 * FROM Funcionarios;

-- Questão 18 --
SELECT TOP 3 NomeDaEmpresa FROM Fornecedores;

-- Questão 19 --
SELECT TOP 20 * FROM Produtos;

-- Questão 20 --
SELECT TOP 2 * from Categorias

-- Questão 21 --
SELECT TOP 25 PERCENT * FROM Produtos;

-- Questão 22 --
SELECT TOP 50 PERCENT * FROM Funcionarios;

-- Questão 23 --
SELECT TOP 10 PERCENT * FROM Pedidos;

-- Questão 24 -- 
SELECT TOP 17 PERCENT * FROM Fornecedores;

-- Questão 25 -- 
SELECT TOP 85 PERCENT * FROM Categorias;

-- Questão 26 --
SELECT Nome As 'Funcionário', Cargo AS 'Função', Tratamento AS 'Título' FROM Funcionarios

-- Questão 27 --
SELECT NumeroDoPedido AS 'Código do Pedido', CodigoDoProduto AS 'Código do Produto' FROM Detalhes_do_Pedido

-- Questão 28 --
SELECT NomeDaEmpresa AS 'Nome da Empresa', NomeDoContato AS 'Nome do Contato', CargoDoContato AS 'Cargo do Contato' FROM Fornecedores

-- Questão 29 --
SELECT Nome, TelefoneResidencial AS 'Fone', Observacoes AS 'Obs' FROM Funcionarios

-- Questão 30 --
SELECT NomeDaCategoria AS 'Categoria', Descricao AS 'Observação', 'Aprovado' AS Situacao FROM Categorias

-- Questão 31 --
SELECT DISTINCT Cidade FROM Funcionarios;

-- Questão 32 --
SELECT DISTINCT Regiao FROM Funcionarios;

-- Questão 33 --
SELECT DISTINCT Pais FROM Fornecedores;

-- Questão 34 --
SELECT DISTINCT CodigoDoCliente FROM Pedidos

-- Questão 35 --
SELECT DISTINCT CodigoDoProduto FROM Detalhes_do_Pedido

-- Questão 36 --
SELECT CodigoDoProduto, NomeDoProduto, PrecoUnitario, PrecoUnitario * 0.07 AS AcrescimoPercentual, PrecoUnitario + (PrecoUnitario * 0.7) AS PreçoComAcrescimo FROM Produtos

-- Questão 37 --
SELECT NumeroDoPedido, PrecoUnitário, Desconto, PrecoUnitário * (1 - Desconto/ 100.0) AS [Preço final] FROM Detalhes_do_Pedido

-- Questão 38 --
SELECT NumeroDoPedido, PrecoUnitário * Quantidade AS [Preço Total], (PrecoUnitário * Quantidade) * (1 - Desconto / 100.0) AS [Preço Final] FROM Detalhes_do_Pedido

-- Questão 39 --
SELECT PrecoUnitario  * 1.25 AS [Preço com Acréscimo de 25%], PrecoUnitario * 1.35 AS [Preço com Acréscimo de 35%], PrecoUnitario * 1.45 AS [Preço com Acréscimo de 45%] FROM Produtos

-- Questão 40 --
SELECT NumeroDoPedido, Frete, Frete * 1.05 AS [Frete com Acréscimo de 5%], Frete * 1.10 AS [Frete com Acréscimo de 10%]  FROM Pedidos

-- Questão 41 --
SELECT CodigoDoProduto, NomeDoProduto, NivelDeReposicao, NivelDeReposicao + 5 as [Nível de Reposição com Acréscimo de 5] FROM Produtos

-- Questão 42 --
SELECT CodigoDoProduto, PrecoUnitario * UnidadesEmEstoque AS [Total em Estoque]  FROM Produtos

-- Questão 43 --
SELECT NumeroDoPedido, CodigoDoProduto, PrecoUnitário, Quantidade, (PrecoUnitário * Quantidade) * 1.20 AS [Cheque p/ 30 dias],(PrecoUnitário * Quantidade) * 1.30 AS [Cheque p/ 60 dias], (PrecoUnitário * Quantidade) * 9.85 AS [À vista] FROM Detalhes_do_Pedido

-- Questão 44 --
SELECT CodigoDoProduto, NomeDoProduto, NivelDeReposicao, NivelDeReposicao + 5 AS [Nivel de resposição com Acrescimo de 5] FROM Produtos

-- Questão 45 --
SELECT NumeroDoPedido, CodigoDoCliente as [Cliente], CodigoDoFuncionario, Frete * 0.93 [Frete c/ desconto] FROM Pedidos

-- Questão 46 --
SELECT Nome, Sobrenome FROM Funcionarios ORDER BY Nome DESC

-- Questão 47 -- 
SELECT CodigoDoProduto, NomeDoProduto, PrecoUnitario FROM Produtos ORDER BY  NomeDoProduto ASC;

-- Questão 48 --
SELECT CodigoDoProduto as [Cód.], NomeDoProduto AS [Produto], PrecoUnitario AS [P. Unitário] FROM Produtos ORDER BY CodigoDoProduto DESC;

-- Questão 49 --
SELECT Pais, Regiao, CodigoDoFornecedor, NomeDaEmpresa, NomeDoContato FROM Fornecedores ORDER BY Pais ASC, Regiao DESC, NomeDaEmpresa ASC

-- Questão 50 --
SELECT CodigoDoFuncionario, Sobrenome, Nome FROM Funcionarios ORDER BY Pais ASC;