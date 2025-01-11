--
-- Banco de dados: BD_Loja_Camilli_Honorato_Cedup_2024
--

-- --------------------------------------------------------

--
-- Estrutura para tabela acompanhamento_compra
--

CREATE TABLE acompanhamento_compra (
  seq_acompanhamento_compra int(11) NOT NULL,
  dta_hor_situacao timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  cod_situacao_compra int(11) DEFAULT NULL,
  num_item_compra int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela caracteristica
--

CREATE TABLE caracteristica (
  cod_caracteristica int(11) NOT NULL,
  nom_caracteristica varchar(45) DEFAULT NULL,
  idf_ativo varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela categoria
--

CREATE TABLE categoria (
  cod_categoria int(11) NOT NULL,
  nom_categoria varchar(45) DEFAULT NULL,
  pos_categoria int(11) DEFAULT NULL,
  idf_ativo varchar(1) DEFAULT NULL,
  cod_departamento int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela cliente
--

CREATE TABLE cliente (
  cod_cliente int(11) NOT NULL,
  nom_cliente varchar(100) DEFAULT NULL,
  end_cliente varchar(250) DEFAULT NULL,
  cpf_cliente varchar(11) DEFAULT NULL,
  cep_cliente varchar(8) DEFAULT NULL,
  bai_cliente varchar(45) DEFAULT NULL,
  fon_cliente varchar(11) DEFAULT NULL,
  cel_cliente varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela compra
--

CREATE TABLE compra (
  num_compra int(11) NOT NULL,
  dta_hor_compra varchar(45) DEFAULT NULL,
  cod_cliente int(11) DEFAULT NULL,
  cod_condicao_pagamento int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela condicao_pagamento
--

CREATE TABLE condicao_pagamento (
  cod_condicao_pagamento int(11) NOT NULL,
  dsc_condicao_pagamento varchar(45) DEFAULT NULL,
  idf_ativo varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela departamento
--

CREATE TABLE departamento (
  cod_departamento int(11) NOT NULL,
  nom_departamento varchar(45) DEFAULT NULL,
  idf_ativo varchar(1) DEFAULT NULL,
  cod_grupo int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela fabricante
--

CREATE TABLE fabricante (
  cod_fabricante int(11) NOT NULL,
  nom_fabricante varchar(100) DEFAULT NULL,
  site_fabricante varchar(250) DEFAULT NULL,
  idf_ativo varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela grupo
--

CREATE TABLE grupo (
  cod_grupo int(11) NOT NULL,
  nom_grupo varchar(45) DEFAULT NULL,
  idf_ativo varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela item_compra
--

CREATE TABLE item_compra (
  num_item_compra int(11) NOT NULL,
  cod_produto int(11) DEFAULT NULL,
  num_compra int(11) DEFAULT NULL,
  pco_produto decimal(10,2) DEFAULT NULL,
  qtd_produto int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela prazo_cond_pagamento
--

CREATE TABLE prazo_cond_pagamento (
  seq_prazo_cond_pagamento int(11) NOT NULL,
  num_parcelas int(11) DEFAULT NULL,
  cod_condicao_pagamento int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela produto
--

CREATE TABLE produto (
  cod_produto int(11) NOT NULL,
  nom_produto varchar(250) DEFAULT NULL,
  dsc_produto longtext DEFAULT NULL,
  img_produto varchar(250) DEFAULT NULL,
  est_produto int(11) DEFAULT NULL,
  pco_produto decimal(10,2) DEFAULT NULL,
  idf_ativo varchar(1) DEFAULT NULL,
  cod_fabricante int(11) DEFAULT NULL,
  cod_categoria int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela produto_caracteristica
--

CREATE TABLE produto_caracteristica (
  seq_produto_caracteristica int(11) NOT NULL,
  vlr_caracteristica varchar(100) DEFAULT NULL,
  cod_produto int(11) DEFAULT NULL,
  cod_caracteristica int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela promocao
--

CREATE TABLE promocao (
  cod_promocao int(11) NOT NULL,
  nom_promocao varchar(45) DEFAULT NULL,
  dta_hor_ini_promocao time DEFAULT NULL,
  dta_hor_fim_promocao time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela promocao_produto
--

CREATE TABLE promocao_produto (
  seq_promocao_produto int(11) NOT NULL,
  pco_produto decimal(10,2) DEFAULT NULL,
  cod_condicao_pagamento int(11) DEFAULT NULL,
  cod_promocao int(11) DEFAULT NULL,
  cod_produto int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela situacao_compra
--

CREATE TABLE situacao_compra (
  cod_situacao_compra int(11) NOT NULL,
  dsc_situacao_compra varchar(45) DEFAULT NULL,
  idf_atio varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela acompanhamento_compra
--
ALTER TABLE acompanhamento_compra
  ADD PRIMARY KEY (seq_acompanhamento_compra),
  ADD KEY FK_cod_situacao_compra (cod_situacao_compra),
  ADD KEY FK_num_item_compra (num_item_compra);

--
-- Índices de tabela caracteristica
--
ALTER TABLE caracteristica
  ADD PRIMARY KEY (cod_caracteristica);

--
-- Índices de tabela categoria
--
ALTER TABLE categoria
  ADD PRIMARY KEY (cod_categoria),
  ADD KEY FK_Cod_departamento (cod_departamento);

--
-- Índices de tabela cliente
--
ALTER TABLE cliente
  ADD PRIMARY KEY (cod_cliente);

--
-- Índices de tabela compra
--
ALTER TABLE compra
  ADD PRIMARY KEY (num_compra),
  ADD KEY FK_cod_cliente (cod_cliente),
  ADD KEY FK_cod_condicao_pagamento (cod_condicao_pagamento);

--
-- Índices de tabela condicao_pagamento
--
ALTER TABLE condicao_pagamento
  ADD PRIMARY KEY (cod_condicao_pagamento);

--
-- Índices de tabela departamento
--
ALTER TABLE departamento
  ADD PRIMARY KEY (cod_departamento),
  ADD KEY FK_Cod_grupo (cod_grupo);

--
-- Índices de tabela fabricante
--
ALTER TABLE fabricante
  ADD PRIMARY KEY (cod_fabricante);

--
-- Índices de tabela grupo
--
ALTER TABLE grupo
  ADD PRIMARY KEY (cod_grupo);

--
-- Índices de tabela item_compra
--
ALTER TABLE item_compra
  ADD PRIMARY KEY (num_item_compra),
  ADD KEY FK_cod_produto (cod_produto),
  ADD KEY FK_num_compra (num_compra);

--
-- Índices de tabela prazo_cond_pagamento
--
ALTER TABLE prazo_cond_pagamento
  ADD PRIMARY KEY (seq_prazo_cond_pagamento),
  ADD KEY FK_cod__condicao_pagamento (cod_condicao_pagamento);

--
-- Índices de tabela produto
--
ALTER TABLE produto
  ADD PRIMARY KEY (cod_produto),
  ADD KEY FK_Cod_fabricante (cod_fabricante),
  ADD KEY FK_Cod_categoria (cod_categoria);

--
-- Índices de tabela produto_caracteristica
--
ALTER TABLE produto_caracteristica
  ADD PRIMARY KEY (seq_produto_caracteristica),
  ADD KEY FK__cod_produto (cod_produto),
  ADD KEY FK_cod_caracteristica (cod_caracteristica);

--
-- Índices de tabela promocao
--
ALTER TABLE promocao
  ADD PRIMARY KEY (cod_promocao);

--
-- Índices de tabela promocao_produto
--
ALTER TABLE promocao_produto
  ADD PRIMARY KEY (seq_promocao_produto),
  ADD KEY FK__cod_condicao_pagamento (cod_condicao_pagamento),
  ADD KEY FK_cod_promocao (cod_promocao),
  ADD KEY FK_cod__produto (cod_produto);

--
-- Índices de tabela situacao_compra
--
ALTER TABLE situacao_compra
  ADD PRIMARY KEY (cod_situacao_compra);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas acompanhamento_compra
--
ALTER TABLE acompanhamento_compra
  ADD CONSTRAINT FK_cod_situacao_compra FOREIGN KEY (cod_situacao_compra) REFERENCES situacao_compra (cod_situacao_compra),
  ADD CONSTRAINT FK_num_item_compra FOREIGN KEY (num_item_compra) REFERENCES item_compra (num_item_compra);

--
-- Restrições para tabelas categoria
--
ALTER TABLE categoria
  ADD CONSTRAINT FK_Cod_departamento FOREIGN KEY (cod_departamento) REFERENCES departamento (cod_departamento);

--
-- Restrições para tabelas compra
--
ALTER TABLE compra
  ADD CONSTRAINT FK_cod_cliente FOREIGN KEY (cod_cliente) REFERENCES cliente (cod_cliente),
  ADD CONSTRAINT FK_cod_condicao_pagamento FOREIGN KEY (cod_condicao_pagamento) REFERENCES condicao_pagamento (cod_condicao_pagamento);

--
-- Restrições para tabelas departamento
--
ALTER TABLE departamento
  ADD CONSTRAINT FK_Cod_grupo FOREIGN KEY (cod_grupo) REFERENCES grupo (cod_grupo);

--
-- Restrições para tabelas item_compra
--
ALTER TABLE item_compra
  ADD CONSTRAINT FK_cod_produto FOREIGN KEY (cod_produto) REFERENCES produto (cod_produto),
  ADD CONSTRAINT FK_num_compra FOREIGN KEY (num_compra) REFERENCES compra (num_compra);

--
-- Restrições para tabelas prazo_cond_pagamento
--
ALTER TABLE prazo_cond_pagamento
  ADD CONSTRAINT FK_cod__condicao_pagamento FOREIGN KEY (cod_condicao_pagamento) REFERENCES condicao_pagamento (cod_condicao_pagamento);

--
-- Restrições para tabelas produto
--
ALTER TABLE produto
  ADD CONSTRAINT FK_Cod_categoria FOREIGN KEY (cod_categoria) REFERENCES categoria (cod_categoria),
  ADD CONSTRAINT FK_Cod_fabricante FOREIGN KEY (cod_fabricante) REFERENCES fabricante (cod_fabricante);

--
-- Restrições para tabelas produto_caracteristica
--
ALTER TABLE produto_caracteristica
  ADD CONSTRAINT FK__cod_produto FOREIGN KEY (cod_produto) REFERENCES produto (cod_produto),
  ADD CONSTRAINT FK_cod_caracteristica FOREIGN KEY (cod_caracteristica) REFERENCES caracteristica (cod_caracteristica);

--
-- Restrições para tabelas promocao_produto
--
ALTER TABLE promocao_produto
  ADD CONSTRAINT FK__cod_condicao_pagamento FOREIGN KEY (cod_condicao_pagamento) REFERENCES condicao_pagamento (cod_condicao_pagamento),
  ADD CONSTRAINT FK_cod__produto FOREIGN KEY (cod_produto) REFERENCES produto (cod_produto),
  ADD CONSTRAINT FK_cod_promocao FOREIGN KEY (cod_promocao) REFERENCES promocao (cod_promocao);
COMMIT;

