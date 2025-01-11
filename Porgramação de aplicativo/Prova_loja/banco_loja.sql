--
-- Banco de dados: banco_loja
--

-- --------------------------------------------------------

--
-- Estrutura para tabela produtos
--

CREATE TABLE produtos (
  id_produto int(11) NOT NULL,
  nome varchar(200) NOT NULL,
  unid_medida char(2) NOT NULL,
  marca varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela produtos
--

INSERT INTO produtos (id_produto, nome, unid_medida, marca) VALUES
(1, 'Base', 'ml', 'Mari Maria Makeup'),
(2,'Base', 'ml', 'Ruby Rose'),
(3, 'Corretivo', 'ml', 'Ruby Rose'),
(4, 'SHampoo', 'l', 'Elseve'),
(5, 'Creme de mão', 'g', 'Cuide-se Bem'),
(6, 'Creme corporal', 'l', 'Oboticario'),
(7, 'Perfume', 'ml', 'Egeo'),
(8, 'Creme corporal', 'ml', 'Lily');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela produtos
--
ALTER TABLE produtos
  ADD PRIMARY KEY (id_produto);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela produtos
--
ALTER TABLE produtos
  MODIFY id_produto int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

