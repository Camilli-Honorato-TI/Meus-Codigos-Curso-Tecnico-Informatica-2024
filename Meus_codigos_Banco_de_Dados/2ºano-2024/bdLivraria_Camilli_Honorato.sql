--
-- Banco de dados: BD_Livraria_Camilli_Honorato_Cedup_2024
--

-- --------------------------------------------------------

--
-- Estrutura para tabela autor
--

CREATE TABLE autor (
  CODIGO int(11) NOT NULL,
  NOME varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela autoria
--

CREATE TABLE autoria (
  livro_isbn varchar(45) DEFAULT NULL,
  autor_codigo int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela editora
--

CREATE TABLE editora (
  CODIGO int(11) NOT NULL,
  NOME varchar(255) DEFAULT NULL,
  CIDADE varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela emprestimo
--

CREATE TABLE emprestimo (
  EXEMPLAR_CODIGO int(11) DEFAULT NULL,
  EXEMPLAR_LIVRO_ISBN varchar(45) DEFAULT NULL,
  USUARIO_CPF varchar(11) DEFAULT NULL,
  DATA_EMPRESTIMO date NOT NULL,
  DATA_ENTREGA date DEFAULT NULL,
  PRAZO int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela exemplar
--

CREATE TABLE exemplar (
  CODIGO int(11) NOT NULL,
  LIVRO_ISBN varchar(45) DEFAULT NULL,
  STATUS enum('0','1','2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela genero
--

CREATE TABLE genero (
  CODIGO int(11) NOT NULL,
  NOME varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela livro
--

CREATE TABLE livro (
  ISBN varchar(45) NOT NULL,
  TITULO varchar(255) DEFAULT NULL,
  EDICAO int(11) DEFAULT NULL,
  VOLUME int(11) DEFAULT NULL,
  GENERO_CODIGO int(11) DEFAULT NULL,
  EDITORA_CODIGO int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela perfil
--

CREATE TABLE perfil (
  CODIGO int(11) NOT NULL,
  NOME varchar(255) DEFAULT NULL,
  LIMITE int(11) DEFAULT NULL,
  PRAZO int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela usuario
--

CREATE TABLE usuario (
  cpf varchar(11) NOT NULL,
  nome varchar(255) DEFAULT NULL,
  endereco varchar(255) DEFAULT NULL,
  telefone varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  perfil_codigo int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela autor
--
ALTER TABLE autor
  ADD PRIMARY KEY (CODIGO);

--
-- Índices de tabela autoria
--
ALTER TABLE autoria
  ADD KEY FK_livro_isbn (livro_isbn) USING BTREE,
  ADD KEY FK_autor_codigo (autor_codigo);

--
-- Índices de tabela editora
--
ALTER TABLE editora
  ADD PRIMARY KEY (CODIGO);

--
-- Índices de tabela emprestimo
--
ALTER TABLE emprestimo
  ADD PRIMARY KEY (DATA_EMPRESTIMO),
  ADD KEY FK_exemplar_livro_isbn (EXEMPLAR_LIVRO_ISBN),
  ADD KEY FK_exemplar_codigo (EXEMPLAR_CODIGO),
  ADD KEY FK_usuario_cpf (USUARIO_CPF);

--
-- Índices de tabela exemplar
--
ALTER TABLE exemplar
  ADD PRIMARY KEY (CODIGO),
  ADD KEY FK_livro_isbn (LIVRO_ISBN);

--
-- Índices de tabela genero
--
ALTER TABLE genero
  ADD PRIMARY KEY (CODIGO);

--
-- Índices de tabela livro
--
ALTER TABLE livro
  ADD PRIMARY KEY (ISBN),
  ADD KEY FK_genero_codigo (GENERO_CODIGO),
  ADD KEY FK_editora_codigo (EDITORA_CODIGO);

--
-- Índices de tabela perfil
--
ALTER TABLE perfil
  ADD PRIMARY KEY (CODIGO);

--
-- Índices de tabela usuario
--
ALTER TABLE usuario
  ADD PRIMARY KEY (cpf),
  ADD KEY FK_PERFIL_CODIGO (perfil_codigo);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas autoria
--
ALTER TABLE autoria
  ADD CONSTRAINT FK_autor_codigo FOREIGN KEY (autor_codigo) REFERENCES autor (CODIGO),
  ADD CONSTRAINT livro_isbn FOREIGN KEY (livro_isbn) REFERENCES livro (ISBN);

--
-- Restrições para tabelas emprestimo
--
ALTER TABLE emprestimo
  ADD CONSTRAINT FK_exemplar_codigo FOREIGN KEY (EXEMPLAR_CODIGO) REFERENCES exemplar (CODIGO),
  ADD CONSTRAINT FK_exemplar_livro_isbn FOREIGN KEY (EXEMPLAR_LIVRO_ISBN) REFERENCES exemplar (LIVRO_ISBN),
  ADD CONSTRAINT FK_usuario_cpf FOREIGN KEY (USUARIO_CPF) REFERENCES usuario (cpf);

--
-- Restrições para tabelas exemplar
--
ALTER TABLE exemplar
  ADD CONSTRAINT FK_livro_isbn FOREIGN KEY (LIVRO_ISBN) REFERENCES livro (ISBN);

--
-- Restrições para tabelas livro
--
ALTER TABLE livro
  ADD CONSTRAINT FK_editora_codigo FOREIGN KEY (EDITORA_CODIGO) REFERENCES editora (CODIGO),
  ADD CONSTRAINT FK_genero_codigo FOREIGN KEY (GENERO_CODIGO) REFERENCES genero (CODIGO);

--
-- Restrições para tabelas usuario
--
ALTER TABLE usuario
  ADD CONSTRAINT FK_PERFIL_CODIGO FOREIGN KEY (perfil_codigo) REFERENCES perfil (CODIGO);
COMMIT;
