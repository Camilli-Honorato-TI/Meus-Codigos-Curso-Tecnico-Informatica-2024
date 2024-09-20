--
-- Banco de dados:  BD_Hospital_Camilli_Honorato_Cedup_2024
--

-- --------------------------------------------------------

--
-- Estrutura para tabela  enfermaria 
--

CREATE TABLE  enfermaria  (
   COREN  char(10) NOT NULL,
   CPF  char(10) DEFAULT NULL,
   NOME  char(50) DEFAULT NULL,
   RUA  char(50) DEFAULT NULL,
   BAIRRO  char(20) DEFAULT NULL,
   CIADE  char(20) DEFAULT NULL,
   CEP  char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela  especialidade 
--

CREATE TABLE  especialidade  (
   COD_NUMERO  varchar(4) NOT NULL,
   DOCUMENTO  char(10) DEFAULT NULL,
   ESPECIALIDADE  char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela  hospital 
--

CREATE TABLE  hospital  (
   CPNJ  char(11) NOT NULL,
   NOME  char(50) DEFAULT NULL,
   RUA  char(50) DEFAULT NULL,
   BAIRRO  char(20) DEFAULT NULL,
   CIDADE  char(20) DEFAULT NULL,
   CEP  char(8) DEFAULT NULL,
   TELEFONE  char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela  medico 
--

CREATE TABLE  medico  (
   CRM  char(11) NOT NULL,
   CPF  char(11) DEFAULT NULL,
   RG  char(10) DEFAULT NULL,
   NOME  char(50) DEFAULT NULL,
   RUA  char(50) DEFAULT NULL,
   BAIRRO  char(20) DEFAULT NULL,
   CIDADE  char(20) DEFAULT NULL,
   CEP  char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela  paciente 
--

CREATE TABLE  paciente  (
   CPF  char(11) NOT NULL,
   RG  char(10) DEFAULT NULL,
   NOME  char(50) DEFAULT NULL,
   RUA  char(50) DEFAULT NULL,
   BAIRRO  char(20) DEFAULT NULL,
   CIDADE  char(20) DEFAULT NULL,
   CEP  char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela  telefone 
--

CREATE TABLE  telefone  (
   COD_NUMERO  varchar(4) NOT NULL,
   DOCUMENTO  char(10) DEFAULT NULL,
   TELEFONE  char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela  tratamento 
--

CREATE TABLE  tratamento  (
   CPF  char(11) NOT NULL,
   CRM  char(10) DEFAULT NULL,
   CID  char(50) DEFAULT NULL,
   DATA  date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela  enfermaria 
--
ALTER TABLE  enfermaria 
  ADD PRIMARY KEY ( COREN );

--
-- Índices de tabela  especialidade 
--
ALTER TABLE  especialidade 
  ADD PRIMARY KEY ( COD_NUMERO ),
  ADD KEY  FK_documento  ( DOCUMENTO );

--
-- Índices de tabela  hospital 
--
ALTER TABLE  hospital 
  ADD PRIMARY KEY ( CPNJ );

--
-- Índices de tabela  medico 
--
ALTER TABLE  medico 
  ADD PRIMARY KEY ( CRM );

--
-- Índices de tabela  paciente 
--
ALTER TABLE  paciente 
  ADD PRIMARY KEY ( CPF );

--
-- Índices de tabela  telefone 
--
ALTER TABLE  telefone 
  ADD PRIMARY KEY ( COD_NUMERO ),
  ADD KEY  documento  ( DOCUMENTO );

--
-- Índices de tabela  tratamento 
--
ALTER TABLE  tratamento 
  ADD PRIMARY KEY ( CPF );

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas  especialidade 
--
ALTER TABLE  especialidade 
  ADD CONSTRAINT  FK_documento  FOREIGN KEY ( DOCUMENTO ) REFERENCES  medico  ( CRM );

--
-- Restrições para tabelas  telefone 
--
ALTER TABLE  telefone 
  ADD CONSTRAINT  documento  FOREIGN KEY ( DOCUMENTO ) REFERENCES  medico  ( CRM );
COMMIT;
