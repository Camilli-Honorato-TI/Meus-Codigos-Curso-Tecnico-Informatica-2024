--
-- Banco de dados: BD_Prefeitos_Camilli_Honorato_Cedup_2024
--

-- --------------------------------------------------------

--
-- Estrutura para tabela estado
--

CREATE TABLE estado (
  cod int(4) NOT NULL,
  nome varchar(50) DEFAULT NULL,
  sigla varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela municipio
--

CREATE TABLE municipio (
  cod int(4) NOT NULL,
  codestado int(4) DEFAULT NULL,
  codprefeito int(4) DEFAULT NULL,
  codpais int(4) DEFAULT NULL,
  nome varchar(50) DEFAULT NULL,
  populacao varchar(50) DEFAULT NULL,
  area varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela pais
--

CREATE TABLE pais (
  cod int(4) NOT NULL,
  nome varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela prefeito
--

CREATE TABLE prefeito (
  cod int(4) NOT NULL,
  nome varchar(50) DEFAULT NULL,
  partido varchar(50) DEFAULT NULL,
  anomandato1 varchar(4) DEFAULT NULL,
  anomandato2 varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela estado
--
ALTER TABLE estado
  ADD PRIMARY KEY (cod);

--
-- Índices de tabela municipio
--
ALTER TABLE municipio
  ADD PRIMARY KEY (cod),
  ADD KEY FK_cod_estado (codestado),
  ADD KEY FK_cod_prefeito (codprefeito),
  ADD KEY FK_cod_pais (codpais);

--
-- Índices de tabela pais
--
ALTER TABLE pais
  ADD PRIMARY KEY (cod);

--
-- Índices de tabela prefeito
--
ALTER TABLE prefeito
  ADD PRIMARY KEY (cod);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas municipio
--
ALTER TABLE municipio
  ADD CONSTRAINT FK_cod_estado FOREIGN KEY (codestado) REFERENCES estado (cod),
  ADD CONSTRAINT FK_cod_pais FOREIGN KEY (codpais) REFERENCES pais (cod),
  ADD CONSTRAINT FK_cod_prefeito FOREIGN KEY (codprefeito) REFERENCES prefeito (cod),
  ADD CONSTRAINT FK_codestado FOREIGN KEY (cod) REFERENCES estado (cod),
  ADD CONSTRAINT FK_codpais FOREIGN KEY (cod) REFERENCES pais (cod),
  ADD CONSTRAINT FK_codprefeito FOREIGN KEY (cod) REFERENCES prefeito (cod);
COMMIT;
