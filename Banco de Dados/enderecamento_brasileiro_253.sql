
--
-- Banco de dados:  enderecamento_brasileiro_253 
--

-- --------------------------------------------------------

--
-- Estrutura para tabela  bairro 
--

CREATE TABLE  bairro  (
   id  int(11) NOT NULL,
   nome  varchar(50) DEFAULT NULL,
   cidade_ID  int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela  bairro 
--

INSERT INTO  bairro  ( id ,  nome ,  cidade_ID ) VALUES
(1, 'Centro', 1),
(2, 'Ponta Verde', 2),
(3, 'Santa Rita', 3),
(4, 'Adrianópolis', 4),
(5, 'Barra', 5),
(6, 'Aldeota', 6),
(7, 'Asa Sul', 7),
(8, 'Praia do Canto', 8),
(9, 'Setor Bueno', 9),
(10, 'Renascença', 10),
(11, 'Centro Norte', 11),
(12, 'Centro', 12),
(13, 'Savassi', 13),
(14, 'Umarizal', 14),
(15, 'Tambaú', 15),
(16, 'Batel', 16),
(17, 'Boa Viagem', 17),
(18, 'Centro', 18),
(19, 'Copacabana', 19),
(20, 'Ponta Negra', 20),
(21, 'Moinhos de Vento', 21),
(22, 'Centro', 22),
(23, 'Centro', 23),
(24, 'Centro', 24),
(25, 'Vila Mariana', 25),
(26, 'Atalaia', 26),
(27, 'Plano Diretor Sul', 27);

-- --------------------------------------------------------

--
-- Estrutura para tabela  cidade 
--

CREATE TABLE  cidade  (
   id  int(11) NOT NULL,
   nome  varchar(50) DEFAULT NULL,
   codigo_IBGE  int(11) DEFAULT NULL,
   estado_ID  int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela  cidade 
--

INSERT INTO  cidade  ( id ,  nome ,  codigo_IBGE ,  estado_ID ) VALUES
(1, 'Rio Branco', 1200401, 1),
(2, 'Maceió', 2704302, 2),
(3, 'Macapá', 1600303, 3),
(4, 'Manaus', 1302603, 4),
(5, 'Salvador', 2927408, 5),
(6, 'Fortaleza', 2304400, 6),
(7, 'Brasília', 5300108, 7),
(8, 'Vitória', 3205309, 8),
(9, 'Goiânia', 5208707, 9),
(10, 'São Luís', 2111300, 10),
(11, 'Cuiabá', 5103403, 11),
(12, 'Campo Grande', 5002704, 12),
(13, 'Belo Horizonte', 3106200, 13),
(14, 'Belém', 1501402, 14),
(15, 'João Pessoa', 2507507, 15),
(16, 'Curitiba', 4106902, 16),
(17, 'Recife', 2611606, 17),
(18, 'Teresina', 2211001, 18),
(19, 'Rio de Janeiro', 3304557, 19),
(20, 'Natal', 2408102, 20),
(21, 'Porto Alegre', 4314902, 21),
(22, 'Porto Velho', 1100205, 22),
(23, 'Boa Vista', 1400100, 23),
(24, 'Florianópolis', 4205407, 24),
(25, 'São Paulo', 3550308, 25),
(26, 'Aracaju', 2800308, 26),
(27, 'Palmas', 1721000, 27);

-- --------------------------------------------------------

--
-- Estrutura para tabela  endereco 
--

CREATE TABLE  endereco  (
   id  int(11) NOT NULL,
   numero  int(11) DEFAULT NULL,
   complemento  varchar(100) DEFAULT NULL,
   logradouro_ID  int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela  endereco 
--

INSERT INTO  endereco  ( id ,  numero ,  complemento ,  logradouro_ID ) VALUES
(1, 101, 'Apartamento 201', 1),
(2, 1500, 'Prédio Comercial', 2),
(3, 320, 'Casa', 3),
(4, 2500, 'Shopping', 4),
(5, 123, 'Edifício Bahia', 5),
(6, 900, 'Sala 502', 6),
(7, 102, 'Bloco A', 7),
(8, 456, 'Apartamento 203', 8),
(9, 1234, 'Condomínio Bueno', 9),
(10, 800, 'Sala 1203', 10),
(11, 12, 'Casa 2', 11),
(12, 2300, 'Andar 3', 12),
(13, 45, 'Cobertura', 13),
(14, 890, 'Edifício Pará', 14),
(15, 300, 'Cobertura', 15),
(16, 1270, 'Sala 103', 16),
(17, 550, 'Sala 101', 17),
(18, 1000, 'Sala 402', 18),
(19, 2800, 'Apartamento 802', 19),
(20, 50, 'Ponto Comercial', 20),
(21, 15, 'Loja 1', 21),
(22, 555, 'Apartamento 2', 22),
(23, 70, 'Sala 200', 23),
(24, 33, 'Casa', 24),
(25, 1500, 'Escritório', 25),
(26, 42, 'Apartamento 1', 26),
(27, 950, 'Bloco C', 27);

-- --------------------------------------------------------

--
-- Estrutura para tabela  estado 
--

CREATE TABLE  estado  (
   id  int(11) NOT NULL,
   nome  varchar(50) DEFAULT NULL,
   codigo_IBGE  int(11) DEFAULT NULL,
   pais_ID  int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela  estado 
--

INSERT INTO  estado  ( id ,  nome ,  codigo_IBGE ,  pais_ID ) VALUES
(1, 'Acre', 12, 1),
(2, 'Alagoas', 27, 1),
(3, 'Amapá', 16, 1),
(4, 'Amazonas', 13, 1),
(5, 'Bahia', 29, 1),
(6, 'Ceará', 23, 1),
(7, 'Distrito Federal', 53, 1),
(8, 'Espírito Santo', 32, 1),
(9, 'Goiás', 52, 1),
(10, 'Maranhão', 21, 1),
(11, 'Mato Grosso', 51, 1),
(12, 'Mato Grosso do Sul', 50, 1),
(13, 'Minas Gerais', 31, 1),
(14, 'Pará', 15, 1),
(15, 'Paraíba', 25, 1),
(16, 'Paraná', 41, 1),
(17, 'Pernambuco', 26, 1),
(18, 'Piauí', 22, 1),
(19, 'Rio de Janeiro', 33, 1),
(20, 'Rio Grande do Norte', 24, 1),
(21, 'Rio Grande do Sul', 43, 1),
(22, 'Rondônia', 11, 1),
(23, 'Roraima', 14, 1),
(24, 'Santa Catarina', 42, 1),
(25, 'São Paulo', 35, 1),
(26, 'Sergipe', 28, 1),
(27, 'Tocantins', 17, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela  logradouro 
--

CREATE TABLE  logradouro  (
   id  int(11) NOT NULL,
   nome  varchar(50) DEFAULT NULL,
   tipo  varchar(30) DEFAULT NULL,
   cep  varchar(9) DEFAULT NULL,
   bairro_ID  int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela  logradouro 
--

INSERT INTO  logradouro  ( id ,  nome ,  tipo ,  cep ,  bairro_ID ) VALUES
(1, 'Rua Acre', 'Rua', '69900-000', 1),
(2, 'Avenida Doutor Antônio Gouveia', 'Avenida', '57035-170', 2),
(3, 'Rua Leopoldo Machado', 'Rua', '68900-070', 3),
(4, 'Avenida Djalma Batista', 'Avenida', '69050-010', 4),
(5, 'Avenida Sete de Setembro', 'Avenida', '40060-001', 5),
(6, 'Rua Barão de Studart', 'Rua', '60120-000', 6),
(7, 'SQS 102', 'Quadra', '70342-000', 7),
(8, 'Avenida Nossa Senhora da Penha', 'Avenida', '29055-131', 8),
(9, 'Avenida T-63', 'Avenida', '74230-100', 9),
(10, 'Avenida Colares Moreira', 'Avenida', '65075-441', 10),
(11, 'Rua Barão de Melgaço', 'Rua', '78005-300', 11),
(12, 'Avenida Afonso Pena', 'Avenida', '79002-072', 12),
(13, 'Rua Pernambuco', 'Rua', '30130-150', 13),
(14, 'Avenida Senador Lemos', 'Avenida', '66050-000', 14),
(15, 'Avenida Almirante Tamandaré', 'Avenida', '58039-010', 15),
(16, 'Avenida Sete de Setembro', 'Avenida', '80060-070', 16),
(17, 'Rua Setúbal', 'Rua', '51030-010', 17),
(18, 'Avenida Frei Serafim', 'Avenida', '64001-020', 18),
(19, 'Avenida Atlântica', 'Avenida', '22021-000', 19),
(20, 'Avenida Roberto Freire', 'Avenida', '59090-000', 20),
(21, 'Rua Padre Chagas', 'Rua', '90570-080', 21),
(22, 'Rua José Bonifácio', 'Rua', '76801-050', 22),
(23, 'Avenida Ene Garcez', 'Avenida', '69301-000', 23),
(24, 'Rua Felipe Schmidt', 'Rua', '88010-001', 24),
(25, 'Avenida Paulista', 'Avenida', '01311-000', 25),
(26, 'Avenida Beira Mar', 'Avenida', '49035-000', 26),
(27, 'Avenida Teotônio Segurado', 'Avenida', '77015-590', 27);

-- --------------------------------------------------------

--
-- Estrutura para tabela  pais 
--

CREATE TABLE  pais  (
   id  int(11) NOT NULL,
   nome  varchar(50) DEFAULT NULL,
   codigo_ISO  varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela  pais 
--

INSERT INTO  pais  ( id ,  nome ,  codigo_ISO ) VALUES
(1, 'Brasil', 'BR');

-- --------------------------------------------------------

--
-- Estrutura para tabela  pessoa 
--

CREATE TABLE  pessoa  (
   id  int(11) NOT NULL,
   nome  varchar(50) DEFAULT NULL,
   cpf  varchar(15) DEFAULT NULL,
   endereco_ID  int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela  pessoa 
--

INSERT INTO  pessoa  ( id ,  nome ,  cpf ,  endereco_ID ) VALUES
(1, 'Ana Silva', '123.456.789-00', 1),
(2, 'Carlos Souza', '987.654.321-00', 2),
(3, 'Mariana Costa', '111.222.333-44', 3),
(4, 'João Pereira', '222.333.444-55', 4),
(5, 'Luciana Almeida', '333.444.555-66', 5),
(6, 'Fernando Lima', '444.555.666-77', 6),
(7, 'Patrícia Mendes', '555.666.777-88', 7),
(8, 'Roberto Santos', '666.777.888-99', 8),
(9, 'Juliana Oliveira', '777.888.999-10', 9),
(10, 'Ricardo Martins', '888.999.000-11', 10),
(11, 'Fernanda Rocha', '999.000.111-12', 11),
(12, 'Sérgio Dias', '000.111.222-13', 12),
(13, 'Aline Nascimento', '111.222.333-14', 13),
(14, 'Leonardo Ferreira', '222.333.444-15', 14),
(15, 'Tatiane Carvalho', '333.444.555-16', 15),
(16, 'Felipe Andrade', '444.555.666-17', 16),
(17, 'Daniele Ribeiro', '555.666.777-18', 17),
(18, 'Rafael Gomes', '666.777.888-19', 18),
(19, 'Bruno Pacheco', '777.888.999-20', 19),
(20, 'Priscila Torres', '888.999.000-21', 20),
(21, 'Cláudia Almeida', '999.000.111-22', 21),
(22, 'Gustavo Cardoso', '000.111.222-23', 22),
(23, 'Viviane Lima', '111.222.333-24', 23),
(24, 'Tiago Rocha', '222.333.444-25', 24),
(25, 'Renata Mendes', '333.444.555-26', 25),
(26, 'Marcelo Silva', '444.555.666-27', 26),
(27, 'Carla Santos', '555.666.777-28', 27);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela  bairro 
--
ALTER TABLE  bairro 
  ADD PRIMARY KEY ( id ),
  ADD KEY  FK_cidade_ID  ( cidade_ID );

--
-- Índices de tabela  cidade 
--
ALTER TABLE  cidade 
  ADD PRIMARY KEY ( id ),
  ADD KEY  FK_estado_ID  ( estado_ID );

--
-- Índices de tabela  endereco 
--
ALTER TABLE  endereco 
  ADD PRIMARY KEY ( id ),
  ADD KEY  FK_logradouro_ID  ( logradouro_ID );

--
-- Índices de tabela  estado 
--
ALTER TABLE  estado 
  ADD PRIMARY KEY ( id ),
  ADD KEY  FK_pais_ID  ( pais_ID );

--
-- Índices de tabela  logradouro 
--
ALTER TABLE  logradouro 
  ADD PRIMARY KEY ( id ),
  ADD KEY  FK_bairro_ID  ( bairro_ID );

--
-- Índices de tabela  pais 
--
ALTER TABLE  pais 
  ADD PRIMARY KEY ( id );

--
-- Índices de tabela  pessoa 
--
ALTER TABLE  pessoa 
  ADD PRIMARY KEY ( id ),
  ADD KEY  FK_endereco_ID  ( endereco_ID );

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela  bairro 
--
ALTER TABLE  bairro 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela  cidade 
--
ALTER TABLE  cidade 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela  endereco 
--
ALTER TABLE  endereco 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela  estado 
--
ALTER TABLE  estado 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela  logradouro 
--
ALTER TABLE  logradouro 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela  pais 
--
ALTER TABLE  pais 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela  pessoa 
--
ALTER TABLE  pessoa 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas  bairro 
--
ALTER TABLE  bairro 
  ADD CONSTRAINT  FK_cidade_ID  FOREIGN KEY ( cidade_ID ) REFERENCES  cidade  ( id );

--
-- Restrições para tabelas  cidade 
--
ALTER TABLE  cidade 
  ADD CONSTRAINT  FK_estado_ID  FOREIGN KEY ( estado_ID ) REFERENCES  estado  ( id );

--
-- Restrições para tabelas  endereco 
--
ALTER TABLE  endereco 
  ADD CONSTRAINT  FK_logradouro_ID  FOREIGN KEY ( logradouro_ID ) REFERENCES  logradouro  ( id );

--
-- Restrições para tabelas  estado 
--
ALTER TABLE  estado 
  ADD CONSTRAINT  FK_pais_ID  FOREIGN KEY ( pais_ID ) REFERENCES  pais  ( id );

--
-- Restrições para tabelas  logradouro 
--
ALTER TABLE  logradouro 
  ADD CONSTRAINT  FK_bairro_ID  FOREIGN KEY ( bairro_ID ) REFERENCES  bairro  ( id );

--
-- Restrições para tabelas  pessoa 
--
ALTER TABLE  pessoa 
  ADD CONSTRAINT  FK_endereco_ID  FOREIGN KEY ( endereco_ID ) REFERENCES  endereco  ( id );
COMMIT;