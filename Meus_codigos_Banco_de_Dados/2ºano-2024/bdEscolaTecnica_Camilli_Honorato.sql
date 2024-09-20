--
-- Banco de dados: BD_Escola_Tecnica_Camilli_Honorato_Cedup_2024
--

-- --------------------------------------------------------

--
-- Estrutura para tabela aluno
--

CREATE TABLE aluno (
  Rm varchar(11) NOT NULL,
  rg varchar(14) DEFAULT NULL,
  nome varchar(50) DEFAULT NULL,
  responsavel varchar(50) DEFAULT NULL,
  dataNascimento date DEFAULT NULL,
  rua varchar(50) DEFAULT NULL,
  Bairro varchar(50) DEFAULT NULL,
  cep varchar(8) DEFAULT NULL,
  cidade varchar(50) DEFAULT NULL,
  estado varchar(2) DEFAULT NULL,
  email varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela aluno_curso
--

CREATE TABLE aluno_curso (
  cod int(11) NOT NULL,
  Aluno varchar(11) DEFAULT NULL,
  codCurso int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela cursos
--

CREATE TABLE cursos (
  cod int(11) NOT NULL,
  nome varchar(50) DEFAULT NULL,
  preco int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela curso_duracao
--

CREATE TABLE curso_duracao (
  cod int(11) NOT NULL,
  codDuracao int(11) DEFAULT NULL,
  codCurso int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela duracao
--

CREATE TABLE duracao (
  cod int(11) NOT NULL,
  duracao varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela empresa
--

CREATE TABLE empresa (
  Cnpj varchar(13) NOT NULL,
  inscricaoEscolar varchar(50) DEFAULT NULL,
  NomeFantasia varchar(50) DEFAULT NULL,
  DataConstituicao date DEFAULT NULL,
  rua varchar(50) DEFAULT NULL,
  Bairro varchar(50) DEFAULT NULL,
  cep varchar(8) DEFAULT NULL,
  cidade varchar(50) DEFAULT NULL,
  estado varchar(2) DEFAULT NULL,
  telefone varchar(10) DEFAULT NULL,
  email varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela especializacao
--

CREATE TABLE especializacao (
  cod int(11) NOT NULL,
  professor varchar(11) DEFAULT NULL,
  Especializacao varchar(50) DEFAULT NULL,
  ano varchar(50) DEFAULT NULL,
  cargaHoraria varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela professor
--

CREATE TABLE professor (
  Cpf varchar(50) NOT NULL,
  Nome varchar(50) DEFAULT NULL,
  dataAdmissao date DEFAULT NULL,
  datanascimento date DEFAULT NULL,
  rua varchar(50) DEFAULT NULL,
  Bairro varchar(50) DEFAULT NULL,
  cep varchar(8) DEFAULT NULL,
  cidade varchar(50) DEFAULT NULL,
  estado varchar(2) DEFAULT NULL,
  email varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela professor_curso
--

CREATE TABLE professor_curso (
  cod int(11) NOT NULL,
  professor varchar(11) DEFAULT NULL,
  codCurso int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela professor_pagamento
--

CREATE TABLE professor_pagamento (
  cod int(11) NOT NULL,
  professor varchar(11) DEFAULT NULL,
  horaTrabalhadas int(11) DEFAULT NULL,
  varlorHoraAula int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela telefone
--

CREATE TABLE telefone (
  cod int(11) NOT NULL,
  documento varchar(11) DEFAULT NULL,
  telefone varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela aluno
--
ALTER TABLE aluno
  ADD PRIMARY KEY (Rm);

--
-- Índices de tabela aluno_curso
--
ALTER TABLE aluno_curso
  ADD PRIMARY KEY (cod),
  ADD KEY FK__documento (Aluno),
  ADD KEY FK_CodCurso (codCurso);

--
-- Índices de tabela cursos
--
ALTER TABLE cursos
  ADD PRIMARY KEY (cod);

--
-- Índices de tabela curso_duracao
--
ALTER TABLE curso_duracao
  ADD PRIMARY KEY (cod),
  ADD KEY FK_cod_duracao (codDuracao),
  ADD KEY FK_cod_curso (codCurso);

--
-- Índices de tabela duracao
--
ALTER TABLE duracao
  ADD PRIMARY KEY (cod);

--
-- Índices de tabela empresa
--
ALTER TABLE empresa
  ADD PRIMARY KEY (Cnpj);

--
-- Índices de tabela especializacao
--
ALTER TABLE especializacao
  ADD PRIMARY KEY (cod),
  ADD KEY FK_professor (professor);

--
-- Índices de tabela professor
--
ALTER TABLE professor
  ADD PRIMARY KEY (Cpf);

--
-- Índices de tabela professor_curso
--
ALTER TABLE professor_curso
  ADD PRIMARY KEY (cod),
  ADD KEY FK__professor (professor),
  ADD KEY FK__codCurso (codCurso);

--
-- Índices de tabela professor_pagamento
--
ALTER TABLE professor_pagamento
  ADD PRIMARY KEY (cod),
  ADD KEY FKprofessor (professor);

--
-- Índices de tabela telefone
--
ALTER TABLE telefone
  ADD PRIMARY KEY (cod),
  ADD KEY FK_documento (documento);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas aluno_curso
--
ALTER TABLE aluno_curso
  ADD CONSTRAINT FK_CodCurso FOREIGN KEY (codCurso) REFERENCES cursos (cod),
  ADD CONSTRAINT FK__documento FOREIGN KEY (Aluno) REFERENCES aluno (Rm);

--
-- Restrições para tabelas curso_duracao
--
ALTER TABLE curso_duracao
  ADD CONSTRAINT FK_cod_curso FOREIGN KEY (codCurso) REFERENCES cursos (cod),
  ADD CONSTRAINT FK_cod_duracao FOREIGN KEY (codDuracao) REFERENCES duracao (cod);

--
-- Restrições para tabelas especializacao
--
ALTER TABLE especializacao
  ADD CONSTRAINT FK_professor FOREIGN KEY (professor) REFERENCES professor (Cpf);

--
-- Restrições para tabelas professor_curso
--
ALTER TABLE professor_curso
  ADD CONSTRAINT FK__codCurso FOREIGN KEY (codCurso) REFERENCES cursos (cod),
  ADD CONSTRAINT FK__professor FOREIGN KEY (professor) REFERENCES professor (Cpf);

--
-- Restrições para tabelas professor_pagamento
--
ALTER TABLE professor_pagamento
  ADD CONSTRAINT FKprofessor FOREIGN KEY (professor) REFERENCES professor (Cpf);

--
-- Restrições para tabelas telefone
--
ALTER TABLE telefone
  ADD CONSTRAINT FK_documento FOREIGN KEY (documento) REFERENCES empresa (Cnpj);
COMMIT;