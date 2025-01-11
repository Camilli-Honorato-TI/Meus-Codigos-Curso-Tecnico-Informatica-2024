--
-- Banco de dados: BD_hospitalar_Camilli_Honorato_Cedup_2024
--

-- --------------------------------------------------------

--
-- Estrutura para tabela capitulo_cid10
--

CREATE TABLE capitulo_cid10 (
  cod_capitulo_cid10 int(11) NOT NULL,
  sgl_capitulo_cid10 varchar(10) DEFAULT NULL,
  dsc_capitulo_cid10 varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela cid10
--

CREATE TABLE cid10 (
  cod_cid10 int(11) NOT NULL,
  sgl_cid10 varchar(10) DEFAULT NULL,
  dsc_cid10 varchar(400) DEFAULT NULL,
  cod_capitulo_cid10 int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela cidade
--

CREATE TABLE cidade (
  cod_cidade int(11) NOT NULL,
  nom_cidade varchar(100) DEFAULT NULL,
  sgl_estado varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela consulta
--

CREATE TABLE consulta (
  num_consulta int(11) NOT NULL,
  data_consulta datetime DEFAULT NULL,
  dsc_diagonostico varchar(255) DEFAULT NULL,
  dsc_analise_clinica varchar(255) DEFAULT NULL,
  crm_medico int(11) DEFAULT NULL,
  cod_paciente int(11) DEFAULT NULL,
  cod_cid10 int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela departamento
--

CREATE TABLE departamento (
  cod_departamento int(11) NOT NULL,
  nom_departamento varchar(100) DEFAULT NULL,
  idf_ativo varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela enfermaria
--

CREATE TABLE enfermaria (
  cod_enfermaria int(11) NOT NULL,
  nome_enfermaria varchar(50) DEFAULT NULL,
  num_andar_enfermaria int(11) DEFAULT NULL,
  idf_ala_enfermaria varchar(1) DEFAULT NULL,
  idf_ativo varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela especialidade
--

CREATE TABLE especialidade (
  cod_especialidade int(11) NOT NULL,
  nome_especialidade varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela especialidade_enfermaria
--

CREATE TABLE especialidade_enfermaria (
  seq_especialidade_enfermaria int(11) NOT NULL,
  cod_enfermaria int(11) DEFAULT NULL,
  cod_especialidade int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela especialidade_medico
--

CREATE TABLE especialidade_medico (
  seq_especialidade_medico int(11) NOT NULL,
  crm_medico int(11) DEFAULT NULL,
  cod_especialidade int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela faixa_etaria
--

CREATE TABLE faixa_etaria (
  seq_faixa_etaria int(11) NOT NULL,
  dsc_faixa_etaria varchar(100) DEFAULT NULL,
  num_idade_inicio_faixa_etaria int(11) DEFAULT NULL,
  num_idade_fim_faixa_etaria int(11) DEFAULT NULL,
  idf_ativo varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela internacao
--

CREATE TABLE internacao (
  num_internacao int(11) NOT NULL,
  dta_hor_internacao datetime DEFAULT NULL,
  dta_hor_alta datetime DEFAULT NULL,
  num_leito int(11) DEFAULT NULL,
  cod_paciente int(11) DEFAULT NULL,
  cod_cid10 int(11) DEFAULT NULL,
  crm_medico_solicitou_internacao int(11) DEFAULT NULL,
  crm_medico_liberou_alta int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela laboratorio
--

CREATE TABLE laboratorio (
  cod_laboratorio int(11) NOT NULL,
  nom_laboratorio varchar(150) DEFAULT NULL,
  cod_cidade int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela leito
--

CREATE TABLE leito (
  num_leito int(11) NOT NULL,
  idf_situacao varchar(1) DEFAULT NULL,
  cod_enfermaria int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela medicamento
--

CREATE TABLE medicamento (
  cod_medicamento int(11) NOT NULL,
  nom_medicamento varchar(150) DEFAULT NULL,
  cod_laboratorio int(11) DEFAULT NULL,
  aps_medicamento varchar(150) DEFAULT NULL,
  dos_medicamento varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela medico
--

CREATE TABLE medico (
  crm_medico int(11) NOT NULL,
  cod_departamento int(11) DEFAULT NULL,
  nom_medico varchar(100) DEFAULT NULL,
  idf_sexo varchar(1) DEFAULT NULL,
  dta_nascimento date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela paciente
--

CREATE TABLE paciente (
  cod_paciente int(11) NOT NULL,
  nom_paciente varchar(150) DEFAULT NULL,
  end_paciente varchar(150) DEFAULT NULL,
  idf_sexo varchar(1) DEFAULT NULL,
  dta_nascimento date DEFAULT NULL,
  cod_cidade int(11) DEFAULT NULL,
  seq_faixa_etaria int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela prescricao
--

CREATE TABLE prescricao (
  seq_prescricao int(11) NOT NULL,
  dsc_orientacoes varchar(150) DEFAULT NULL,
  dsc_dosagem varchar(150) DEFAULT NULL,
  dsc_apresentacao varchar(150) DEFAULT NULL,
  num_receita int(11) DEFAULT NULL,
  cod_medicamento int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela receita
--

CREATE TABLE receita (
  num_receita int(11) NOT NULL,
  data_receita datetime DEFAULT NULL,
  dsc_orientacoes_gerais varchar(150) DEFAULT NULL,
  num_consulta int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela telefone_paciente
--

CREATE TABLE telefone_paciente (
  cod_paciente int(11) DEFAULT NULL,
  num_telefone_paciente varchar(16) NOT NULL,
  idf_tipo_telefone_paciente varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela capitulo_cid10
--
ALTER TABLE capitulo_cid10
  ADD PRIMARY KEY (cod_capitulo_cid10);

--
-- Índices de tabela cid10
--
ALTER TABLE cid10
  ADD PRIMARY KEY (cod_cid10),
  ADD KEY FK_cod_capitulo_cid10 (cod_capitulo_cid10);

--
-- Índices de tabela cidade
--
ALTER TABLE cidade
  ADD PRIMARY KEY (cod_cidade);

--
-- Índices de tabela consulta
--
ALTER TABLE consulta
  ADD PRIMARY KEY (num_consulta),
  ADD KEY FK_cod_cid10 (cod_cid10),
  ADD KEY FK_crm_medico (crm_medico),
  ADD KEY FK_codpaciente (cod_paciente);

--
-- Índices de tabela departamento
--
ALTER TABLE departamento
  ADD PRIMARY KEY (cod_departamento);

--
-- Índices de tabela enfermaria
--
ALTER TABLE enfermaria
  ADD PRIMARY KEY (cod_enfermaria);

--
-- Índices de tabela especialidade
--
ALTER TABLE especialidade
  ADD PRIMARY KEY (cod_especialidade);

--
-- Índices de tabela especialidade_enfermaria
--
ALTER TABLE especialidade_enfermaria
  ADD PRIMARY KEY (seq_especialidade_enfermaria),
  ADD KEY FK_Cod_enfermaria (cod_enfermaria),
  ADD KEY FK_Cod_especialidade (cod_especialidade);

--
-- Índices de tabela especialidade_medico
--
ALTER TABLE especialidade_medico
  ADD PRIMARY KEY (seq_especialidade_medico),
  ADD KEY FKcrm_medico (crm_medico),
  ADD KEY FK__cod_especialidade (cod_especialidade);

--
-- Índices de tabela faixa_etaria
--
ALTER TABLE faixa_etaria
  ADD PRIMARY KEY (seq_faixa_etaria);

--
-- Índices de tabela internacao
--
ALTER TABLE internacao
  ADD PRIMARY KEY (num_internacao),
  ADD KEY FK_num_leito (num_leito),
  ADD KEY FK__cod_paciente (cod_paciente),
  ADD KEY FK_cod__cid10 (cod_cid10),
  ADD KEY FK_crm_medico_solicitou_internacao (crm_medico_solicitou_internacao),
  ADD KEY FK_crm_medico_liberou_alta (crm_medico_liberou_alta);

--
-- Índices de tabela laboratorio
--
ALTER TABLE laboratorio
  ADD PRIMARY KEY (cod_laboratorio),
  ADD KEY FKcod_cidade (cod_cidade);

--
-- Índices de tabela leito
--
ALTER TABLE leito
  ADD PRIMARY KEY (num_leito),
  ADD KEY FKCod_enfermaria (cod_enfermaria);

--
-- Índices de tabela medicamento
--
ALTER TABLE medicamento
  ADD PRIMARY KEY (cod_medicamento),
  ADD KEY FK_cod_laboratorio (cod_laboratorio);

--
-- Índices de tabela medico
--
ALTER TABLE medico
  ADD PRIMARY KEY (crm_medico),
  ADD KEY FK_cod_departamento (cod_departamento);

--
-- Índices de tabela paciente
--
ALTER TABLE paciente
  ADD PRIMARY KEY (cod_paciente),
  ADD KEY FK_cod_cidade (cod_cidade),
  ADD KEY FK_seq__faixa_etaria (seq_faixa_etaria);

--
-- Índices de tabela prescricao
--
ALTER TABLE prescricao
  ADD PRIMARY KEY (seq_prescricao),
  ADD KEY FK_num_receita (num_receita),
  ADD KEY FK_cod_medicamento (cod_medicamento);

--
-- Índices de tabela receita
--
ALTER TABLE receita
  ADD PRIMARY KEY (num_receita),
  ADD KEY FK_num_consulta (num_consulta);

--
-- Índices de tabela telefone_paciente
--
ALTER TABLE telefone_paciente
  ADD PRIMARY KEY (num_telefone_paciente),
  ADD KEY FK_cod_paciente (cod_paciente);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas cid10
--
ALTER TABLE cid10
  ADD CONSTRAINT FK_cod_capitulo_cid10 FOREIGN KEY (cod_capitulo_cid10) REFERENCES capitulo_cid10 (cod_capitulo_cid10);

--
-- Restrições para tabelas consulta
--
ALTER TABLE consulta
  ADD CONSTRAINT FK_cod_cid10 FOREIGN KEY (cod_cid10) REFERENCES cid10 (cod_cid10),
  ADD CONSTRAINT FK_codpaciente FOREIGN KEY (cod_paciente) REFERENCES paciente (cod_paciente),
  ADD CONSTRAINT FK_crm_medico FOREIGN KEY (crm_medico) REFERENCES medico (crm_medico);

--
-- Restrições para tabelas especialidade_enfermaria
--
ALTER TABLE especialidade_enfermaria
  ADD CONSTRAINT FK_Cod_enfermaria FOREIGN KEY (cod_enfermaria) REFERENCES enfermaria (cod_enfermaria),
  ADD CONSTRAINT FK_Cod_especialidade FOREIGN KEY (cod_especialidade) REFERENCES especialidade (cod_especialidade);

--
-- Restrições para tabelas especialidade_medico
--
ALTER TABLE especialidade_medico
  ADD CONSTRAINT FK__cod_especialidade FOREIGN KEY (cod_especialidade) REFERENCES especialidade (cod_especialidade),
  ADD CONSTRAINT FKcrm_medico FOREIGN KEY (crm_medico) REFERENCES medico (crm_medico);

--
-- Restrições para tabelas internacao
--
ALTER TABLE internacao
  ADD CONSTRAINT FK__cod_paciente FOREIGN KEY (cod_paciente) REFERENCES paciente (cod_paciente),
  ADD CONSTRAINT FK_cod__cid10 FOREIGN KEY (cod_cid10) REFERENCES cid10 (cod_cid10),
  ADD CONSTRAINT FK_crm_medico_liberou_alta FOREIGN KEY (crm_medico_liberou_alta) REFERENCES medico (crm_medico),
  ADD CONSTRAINT FK_crm_medico_solicitou_internacao FOREIGN KEY (crm_medico_solicitou_internacao) REFERENCES medico (crm_medico),
  ADD CONSTRAINT FK_num_leito FOREIGN KEY (num_leito) REFERENCES leito (num_leito);

--
-- Restrições para tabelas laboratorio
--
ALTER TABLE laboratorio
  ADD CONSTRAINT FKcod_cidade FOREIGN KEY (cod_cidade) REFERENCES cidade (cod_cidade);

--
-- Restrições para tabelas leito
--
ALTER TABLE leito
  ADD CONSTRAINT FKCod_enfermaria FOREIGN KEY (cod_enfermaria) REFERENCES enfermaria (cod_enfermaria);

--
-- Restrições para tabelas medicamento
--
ALTER TABLE medicamento
  ADD CONSTRAINT FK_cod_laboratorio FOREIGN KEY (cod_laboratorio) REFERENCES laboratorio (cod_laboratorio);

--
-- Restrições para tabelas medico
--
ALTER TABLE medico
  ADD CONSTRAINT FK_cod_departamento FOREIGN KEY (cod_departamento) REFERENCES departamento (cod_departamento);

--
-- Restrições para tabelas paciente
--
ALTER TABLE paciente
  ADD CONSTRAINT FK_cod_cidade FOREIGN KEY (cod_cidade) REFERENCES cidade (cod_cidade),
  ADD CONSTRAINT FK_seq__faixa_etaria FOREIGN KEY (seq_faixa_etaria) REFERENCES faixa_etaria (seq_faixa_etaria);

--
-- Restrições para tabelas prescricao
--
ALTER TABLE prescricao
  ADD CONSTRAINT FK_cod_medicamento FOREIGN KEY (cod_medicamento) REFERENCES medicamento (cod_medicamento),
  ADD CONSTRAINT FK_num_receita FOREIGN KEY (num_receita) REFERENCES receita (num_receita);

--
-- Restrições para tabelas receita
--
ALTER TABLE receita
  ADD CONSTRAINT FK_num_consulta FOREIGN KEY (num_consulta) REFERENCES consulta (num_consulta);

--
-- Restrições para tabelas telefone_paciente
--
ALTER TABLE telefone_paciente
  ADD CONSTRAINT FK_cod_paciente FOREIGN KEY (cod_paciente) REFERENCES paciente (cod_paciente);
COMMIT;
