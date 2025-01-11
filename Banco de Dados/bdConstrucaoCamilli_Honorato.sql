--
-- Banco de dados: BD_Construcao_Camilli_Honorato_Cedup_2024
--

-- --------------------------------------------------------

--
-- Estrutura para tabela carro
--

CREATE TABLE carro (
  cod int(4) NOT NULL,
  marca varchar(30) DEFAULT NULL,
  modelo varchar(50) DEFAULT NULL,
  estado varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela cliente
--

CREATE TABLE cliente (
  cpf varchar(11) NOT NULL,
  nome2 varchar(50) DEFAULT NULL,
  rua varchar(50) DEFAULT NULL,
  bairro varchar(50) DEFAULT NULL,
  cidade varchar(50) DEFAULT NULL,
  cep varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela equipamento
--

CREATE TABLE equipamento (
  cod int(4) NOT NULL,
  descricao varchar(50) DEFAULT NULL,
  dataCompra date DEFAULT NULL,
  valor varchar(50) DEFAULT NULL,
  estado varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela funcionario
--

CREATE TABLE funcionario (
  registro int(4) NOT NULL,
  cpf varchar(11) DEFAULT NULL,
  nome1 varchar(50) DEFAULT NULL,
  rua varchar(50) DEFAULT NULL,
  bairro varchar(50) DEFAULT NULL,
  cidade varchar(50) DEFAULT NULL,
  cep varchar(8) DEFAULT NULL,
  dataadminssao date DEFAULT NULL,
  cargo varchar(50) DEFAULT NULL,
  departamento varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela funcionario_projeto
--

CREATE TABLE funcionario_projeto (
  cod int(4) NOT NULL,
  funcionario decimal(4,0) DEFAULT NULL,
  equipamento decimal(4,0) DEFAULT NULL,
  projeto decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela motorista
--

CREATE TABLE motorista (
  registro int(4) NOT NULL,
  cpf varchar(11) DEFAULT NULL,
  nome varchar(50) DEFAULT NULL,
  rua varchar(50) DEFAULT NULL,
  bairro varchar(50) DEFAULT NULL,
  cidade varchar(50) DEFAULT NULL,
  cep varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela motorista_carro
--

CREATE TABLE motorista_carro (
  cod int(4) NOT NULL,
  motorista int(11) DEFAULT NULL,
  carro int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela nota_fiscal
--

CREATE TABLE nota_fiscal (
  numero decimal(4,0) NOT NULL,
  pedido decimal(4,0) DEFAULT NULL,
  produto decimal(4,0) DEFAULT NULL,
  dataEmissao date DEFAULT NULL,
  valor decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela pedido
--

CREATE TABLE pedido (
  numero decimal(4,0) NOT NULL,
  cliente varchar(11) DEFAULT NULL,
  produto decimal(4,0) DEFAULT NULL,
  dataEmissao date DEFAULT NULL,
  status varchar(30) DEFAULT NULL,
  quantidade decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela produto
--

CREATE TABLE produto (
  cod decimal(4,0) NOT NULL,
  nome varchar(50) DEFAULT NULL,
  quantidade decimal(10,0) DEFAULT NULL,
  precocusto decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela projeto
--

CREATE TABLE projeto (
  cod int(4) NOT NULL,
  nome varchar(50) DEFAULT NULL,
  dataInicio date DEFAULT NULL,
  dataFinal date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela telefone
--

CREATE TABLE telefone (
  cod decimal(4,0) NOT NULL,
  pessoa varchar(50) DEFAULT NULL,
  telefone varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela carro
--
ALTER TABLE carro
  ADD PRIMARY KEY (cod);

--
-- Índices de tabela cliente
--
ALTER TABLE cliente
  ADD PRIMARY KEY (cpf);

--
-- Índices de tabela equipamento
--
ALTER TABLE equipamento
  ADD PRIMARY KEY (cod);

--
-- Índices de tabela funcionario
--
ALTER TABLE funcionario
  ADD PRIMARY KEY (registro);

--
-- Índices de tabela funcionario_projeto
--
ALTER TABLE funcionario_projeto
  ADD PRIMARY KEY (cod);

--
-- Índices de tabela motorista
--
ALTER TABLE motorista
  ADD PRIMARY KEY (registro);

--
-- Índices de tabela motorista_carro
--
ALTER TABLE motorista_carro
  ADD PRIMARY KEY (cod),
  ADD KEY FK_motorista (motorista),
  ADD KEY FK_carro (carro);

--
-- Índices de tabela nota_fiscal
--
ALTER TABLE nota_fiscal
  ADD PRIMARY KEY (numero),
  ADD KEY FK_pedido (pedido),
  ADD KEY FK_produto (produto);

--
-- Índices de tabela pedido
--
ALTER TABLE pedido
  ADD PRIMARY KEY (numero),
  ADD KEY FK_cliente (cliente),
  ADD KEY FKproduto (produto);

--
-- Índices de tabela produto
--
ALTER TABLE produto
  ADD PRIMARY KEY (cod);

--
-- Índices de tabela projeto
--
ALTER TABLE projeto
  ADD PRIMARY KEY (cod);

--
-- Índices de tabela telefone
--
ALTER TABLE telefone
  ADD PRIMARY KEY (cod);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas motorista_carro
--
ALTER TABLE motorista_carro
  ADD CONSTRAINT FK_carro FOREIGN KEY (carro) REFERENCES carro (cod),
  ADD CONSTRAINT FK_motorista FOREIGN KEY (motorista) REFERENCES motorista (registro);

--
-- Restrições para tabelas nota_fiscal
--
ALTER TABLE nota_fiscal
  ADD CONSTRAINT FK_pedido FOREIGN KEY (pedido) REFERENCES pedido (numero),
  ADD CONSTRAINT FK_produto FOREIGN KEY (produto) REFERENCES produto (cod);

--
-- Restrições para tabelas pedido
--
ALTER TABLE pedido
  ADD CONSTRAINT FK_cliente FOREIGN KEY (cliente) REFERENCES cliente (cpf),
  ADD CONSTRAINT FKproduto FOREIGN KEY (produto) REFERENCES produto (cod);
COMMIT;
