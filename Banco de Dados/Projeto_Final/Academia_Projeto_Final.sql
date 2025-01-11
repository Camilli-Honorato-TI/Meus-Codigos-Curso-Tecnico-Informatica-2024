--
-- Banco de dados: Academia
--

-- --------------------------------------------------------

--
-- Estrutura para tabela alunos
--

CREATE TABLE alunos (
  id_alunos int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  id_mensalidade int(11) NOT NULL,
  Nome_Alunos varchar(100) DEFAULT NULL,
  Genero_Alunos varchar(1) DEFAULT NULL,
  CPF_Alunos varchar(15) DEFAULT NULL,
  RG_Alunos varchar(9) DEFAULT NULL,
  Data_Nasc_Alunos date DEFAULT NULL,
  Telefone_Alunos varchar(15) DEFAULT NULL,
  Email varchar(50) DEFAULT NULL,
  Data_Cadastro date DEFAULT NULL,
  id_bairro int(11) NOT NULL
);

--
-- Despejando dados para a tabela alunos
--

INSERT INTO alunos (Nome_Alunos, Genero_Alunos, CPF_Alunos, RG_Alunos, Data_Nasc_Alunos, Telefone_Alunos, Email, Data_Cadastro, id_bairro, id_mensalidade) VALUES
('João Silva', 'M', '12345678901', 123456789, '1998-05-15', '11987654321', 'joao.silva@example.com', '2023-01-10', 2, 1),
('Maria Oliveira', 'F', '98765432100', 987654321, '1993-08-20', '11912345678', 'maria.oliveira@example.com', '2023-02-15', 100, 2),
('Carlos Souza', 'M', '12312312312', 123123123, '2001-12-30', '11987654322', 'carlos.souza@example.com', '2023-03-05', 20, 3),
('Ana Costa', 'F', '32132132100', 321321321, '1995-04-10', '11998765432', 'ana.costa@example.com', '2023-04-20', 12, 4),
('Pedro Santos', 'M', '45645645654', 456456456, '1988-02-14', '11976543210', 'pedro.santos@example.com', '2023-05-25', 2, 5),
('Lucas Mendes', 'M', '12312312313', 654321987, '1997-01-11', '11923456789', 'lucas.mendes@example.com', '2023-06-15', 51, 6),
('Fernanda Lima', 'F', '32165498700', 987321654, '1991-03-22', '11934567890', 'fernanda.lima@example.com', '2023-06-20', 5, 7),
('Gustavo Almeida', 'M', '45612378900', 789654123, '1994-07-09', '11945678901', 'gustavo.almeida@example.com', '2023-07-01', 86, 8),
('Juliana Ferreira', 'F', '65498732100', 321456987, '1999-11-05', '11956789012', 'juliana.ferreira@example.com', '2023-07-15', 68, 9),
('Rafael Oliveira', 'M', '78912345600', 123987456, '1996-06-17', '11967890123', 'rafael.oliveira@example.com', '2023-07-30', 91, 10),
('Patrícia Santos', 'F', '32112345678', 456789321, '1992-09-13', '11978901234', 'patricia.santos@example.com', '2023-08-01', 81, 11),
('Felipe Ramos', 'M', '65432109876', 987654321, '2000-10-25', '11989012345', 'felipe.ramos@example.com', '2023-08-10', 133, 12),
('Renata Souza', 'F', '12345678902', 654789123, '1989-02-28', '11990123456', 'renata.souza@example.com', '2023-08-20', 132, 13),
('Thiago Pires', 'M', '98765432101', 321987654, '1993-04-04', '11901234567', 'thiago.pires@example.com', '2023-08-25', 131, 14),
('Bruna Costa', 'F', '45678912312', 654321987, '2002-05-19', '11912345678', 'bruna.costa@example.com', '2023-09-01', 13, 15),
('Eduardo Martins', 'M', '32132112300', 123123654, '1995-07-30', '11923456789', 'eduardo.martins@example.com', '2023-09-05', 130, 16),
('Camila Andrade', 'F', '65498712300', 987654321, '1990-08-15', '11934567890', 'camila.andrade@example.com', '2023-09-10', 15, 17),
('Leonardo Silva', 'M', '12312345678', 456987321, '1997-09-23', '11945678901', 'leonardo.silva@example.com', '2023-09-15', 65, 18),
('Michele Dias', 'F', '32165498701', 789321456, '2001-12-12', '11956789012', 'michele.dias@example.com', '2023-09-20', 55, 19),
('Julio César', 'M', '45612378901', 123456789, '1988-03-14', '11967890123', 'julio.cesar@example.com', '2023-09-25', 45, 20),
('Sofia Lima', 'F', '98712345600', 654321987, '1994-01-29', '11978901234', 'sofia.lima@example.com', '2023-10-01', 99, 21),
('Roberto Ferreira', 'M', '12345678903', 789654321, '1983-06-20', '11989012345', 'roberto.ferreira@example.com', '2023-10-05', 87, 22),
('Patrícia Almeida', 'F', '32165432100', 123987456, '2000-07-15', '11990123456', 'patricia.almeida@example.com', '2023-10-10', 86, 23),
('Bruno Martins', 'M', '65412378901', 654123987, '1992-10-22', '11901234567', 'bruno.martins@example.com', '2023-10-15', 87, 24),
('Tatiane Rodrigues', 'F', '78932145678', 987321654, '1996-11-03', '11912345678', 'tatiane.rodrigues@example.com', '2023-10-20', 86, 25),
('Marcos Paulo', 'M', '45678901234', 123654789, '1989-12-17', '11923456789', 'marcos.paulo@example.com', '2023-10-25', 85, 26),
('Larissa Freitas', 'F', '32198765432', 654789123, '2001-09-28', '11934567890', 'larissa.freitas@example.com', '2023-10-30', 84, 27),
('Claudio Ramos', 'M', '65432145678', 789123456, '1994-04-16', '11945678901', 'claudio.ramos@example.com', '2023-11-01', 83, 28),
('Aline Cardoso', 'F', '98765432123', 123987456, '1992-02-20', '11956789012', 'aline.cardoso@example.com', '2023-11-05', 82, 29),
('Vinícius Mendes', 'M', '12345678904', 321654987, '1995-03-11', '11967890123', 'vinicius.mendes@example.com', '2023-11-10', 80, 30),
('Evelyn Dias', 'F', '32132132100', 456789123, '1997-05-06', '11978901234', 'evelyn.dias@example.com', '2023-11-15', 79, 31);

-- --------------------------------------------------------

--
-- Estrutura para tabela avaliacao_fisica
--

CREATE TABLE avaliacao_fisica (
  id_avaliacao int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  id_aluno int(11) DEFAULT NULL,
  id_Personal int(11) DEFAULT NULL,
  peso float DEFAULT NULL,
  valor_massa_muscular float DEFAULT NULL,
  valor_massa_gorda float DEFAULT NULL,
  Tam_tricepsD float DEFAULT NULL,
  Tam_tricepsE float DEFAULT NULL,
  Tam_peitoral float DEFAULT NULL,
  tam_cintura float DEFAULT NULL,
  tam_quadril float DEFAULT NULL,
  tam_bracoD float DEFAULT NULL,
  tam_bracoE float DEFAULT NULL,
  tam_panturrilhaE float DEFAULT NULL,
  tam_panturrilhaD float DEFAULT NULL,
  tam_abdomen float DEFAULT NULL,
  altura float DEFAULT NULL
);

--
-- Despejando dados para a tabela avaliacao_fisica
--

INSERT INTO avaliacao_fisica (id_aluno, id_Personal, peso, valor_massa_muscular, valor_massa_gorda, Tam_tricepsE, Tam_tricepsD, Tam_peitoral, tam_cintura, tam_quadril, tam_bracoD, tam_bracoE, tam_panturrilhaE, tam_panturrilhaD, tam_abdomen, altura) VALUES
(1, 1, 70.5, 32.0, 18.5, 30.0, 31.5, 100.0, 80.0, 95.0, 32.0, 31.5, 38.0, 39.0, 28.5, 1.75),
(2, 2, 85.0, 34.5, 21.0, 32.5, 33.0, 105.0, 85.0, 98.0, 34.5, 33.0, 40.0, 41.0, 30.5, 1.80),
(3, 3, 60.0, 28.0, 15.0, 29.0, 30.0, 95.0, 75.0, 90.0, 30.0, 29.5, 36.0, 37.0, 26.0, 1.70),
(4, 1, 92.5, 36.5, 23.0, 34.0, 34.5, 110.0, 90.0, 105.0, 35.0, 34.0, 41.5, 42.5, 32.0, 1.85),
(5, 2, 77.0, 31.0, 17.5, 31.5, 32.5, 98.0, 78.5, 92.0, 32.0, 31.5, 37.5, 38.0, 27.5, 1.73),
(6, 3, 80.5, 33.5, 19.0, 30.5, 31.0, 102.0, 82.0, 97.0, 33.5, 32.0, 39.0, 40.0, 29.0, 1.77),
(7, 1, 65.0, 29.5, 16.0, 28.5, 29.0, 97.5, 76.5, 91.0, 31.0, 30.0, 36.5, 37.5, 27.0, 1.68),
(8, 2, 88.0, 35.0, 22.5, 33.5, 34.0, 108.0, 89.0, 104.0, 34.0, 33.0, 41.0, 42.0, 31.5, 1.80),
(9, 3, 72.5, 30.0, 17.0, 31.0, 32.0, 99.0, 80.0, 93.5, 32.5, 31.5, 37.0, 38.5, 28.0, 1.74),
(10, 1, 95.5, 37.0, 24.5, 35.5, 36.0, 113.0, 91.0, 106.0, 36.0, 35.5, 42.5, 43.5, 33.0, 1.86),
(11, 2, 70.0, 32.5, 18.0, 30.0, 31.0, 100.5, 79.0, 94.5, 31.5, 30.5, 38.0, 39.0, 27.5, 1.71),
(12, 3, 85.0, 34.0, 20.5, 32.0, 33.0, 104.0, 83.5, 99.0, 34.5, 33.5, 40.0, 41.0, 30.0, 1.78),
(13, 1, 60.0, 27.5, 14.0, 28.5, 29.5, 94.0, 74.5, 89.5, 29.5, 28.0, 35.0, 36.0, 25.5, 1.69),
(14, 2, 90.0, 36.0, 22.0, 34.5, 35.0, 109.5, 87.0, 102.0, 35.5, 34.0, 41.5, 42.5, 31.5, 1.82),
(15, 3, 78.5, 32.0, 18.5, 31.0, 32.0, 101.5, 80.5, 94.5, 32.5, 31.0, 38.5, 39.5, 28.5, 1.74),
(16, 1, 67.5, 30.0, 16.5, 29.5, 30.0, 98.5, 77.0, 91.0, 30.5, 29.5, 37.0, 38.0, 27.0, 1.72),
(17, 2, 82.0, 33.5, 19.5, 32.0, 32.5, 105.0, 84.5, 98.0, 33.0, 32.5, 39.0, 40.0, 29.5, 1.76),
(18, 3, 71.0, 29.5, 17.0, 30.5, 31.0, 96.5, 77.5, 91.5, 31.0, 30.0, 36.5, 37.5, 27.5, 1.71),
(19, 1, 86.0, 34.5, 21.5, 33.0, 34.0, 107.0, 86.0, 101.0, 34.5, 33.5, 40.5, 41.5, 30.5, 1.79),
(20, 2, 74.5, 31.5, 18.5, 30.0, 31.5, 98.5, 79.5, 94.0, 32.5, 31.5, 37.5, 38.5, 27.0, 1.72),
(21, 3, 79.5, 32.5, 19.0, 31.5, 32.0, 100.5, 80.5, 96.0, 33.0, 32.0, 38.5, 39.5, 28.0, 1.75),
(22, 1, 91.0, 35.5, 23.0, 34.0, 35.0, 110.5, 90.5, 105.0, 35.5, 34.0, 42.0, 43.0, 32.5, 1.83),
(23, 2, 68.0, 30.0, 16.5, 29.0, 30.0, 97.0, 76.0, 90.0, 31.0, 30.0, 36.5, 37.5, 26.0, 1.70),
(24, 3, 93.0, 37.5, 24.0, 35.0, 36.0, 112.0, 92.0, 107.0, 36.5, 35.5, 43.5, 44.0, 33.5, 1.87),
(25, 1, 73.0, 32.0, 19.0, 31.0, 32.0, 99.0, 78.0, 93.0, 32.0, 31.0, 37.0, 38.0, 27.0, 1.74),
(26, 2, 77.5, 33.0, 20.0, 32.5, 33.0, 102.0, 81.0, 96.0, 33.5, 32.0, 39.5, 40.5, 29.0, 1.76),
(27, 3, 65.5, 29.0, 16.5, 29.5, 30.0, 98.0, 77.0, 91.0, 30.5, 29.5, 36.0, 37.0, 26.5, 1.70),
(28, 1, 92.0, 36.5, 23.5, 34.5, 35.0, 111.5, 90.5, 104.0, 35.5, 34.0, 42.5, 43.5, 32.0, 1.85),
(29, 2, 71.5, 30.5, 17.5, 30.0, 31.0, 100.0, 79.5, 93.5, 32.5, 31.5, 37.0, 38.0, 28.0, 1.72),
(30, 3, 78.0, 32.0, 18.0, 31.0, 31.5, 101.5, 80.0, 95.0, 33.0, 32.5, 38.0, 39.0, 28.5, 1.74),
(31, 1, 85.0, 34.0, 21.0, 32.0, 33.0, 104.0, 83.0, 98.0, 34.5, 33.0, 40.5, 41.0, 30.0, 1.78);

-- --------------------------------------------------------

--
-- Estrutura para tabela bairro
--

CREATE TABLE bairro (
  id_bairro int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome varchar(255) DEFAULT NULL,
  id_cidade int(11) NOT NULL
);

--
-- Despejando dados para a tabela bairro
--

INSERT INTO bairro (nome, id_cidade) VALUES
('Bairro Ana Maria', 1),
('Bairro Bosque do Repouso', 1),
('Bairro Catarinense', 1),
('Bairro Cidade Mineira Velha', 1),
('Bairro Cristo Redentor', 1),
('Bairro Distrito Industrial', 1),
('Bairro Imigrantes', 1),
('Bairro Jardim Maristela', 1),
('Bairro Linha Anta', 1),
('Bairro Mãe Luzia', 1),
('Bairro Milanese', 1),
('Bairro Mina União', 1),
('Bairro Nossa Senhora da Salete', 1),
('Bairro Pedro Zanivan', 1),
('Bairro Primeira Linha', 1),
('Bairro Quarta Linha', 1),
('Bairro Sangão', 1),
('Bairro Santa Luzia', 1),
('Bairro São Domingos', 1),
('Bairro São Marcos', 1),
('Bairro Tereza Cristina', 1),
('Bairro Vila Floresta', 1),
('Bairro Vila Macarini', 1),
('Bairro Vila Nova Esperança', 1),
('Bairro Vila Zuleima', 1),
('Localidade Argentina', 1),
('Localidade Coloninha Zili', 1),
('Localidade Jardim Uniao', 1),
('Localidade Mae Luzia', 1),
('Localidade Morro Albino', 1),
('Localidade Sangao', 1),
('Localidade Sao Sebastiao', 1),
('Localidade Vila Manaus', 1),
('Povoado Quarta Linha', 1),
('Localidade Vila Visconde', 1),
('Localidade Verdinho', 1),
('Localidade Santa Luzia', 1),
('Localidade Morro Estevao', 1),
('Localidade Mina do Toco', 1),
('Localidade Laranjinha', 1),
('Localidade Dagostim', 1),
('Localidade Bairro Buenos Aires', 1),
('Bairro Wosocris', 1),
('Bairro Vila Rica', 1),
('Bairro Vila Manaus', 1),
('Bairro Vila Floresta II', 1),
('Bairro Universitário', 1),
('Bairro São Roque', 1),
('Bairro São Francisco', 1),
('Bairro Santo Antônio', 1),
('Bairro Santa Augusta', 1),
('Bairro Recanto Verde', 1),
('Bairro Progresso', 1),
('Bairro Pinheirinho', 1),
('Bairro Nossa Senhora do Carmo', 1),
('Bairro Mineira Nova', 1),
('Bairro Mina Brasil', 1),
('Bairro Maria Céu', 1),
('Bairro Linha Batista', 1),
('Bairro Jardim Montevidéu', 1),
('Bairro Imperatriz', 1),
('Bairro dos Imigrantes', 1),
('Bairro Cruzeiro do Sul', 1),
('Bairro Colonial', 1),
('Bairro Ceará', 1),
('Bairro Brasília', 1),
('Bairro Archimedes Naspolini', 1),
('Bairro Argentina', 1),
('Bairro Buenos Aires', 1),
('Bairro Centro', 1),
('Bairro Coloninha Zilli', 1),
('Bairro Dagostin', 1),
('Bairro Estaçãozinha', 1),
('Bairro Jardim Angélica', 1),
('Bairro Laranjinha', 1),
('Bairro Linha Cabral', 1),
('Bairro Metropol', 1),
('Bairro Mina do Mato', 1),
('Bairro Monte Castelo', 1),
('Bairro Operária Nova', 1),
('Bairro Pio Corrêa', 1),
('Bairro Promorar Vila Vitória', 1),
('Bairro Renascer', 1),
('Bairro Santa Bárbara', 1),
('Bairro São Cristóvão', 1),
('Bairro São João', 1),
('Bairro São Sebastião', 1),
('Bairro Vera Cruz', 1),
('Bairro Vila Francesa', 1),
('Bairro Vila Maria', 1),
('Bairro Vila São José', 1),
('Distrito Rio Maina', 1),
('Localidade Cidade Mineira', 1),
('Localidade Demboski', 1),
('Localidade Linha Batista', 1),
('Localidade Mina Esperanca', 1),
('Localidade Nossa Senhora do Carmo', 1),
('Localidade Sao Jose', 1),
('Localidade Vila Floresta', 1),
('Localidade Vila Zuleima', 1),
('Localidade Wosocris', 1),
('Localidade Vila Francesa', 1),
('Localidade Sao Roque', 1),
('Localidade Primeira Linha Sangao', 1),
('Localidade Mina Uniao', 1),
('Localidade Linha Cabral', 1),
('Localidade Estacaozinha', 1),
('Localidade Cidade Mineira Velha', 1),
('Localidade 1 Linha Sao Joao', 1),
('Bairro Vila Visconde', 1),
('Bairro Vila Miguel', 1),
('Bairro Vila Isabel', 1),
('Bairro Verdinho', 1),
('Bairro São Simão', 1),
('Bairro São Luiz', 1),
('Bairro São Defende', 1),
('Bairro Santa Catarina', 1),
('Bairro Rio Maina', 1),
('Bairro Próspera', 1),
('Bairro Poço Um', 1),
('Bairro Paraíso', 1),
('Bairro Morro Estevão', 1),
('Bairro Mina do Toco', 1),
('Bairro Michel', 1),
('Bairro Lote Seis', 1),
('Bairro Liberdade', 1),
('Bairro Jardim das Paineiras', 1),
('Bairro Fábio Silva', 1),
('Bairro Demboski', 1),
('Bairro Comerciário', 1),
('Bairro Cidade Mineira Nova', 1),
('Bairro Capão Bonito', 1),
('Bairro Boa Vista', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela cidade
--

CREATE TABLE cidade (
  id_cidade int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome varchar(255) DEFAULT NULL
);

--
-- Despejando dados para a tabela cidade
--

INSERT INTO cidade (nome) VALUES
('Criciúma');

-- --------------------------------------------------------

--
-- Estrutura para tabela equipamentos
--

CREATE TABLE equipamentos (
  id_equipamento int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome varchar(100) DEFAULT NULL,
  quantidade int(11) DEFAULT NULL,
  marca varchar(100) DEFAULT NULL
);

--
-- Despejando dados para a tabela equipamentos
--

INSERT INTO equipamentos (nome, quantidade, marca) VALUES
('Bicicleta Ergométrica', 10, 'ProForm'),
('Esteira', 5, 'Life Fitness'),
('Máquina de Leg Press', 4, 'Matrix'),
('Banco de Supino', 8, 'BodySolid'),
('Halteres', 20, 'Ironmaster'),
('Barra de Peso', 15, 'Rogue'),
('Máquina de Remada', 3, 'Hammer Strength'),
('Colchonete', 12, 'Everlast'),
('Corda de Pular', 25, 'Everlast'),
('Máquina de Abdominal', 6, 'Nautilus'),
('Caminhada Elétrica', 7, 'NordicTrack'),
('Máquina de Peitoral', 3, 'Life Fitness'),
('Halteres Ajustáveis', 10, 'Bowflex'),
('Máquina de Abdômen', 4, 'Marcy'),
('Trampolim', 8, 'Stamina'),
('Roda de Exercício', 15, 'ProForm'),
('Bola de Exercício', 20, 'Spry'),
('Banda Elástica', 30, 'TheraBand'),
('Máquina de Correr', 5, 'Sole'),
('Pequena Escada de Agilidade', 10, 'SKLZ'),
('Kettlebell', 12, 'Titan Fitness');

-- --------------------------------------------------------

--
-- Estrutura para tabela exercicios
--

CREATE TABLE exercicios (
  id_exercicios int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome varchar(50) NOT NULL,
  descricao varchar(500) NOT NULL
);

--
-- Despejando dados para a tabela exercicios
--

INSERT INTO exercicios (nome, descricao) VALUES
('Supino', 'Exercício para peitorais, realizado deitado em um banco.'),
('Agachamento', 'Exercício para pernas e glúteos, realizado em pé.'),
('Remada', 'Exercício para costas, realizado com barra ou halteres.'),
('Puxada na Barra', 'Exercício para costas, realizado em uma barra fixa.'),
('Flexão de Braços', 'Exercício para peitorais e tríceps, realizado com o corpo em posição de prancha.'),
('Cadeira Extensora', 'Exercício para quadríceps, realizado sentado em uma máquina.'),
('Leg Press', 'Exercício para pernas, realizado em uma máquina de leg press.'),
('Abdominal', 'Exercício para o abdômen, realizado deitado.'),
('Corda de Pular', 'Exercício cardiovascular, realizado pulando uma corda.'),
('Burpee', 'Exercício funcional que combina agachamento, flexão e salto.'),
('Levantamento Terra', 'Exercício para a cadeia posterior, realizado com barra.'),
('Tríceps na Polia', 'Exercício para tríceps, realizado em pé com polia.'),
('Prancha', 'Exercício isométrico para o core, realizado em posição de prancha.'),
('Elevação de Panturrilha', 'Exercício para panturrilhas, realizado em pé ou sentado.'),
('Desenvolvimento de Ombros', 'Exercício para ombros, realizado com halteres ou barra.'),
('Stiff', 'Exercício para posterior de coxa, realizado com barra ou halteres.'),
('Rosca Direta', 'Exercício para bíceps, realizado com barra.'),
('Fly', 'Exercício para peitorais, realizado com halteres.'),
('Abdução de Quadril', 'Exercício para glúteos, realizado em pé ou deitado.'),
('Agachamento Frontal', 'Variante do agachamento com a barra na frente.'),
('Escalada no Solo', 'Exercício funcional que simula escalada.'),
('Ponte', 'Exercício para glúteos e core, realizado deitado.'),
('Kettlebell Swing', 'Exercício para todo o corpo, realizado com kettlebell.'),
('Tire Flip', 'Exercício funcional que envolve girar um pneu pesado.'),
('Battle Rope', 'Exercício cardiovascular com cordas.'),
('Pull-up', 'Exercício para costas, realizado em barra fixa.'),
('Box Jump', 'Exercício pliométrico, saltando em uma caixa.'),
('Wall Sit', 'Exercício isométrico para as pernas, encostado na parede.'),
('Sit-up', 'Versão de abdominal com movimento de subida.'),
('Agachamento com Halteres', 'Agachamento realizado segurando halteres.'),
('Crossover', 'Exercício para peitorais, realizado em polia cruzada.');

-- --------------------------------------------------------

--
-- Estrutura para tabela forma_pagamento
--

CREATE TABLE forma_pagamento (
  id_forma_pag int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  forma varchar(30) NOT NULL
);

--
-- Despejando dados para a tabela forma_pagamento
--

INSERT INTO forma_pagamento (forma) VALUES
('Cartão Crédito'),
('Cartão Débito'),
('Dinheiro'),
('Boleto'),
('PIX');

-- --------------------------------------------------------

--
-- Estrutura para tabela mensalidade
--

CREATE TABLE mensalidade (
  id_mensalidade int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  preco int(11) DEFAULT NULL,
  situacao varchar(50) DEFAULT NULL,
  meses_pagos int(11) NOT NULL,
  id_forma_pagamento int(11) NOT NULL,
  id_modalidade int(11) NOT NULL
);

--
-- Despejando dados para a tabela mensalidade
--

INSERT INTO mensalidade (preco, situacao, meses_pagos, id_forma_pagamento, id_modalidade) VALUES
(150, 'Ativo', 1, 1, 1),
(540, 'Ativo', 3, 1, 1),
(1080, 'Inativo', 6, 1, 1),
(2400, 'Ativo', 12, 1, 1),
(320, 'Ativo', 2, 1, 1),
(180, 'Ativo', 1, 1, 2),
(1020, 'Inativo', 6, 1, 2),
(630, 'Ativo', 3, 2, 2),
(2400, 'Ativo', 12, 2, 2),
(260, 'Inativo', 2, 2, 2),
(450, 'Ativo', 3, 2, 3),
(360, 'Ativo', 6, 2, 3),
(150, 'Inativo', 1, 2, 3),
(2400, 'Ativo', 12, 2, 3),
(320, 'Ativo', 2, 3, 3),
(540, 'Ativo', 3, 5, 4),
(1080, 'Ativo', 6, 3, 4),
(2400, 'Ativo', 12, 3, 4),
(150, 'Ativo', 1, 3, 4),
(450, 'Inativo', 3, 3, 4),
(200, 'Ativo', 1, 3, 5),
(600, 'Ativo', 3, 4, 5),
(1200, 'Ativo', 6, 4, 5),
(2400, 'Inativo', 12, 4, 5),
(300, 'Ativo', 2, 4, 5),
(400, 'Ativo', 3, 4, 1),
(180, 'Inativo', 1, 5, 1),
(720, 'Ativo', 6, 5, 1),
(2400, 'Ativo', 12, 5, 1),
(150, 'Ativo', 1, 5, 1),
(480, 'Ativo', 4, 5, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela modalidade
--

CREATE TABLE modalidade (
  id_modalidade int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome_modalidade varchar(255) DEFAULT NULL
) ;

--
-- Despejando dados para a tabela modalidade
--

INSERT INTO modalidade (nome_modalidade) VALUES
('musculação'),
('funcional'),
('crossfit'),
('dança'),
('pilates');

-- --------------------------------------------------------

--
-- Estrutura para tabela personal
--

CREATE TABLE personal (
  id_Pers int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Nome_Pers varchar(100) DEFAULT NULL,
  Genero_Pers varchar(1) DEFAULT NULL,
  id_bairro int(11) DEFAULT NULL,
  CPF_Pers varchar(11) DEFAULT NULL,
  RG_Pers varchar(11) DEFAULT NULL,
  Data_Nasc_Pers date DEFAULT NULL,
  Telefone_Pers varchar(11) DEFAULT NULL,
  Email varchar(50) DEFAULT NULL,
  Data_Inicio date DEFAULT NULL,
  Hora_Trabalhada float(11) DEFAULT NULL
) ;

--
-- Despejando dados para a tabela personal
--

INSERT INTO personal (Nome_Pers, Genero_Pers, id_bairro, CPF_Pers, RG_Pers, Data_Nasc_Pers, Telefone_Pers, Email, Data_Inicio, Hora_Trabalhada) VALUES
('Lucas Almeida', 'M', 54, '12345678901', 123456789, '1995-04-10', '11987654321', 'lucas.almeida@example.com', '2023-01-10', 8),
('Fernanda Costa', 'F', 101, '98765432100', 987654321, '1991-06-15', '11912345678', 'fernanda.costa@example.com', '2023-02-15', 8),
('Carlos Silva', 'M', 3, '32132132100', 321321321, '1993-08-20', '11987654322', 'carlos.silva@example.com', '2023-03-05', 8),
('Ana Pereira', 'F', 8, '45645645654', 456456456, '1996-12-30', '11998765432', 'ana.pereira@example.com', '2023-04-20', 8),
('Pedro Santos', 'M', 10, '65432198765', 654321987, '1988-02-14', '11976543210', 'pedro.santos@example.com', '2023-05-25', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela planos_de_treino
--

CREATE TABLE planos_de_treino (
  id_plano int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  id_aluno int(11) DEFAULT NULL,
  id_personal int(11) DEFAULT NULL,
  id_exercicios int(11) DEFAULT NULL,
  id_equipamentos int(11) NOT NULL
) ;

--
-- Despejando dados para a tabela planos_de_treino
--

INSERT INTO planos_de_treino (id_aluno, id_personal, id_exercicios, id_equipamentos) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 1, 6, 6),
(7, 2, 7, 7),
(8, 3, 8, 8),
(9, 4, 9, 9),
(10, 5, 10, 10),
(11, 1, 11, 11),
(12, 2, 12, 12),
(13, 3, 13, 13),
(14, 4, 14, 14),
(15, 5, 15, 15),
(16, 1, 16, 16),
(17, 2, 17, 17),
(18, 3, 18, 18),
(19, 4, 19, 19),
(20, 5, 20, 20),
(21, 1, 21, 21),
(22, 2, 22, 1),
(23, 3, 23, 2),
(24, 4, 24, 3),
(25, 5, 1, 4),
(26, 1, 2, 5),
(27, 2, 3, 6),
(28, 3, 4, 7),
(29, 4, 5, 8),
(30, 5, 6, 9),
(31, 1, 7, 10);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas avaliacao_fisica
--
ALTER TABLE avaliacao_fisica
  ADD CONSTRAINT fk_alunos FOREIGN KEY (id_aluno) REFERENCES alunos (id_alunos),
  ADD CONSTRAINT fk_personal FOREIGN KEY (id_Personal) REFERENCES personal (id_Pers);

--
-- Restrições para tabelas bairro
--
ALTER TABLE bairro
  ADD CONSTRAINT FK_cidade FOREIGN KEY (id_cidade) REFERENCES cidade (id_cidade);

--
-- Restrições para tabelas personal
--
ALTER TABLE personal
  ADD CONSTRAINT FK_bairro_ FOREIGN KEY (id_bairro) REFERENCES bairro (id_bairro);

--
-- Restrições para tabelas mensalidade
--
ALTER TABLE mensalidade
  ADD CONSTRAINT FK_forma_pag FOREIGN KEY (id_forma_pagamento) REFERENCES forma_pagamento (id_forma_pag),
  ADD CONSTRAINT FK_modalidades FOREIGN KEY (id_modalidade) REFERENCES modalidade (id_modalidade);

--
-- Restrições para tabelas planos_de_treino
--
ALTER TABLE planos_de_treino
  ADD CONSTRAINT FK__personal FOREIGN KEY (id_personal) REFERENCES personal (id_Pers),
  ADD CONSTRAINT FK_aluno FOREIGN KEY (id_aluno) REFERENCES alunos (id_alunos),
  ADD CONSTRAINT FK_equipamento FOREIGN KEY (id_equipamentos) REFERENCES equipamentos (id_equipamento),
  ADD CONSTRAINT fk_exercicios FOREIGN KEY (id_exercicios) REFERENCES exercicios (id_exercicios);

--
-- Restrições para tabelas alunos
--
ALTER TABLE alunos
  ADD CONSTRAINT FK_mensalidade FOREIGN KEY (id_mensalidade) REFERENCES mensalidade (id_mensalidade),
  ADD CONSTRAINT FK_bairro FOREIGN KEY (id_bairro) REFERENCES bairro (id_bairro);
COMMIT;
