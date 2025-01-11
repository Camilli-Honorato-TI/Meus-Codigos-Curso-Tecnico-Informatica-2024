--
-- Banco de dados: SGEM
--

-- --------------------------------------------------------

--
-- Estrutura para tabela aluno
--

CREATE TABLE aluno (
  id_aluno int(11) NOT NULL,
  nome_aluno varchar(200) DEFAULT NULL,
  id_matricula int(11) DEFAULT NULL,
  aulas_presentes int(11) DEFAULT NULL,
  faltas int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela bairro
--

CREATE TABLE bairro (
  id_bairro int(11) NOT NULL,
  nome_bairro varchar(200) DEFAULT NULL,
  id_cidade int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela cidade
--

CREATE TABLE cidade (
  id_cidade int(11) NOT NULL,
  nome_Cidade varchar(200) DEFAULT NULL,
  UF char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela cursos
--

CREATE TABLE cursos (
  id_curso int(11) NOT NULL,
  id_escola int(11) DEFAULT NULL,
  nome varchar(100) DEFAULT NULL,
  quantidade_aulas int(11) DEFAULT NULL,
  dias_aula varchar(30) DEFAULT NULL,
  avaliacao float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela endereco
--

CREATE TABLE endereco (
  id_endereco int(11) NOT NULL,
  id_bairro int(11) DEFAULT NULL,
  nome_rua varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela escola
--

CREATE TABLE escola (
  id_escola int(11) NOT NULL,
  nome_escola varchar(200) DEFAULT NULL,
  id_endereco int(11) DEFAULT NULL,
  cnpj varchar(20) DEFAULT NULL,
  feedbacks_alunos varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela matricula
--

CREATE TABLE matricula (
  id_matricula int(11) NOT NULL,
  cpf varchar(11) DEFAULT NULL,
  data_nascimento date DEFAULT NULL,
  id_turma int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela professor
--

CREATE TABLE professor (
  id_professor int(11) NOT NULL,
  nome_prof varchar(200) DEFAULT NULL,
  cpf varchar(11) DEFAULT NULL,
  data_nascimento date DEFAULT NULL,
  especialização varchar(30) DEFAULT NULL,
  hora_trabalhada float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela turma
--

CREATE TABLE turma (
  id_turma int(11) NOT NULL,
  id_cursos int(11) DEFAULT NULL,
  id_professor int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela aluno
--
ALTER TABLE aluno
  ADD PRIMARY KEY (id_aluno),
  ADD KEY FK_Matricula (id_matricula);

--
-- Índices de tabela bairro
--
ALTER TABLE bairro
  ADD PRIMARY KEY (id_bairro),
  ADD KEY FK_cidade (id_cidade);

--
-- Índices de tabela cidade
--
ALTER TABLE cidade
  ADD PRIMARY KEY (id_cidade);

--
-- Índices de tabela cursos
--
ALTER TABLE cursos
  ADD PRIMARY KEY (id_curso),
  ADD KEY FK_escola (id_escola);

--
-- Índices de tabela endereco
--
ALTER TABLE endereco
  ADD PRIMARY KEY (id_endereco),
  ADD KEY FK_bairro (id_bairro);

--
-- Índices de tabela escola
--
ALTER TABLE escola
  ADD PRIMARY KEY (id_escola),
  ADD KEY FK_endereco (id_endereco);

--
-- Índices de tabela matricula
--
ALTER TABLE matricula
  ADD PRIMARY KEY (id_matricula),
  ADD KEY FK_turma (id_turma);

--
-- Índices de tabela professor
--
ALTER TABLE professor
  ADD PRIMARY KEY (id_professor);

--
-- Índices de tabela turma
--
ALTER TABLE turma
  ADD PRIMARY KEY (id_turma),
  ADD KEY FK_cursos (id_cursos),
  ADD KEY FK_professor (id_professor);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela aluno
--
ALTER TABLE aluno
  MODIFY id_aluno int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela bairro
--
ALTER TABLE bairro
  MODIFY id_bairro int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela cidade
--
ALTER TABLE cidade
  MODIFY id_cidade int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela cursos
--
ALTER TABLE cursos
  MODIFY id_curso int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela endereco
--
ALTER TABLE endereco
  MODIFY id_endereco int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela escola
--
ALTER TABLE escola
  MODIFY id_escola int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela matricula
--
ALTER TABLE matricula
  MODIFY id_matricula int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela professor
--
ALTER TABLE professor
  MODIFY id_professor int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela turma
--
ALTER TABLE turma
  MODIFY id_turma int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas aluno
--
ALTER TABLE aluno
  ADD CONSTRAINT FK_Matricula FOREIGN KEY (id_matricula) REFERENCES matricula (id_matricula);

--
-- Restrições para tabelas bairro
--
ALTER TABLE bairro
  ADD CONSTRAINT FK_cidade FOREIGN KEY (id_cidade) REFERENCES cidade (id_cidade);

--
-- Restrições para tabelas cursos
--
ALTER TABLE cursos
  ADD CONSTRAINT FK_escola FOREIGN KEY (id_escola) REFERENCES escola (id_escola);

--
-- Restrições para tabelas endereco
--
ALTER TABLE endereco
  ADD CONSTRAINT FK_bairro FOREIGN KEY (id_bairro) REFERENCES bairro (id_bairro);

--
-- Restrições para tabelas escola
--
ALTER TABLE escola
  ADD CONSTRAINT FK_endereco FOREIGN KEY (id_endereco) REFERENCES endereco (id_endereco);

--
-- Restrições para tabelas matricula
--
ALTER TABLE matricula
  ADD CONSTRAINT FK_turma FOREIGN KEY (id_turma) REFERENCES turma (id_turma);

--
-- Restrições para tabelas turma
--
ALTER TABLE turma
  ADD CONSTRAINT FK_cursos FOREIGN KEY (id_cursos) REFERENCES cursos (id_curso),
  ADD CONSTRAINT FK_professor FOREIGN KEY (id_professor) REFERENCES professor (id_professor);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
