
-- Quest�o 1 --
SELECT CodigoDoCliente, NomeDaEmpresa, Endereco FROM Clientes;

-- Quest�o 2 --
SELECT CodigoDoProduto, Desconto from Detalhes_do_Pedido;

-- Quest�o 3 --
SELECT Sobrenome, Nome, DataDeNascimento, DataDeContratacao from Funcionarios;

-- Quest�o 4 --
SELECT CodigoDoProduto FROM Detalhes_do_Pedido

-- Quest�o 5 --
SELECT CodigoDoCliente FROM Pedidos

-- Quest�o 6 -- 
SELECT CodigoDaCategoria, NomeDaCategoria, Descricao FROM Categorias

-- Quest�o 7 --
SELECT NomeDaEmpresa, NomeDoContato, Telefone FROM Fornecedores

-- Quest�o 8 -- 
SELECT CodigoDoProduto, NomeDoProduto, PrecoUnitario FROM Produtos

-- Quest�o 9 --
SELECT CodigoDaTransportadora, NomeDaEmpresa, Telefone FROM Transportadoras

-- Quest�o 10 --
SELECT CodigoDoCliente, DataDoPedido, DataDeEntrega, DataDeEnvio FROM Pedidos

-- Quest�o 11 --
SELECT NomeDoContato AS NomeDoCliente, Endereco, 'Cliente preferencial' AS TipoDeCliente
FROM Clientes;

-- Quest�o 12 --
SELECT NumeroDoPedido, 'Pedidos Realizados' AS StatusDoPedido FROM Pedidos;

-- Quest�o 13 --
SELECT CodigoDoProduto, 'Produto existente' AS StatusDoProduto FROM Produtos

-- Quest�o 14 --
SELECT Endereco, TelefoneResidencial, 'Pertence ao quadro' AS MembroDoQuadro , Ramal, 'Ativo' AS statusDoFuncionario FROM Funcionarios

-- Quest�o 15 --
SELECT NomeDaCategoria, Descricao, 'Defini��o' AS Detalhes FROM Categorias;

-- Quest�o 16 --
SELECT TOP 5 * FROM Pedidos;

-- Quest�o 17 --
SELECT TOP 15 * FROM Funcionarios;

-- Quest�o 18 --
SELECT TOP 3 NomeDaEmpresa FROM Fornecedores;

-- Quest�o 19 --
SELECT TOP 20 * FROM Produtos;

-- Quest�o 20 --
SELECT TOP 2 * from Categorias

-- Quest�o 21 --
SELECT TOP 25 PERCENT * FROM Produtos;

-- Quest�o 22 --
SELECT TOP 50 PERCENT * FROM Funcionarios;

-- Quest�o 23 --
SELECT TOP 10 PERCENT * FROM Pedidos;

-- Quest�o 24 -- 
SELECT TOP 17 PERCENT * FROM Fornecedores;

-- Quest�o 25 -- 
SELECT TOP 85 PERCENT * FROM Categorias;

-- Quest�o 26 --
SELECT Nome As 'Funcion�rio', Cargo AS 'Fun��o', Tratamento AS 'T�tulo' FROM Funcionarios

-- Quest�o 27 --
SELECT NumeroDoPedido AS 'C�digo do Pedido', CodigoDoProduto AS 'C�digo do Produto' FROM Detalhes_do_Pedido

-- Quest�o 28 --
SELECT NomeDaEmpresa AS 'Nome da Empresa', NomeDoContato AS 'Nome do Contato', CargoDoContato AS 'Cargo do Contato' FROM Fornecedores

-- Quest�o 29 --
SELECT Nome, TelefoneResidencial AS 'Fone', Observacoes AS 'Obs' FROM Funcionarios

-- Quest�o 30 --
SELECT NomeDaCategoria AS 'Categoria', Descricao AS 'Observa��o', 'Aprovado' AS Situacao FROM Categorias

-- Quest�o 31 --
SELECT DISTINCT Cidade FROM Funcionarios;

-- Quest�o 32 --
SELECT DISTINCT Regiao FROM Funcionarios;

-- Quest�o 33 --
SELECT DISTINCT Pais FROM Fornecedores;

-- Quest�o 34 --
SELECT DISTINCT CodigoDoCliente FROM Pedidos

-- Quest�o 35 --
SELECT DISTINCT CodigoDoProduto FROM Detalhes_do_Pedido

-- Quest�o 36 --
SELECT CodigoDoProduto, NomeDoProduto, PrecoUnitario, PrecoUnitario * 0.07 AS AcrescimoPercentual, PrecoUnitario + (PrecoUnitario * 0.7) AS Pre�oComAcrescimo FROM Produtos

-- Quest�o 37 --
SELECT NumeroDoPedido, PrecoUnit�rio, Desconto, PrecoUnit�rio * (1 - Desconto/ 100.0) AS [Pre�o final] FROM Detalhes_do_Pedido

-- Quest�o 38 --
SELECT NumeroDoPedido, PrecoUnit�rio * Quantidade AS [Pre�o Total], (PrecoUnit�rio * Quantidade) * (1 - Desconto / 100.0) AS [Pre�o Final] FROM Detalhes_do_Pedido

-- Quest�o 39 --
SELECT PrecoUnitario  * 1.25 AS [Pre�o com Acr�scimo de 25%], PrecoUnitario * 1.35 AS [Pre�o com Acr�scimo de 35%], PrecoUnitario * 1.45 AS [Pre�o com Acr�scimo de 45%] FROM Produtos

-- Quest�o 40 --
SELECT NumeroDoPedido, Frete, Frete * 1.05 AS [Frete com Acr�scimo de 5%], Frete * 1.10 AS [Frete com Acr�scimo de 10%]  FROM Pedidos

-- Quest�o 41 --
SELECT CodigoDoProduto, NomeDoProduto, NivelDeReposicao, NivelDeReposicao + 5 as [N�vel de Reposi��o com Acr�scimo de 5] FROM Produtos

-- Quest�o 42 --
SELECT CodigoDoProduto, PrecoUnitario * UnidadesEmEstoque AS [Total em Estoque]  FROM Produtos

-- Quest�o 43 --
SELECT NumeroDoPedido, CodigoDoProduto, PrecoUnit�rio, Quantidade, (PrecoUnit�rio * Quantidade) * 1.20 AS [Cheque p/ 30 dias],(PrecoUnit�rio * Quantidade) * 1.30 AS [Cheque p/ 60 dias], (PrecoUnit�rio * Quantidade) * 9.85 AS [� vista] FROM Detalhes_do_Pedido

-- Quest�o 44 --
SELECT CodigoDoProduto, NomeDoProduto, NivelDeReposicao, NivelDeReposicao + 5 AS [Nivel de resposi��o com Acrescimo de 5] FROM Produtos

-- Quest�o 45 --
SELECT NumeroDoPedido, CodigoDoCliente as [Cliente], CodigoDoFuncionario, Frete * 0.93 [Frete c/ desconto] FROM Pedidos

-- Quest�o 46 --
SELECT Nome, Sobrenome FROM Funcionarios ORDER BY Nome DESC

-- Quest�o 47 -- 
SELECT CodigoDoProduto, NomeDoProduto, PrecoUnitario FROM Produtos ORDER BY  NomeDoProduto ASC;

-- Quest�o 48 --
SELECT CodigoDoProduto as [C�d.], NomeDoProduto AS [Produto], PrecoUnitario AS [P. Unit�rio] FROM Produtos ORDER BY CodigoDoProduto DESC;

-- Quest�o 49 --
SELECT Pais, Regiao, CodigoDoFornecedor, NomeDaEmpresa, NomeDoContato FROM Fornecedores ORDER BY Pais ASC, Regiao DESC, NomeDaEmpresa ASC

-- Quest�o 50 --
SELECT CodigoDoFuncionario, Sobrenome, Nome FROM Funcionarios ORDER BY Pais ASC;