--
-- Banco de dados:  BD_Vendas_Camilli_Honorato_Cedup_2024
--

-- --------------------------------------------------------

--
-- Estrutura para tabela  categoria 
--

CREATE TABLE  categoria  (
   Id  int(11) NOT NULL,
   nome  varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela  cliente 
--

CREATE TABLE  cliente  (
   id  int(11) NOT NULL,
   nome  varchar(45) DEFAULT NULL,
   telefone  varchar(45) DEFAULT NULL,
   email  varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela  fornecedores 
--

CREATE TABLE  fornecedores  (
   id  int(11) NOT NULL,
   cnpj  varchar(45) DEFAULT NULL,
   nome  varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela  pagamento 
--

CREATE TABLE  pagamento  (
   id  int(11) NOT NULL,
   forma_pagamento  varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela  produto 
--

CREATE TABLE  produto  (
   id  int(11) NOT NULL,
   nome  varchar(45) DEFAULT NULL,
   preco  decimal(10,2) DEFAULT NULL,
   qtd_estoque  varchar(45) DEFAULT NULL,
   categoria_id  int(11) DEFAULT NULL,
   fornecedores_id  int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela  venda 
--

CREATE TABLE  venda  (
   id  int(11) NOT NULL,
   valor_total  decimal(10,2) DEFAULT NULL,
   data  datetime DEFAULT NULL,
   cliente_id  int(11) DEFAULT NULL,
   vendedor_id  int(11) DEFAULT NULL,
   pagamento_id  int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela  venda_has_produto 
--

CREATE TABLE  venda_has_produto  (
   venda_id  int(11) DEFAULT NULL,
   produto_id  int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela  vendedor 
--

CREATE TABLE  vendedor  (
   id  int(11) NOT NULL,
   nome  varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela  categoria 
--
ALTER TABLE  categoria 
  ADD PRIMARY KEY ( Id );

--
-- Índices de tabela  cliente 
--
ALTER TABLE  cliente 
  ADD PRIMARY KEY ( id );

--
-- Índices de tabela  fornecedores 
--
ALTER TABLE  fornecedores 
  ADD PRIMARY KEY ( id );

--
-- Índices de tabela  pagamento 
--
ALTER TABLE  pagamento 
  ADD PRIMARY KEY ( id );

--
-- Índices de tabela  produto 
--
ALTER TABLE  produto 
  ADD PRIMARY KEY ( id ),
  ADD KEY  categoria_id  ( categoria_id ),
  ADD KEY  fornecedores_id  ( fornecedores_id );

--
-- Índices de tabela  venda 
--
ALTER TABLE  venda 
  ADD PRIMARY KEY ( id ),
  ADD KEY  FK_cliente_id  ( cliente_id ),
  ADD KEY  FK_vendedor_id  ( vendedor_id ),
  ADD KEY  FK_pagamento_id  ( pagamento_id );

--
-- Índices de tabela  venda_has_produto 
--
ALTER TABLE  venda_has_produto 
  ADD KEY  venda_id  ( venda_id ),
  ADD KEY  produto_id  ( produto_id );

--
-- Índices de tabela  vendedor 
--
ALTER TABLE  vendedor 
  ADD PRIMARY KEY ( id );

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas  produto 
--
ALTER TABLE  produto 
  ADD CONSTRAINT  categoria_id  FOREIGN KEY ( categoria_id ) REFERENCES  categoria  ( Id ),
  ADD CONSTRAINT  fornecedores_id  FOREIGN KEY ( fornecedores_id ) REFERENCES  fornecedores  ( id );

--
-- Restrições para tabelas  venda 
--
ALTER TABLE  venda 
  ADD CONSTRAINT  FK_cliente_id  FOREIGN KEY ( cliente_id ) REFERENCES  cliente  ( id ),
  ADD CONSTRAINT  FK_pagamento_id  FOREIGN KEY ( pagamento_id ) REFERENCES  pagamento  ( id ),
  ADD CONSTRAINT  FK_vendedor_id  FOREIGN KEY ( vendedor_id ) REFERENCES  vendedor  ( id );

--
-- Restrições para tabelas  venda_has_produto 
--
ALTER TABLE  venda_has_produto 
  ADD CONSTRAINT  produto_id  FOREIGN KEY ( produto_id ) REFERENCES  produto  ( id ),
  ADD CONSTRAINT  venda_id  FOREIGN KEY ( venda_id ) REFERENCES  venda  ( id );
COMMIT;
