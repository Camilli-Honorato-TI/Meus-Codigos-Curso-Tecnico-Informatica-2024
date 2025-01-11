--
-- Banco de dados:  meios_transporte_253 
--

-- --------------------------------------------------------

--
-- Estrutura para tabela  classificacao_transporte 
--

CREATE TABLE  classificacao_transporte  (
   id  int(11) NOT NULL,
   descricao  varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela  classificacao_transporte 
--

INSERT INTO  classificacao_transporte  ( id ,  descricao ) VALUES
(1, 'Passeio'),
(2, 'Carga'),
(3, 'Passageiros'),
(4, 'Turístico'),
(5, 'Executivo'),
(6, 'Utilitário');

-- --------------------------------------------------------

--
-- Estrutura para tabela  especificacoes 
--

CREATE TABLE  especificacoes  (
   id  int(11) NOT NULL,
   ano  varchar(4) DEFAULT NULL,
   capacidade_passageiros  int(11) DEFAULT NULL,
   capacidade_carga_kg  int(11) DEFAULT NULL,
   velocidade_maxima_kmh  int(11) DEFAULT NULL,
   modelo_id  int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela  especificacoes 
--

INSERT INTO  especificacoes  ( id ,  ano ,  capacidade_passageiros ,  capacidade_carga_kg ,  velocidade_maxima_kmh ,  modelo_id ) VALUES
(1, '1970', 660, 100000, 950, 1),
(2, '1995', 440, 80000, 900, 2),
(3, '2011', 242, 20000, 900, 3),
(4, '1968', 189, 20000, 850, 4),
(5, '1983', 200, 30000, 850, 5),
(6, '1988', 180, 15000, 840, 6),
(7, '1992', 250, 45000, 880, 7),
(8, '2013', 440, 80000, 945, 8),
(9, '2005', 500, 100000, 900, 9),
(10, '2016', 100, 18000, 840, 10),
(11, '2015', 5, 500, 250, 11),
(12, '2016', 5, 600, 250, 12),
(13, '2019', 5, 800, 210, 13),
(14, '2018', 5, 500, 220, 14),
(15, '2020', 5, 900, 250, 15),
(16, '2017', 5, 400, 165, 16),
(17, '2019', 5, 500, 180, 17),
(18, '2020', 5, 800, 180, 18),
(19, '2020', 5, 400, 170, 19),
(20, '2021', 5, 600, 180, 20),
(21, '2016', 5, 800, 160, 21),
(22, '2020', 4, 300, 250, 22),
(23, '2019', 5, 600, 180, 23),
(24, '2020', 5, 500, 175, 24),
(25, '2021', 5, 700, 170, 25),
(26, '2017', 5, 1200, 175, 26),
(27, '2021', 5, 500, 180, 27),
(28, '2020', 5, 600, 200, 28),
(29, '2021', 5, 800, 200, 29),
(30, '2021', 5, 700, 200, 30),
(31, '2019', 5, 400, 165, 31),
(32, '2020', 5, 500, 180, 32),
(33, '2021', 5, 700, 190, 33),
(34, '2021', 5, 600, 180, 34),
(35, '2021', 5, 1000, 175, 35),
(36, '2019', 5, 400, 165, 36),
(37, '2020', 5, 600, 180, 37),
(38, '2021', 5, 800, 170, 38),
(39, '2020', 2, 600, 200, 39),
(40, '2021', 7, 900, 160, 40),
(41, '2018', 2, 0, 180, 41),
(42, '2019', 2, 0, 200, 42),
(43, '2020', 2, 0, 170, 43),
(44, '2019', 2, 0, 160, 44),
(45, '2021', 2, 0, 150, 45),
(46, '2019', 2, 0, 180, 46),
(47, '2020', 2, 0, 180, 47),
(48, '2021', 2, 0, 175, 48),
(49, '2020', 2, 0, 170, 49),
(50, '2021', 2, 0, 165, 50),
(51, '2000', 300, 0, 80, 51),
(52, '2006', 250, 0, 70, 52),
(53, '2011', 200, 0, 70, 53),
(54, '2008', 150, 0, 120, 54),
(55, '2015', 300, 0, 80, 55),
(56, '2005', 300, 0, 90, 56),
(57, '2009', 250, 0, 70, 57),
(58, '2013', 200, 0, 80, 58),
(59, '2000', 250, 0, 80, 59),
(60, '2001', 50, 0, 70, 60),
(61, '2015', 300, 0, 100, 61),
(62, '2016', 250, 0, 90, 62),
(63, '2018', 200, 0, 80, 63),
(64, '2017', 300, 0, 90, 64),
(65, '2021', 250, 0, 100, 65),
(66, '2015', 80, 5000, 60, 66),
(67, '2017', 60, 4000, 65, 67),
(68, '2018', 70, 6000, 55, 68),
(69, '2019', 90, 7000, 62, 69),
(70, '2020', 100, 8000, 70, 70),
(71, '2015', 0, 200000, 24, 71),
(72, '2017', 0, 150000, 22, 72),
(73, '2016', 0, 100000, 25, 73),
(74, '2018', 0, 300000, 20, 74),
(75, '2019', 0, 80000, 23, 75),
(76, '2016', 4000, 0, 40, 76),
(77, '2018', 4000, 0, 35, 77),
(78, '2015', 4000, 0, 35, 78),
(79, '2017', 4000, 0, 35, 79),
(80, '2019', 4000, 0, 40, 80),
(81, '2014', 50, 30000, 15, 81),
(82, '2015', 50, 20000, 15, 82),
(83, '2013', 50, 25000, 15, 83),
(84, '2014', 50, 40000, 15, 84),
(85, '2015', 50, 35000, 15, 85);

-- --------------------------------------------------------

--
-- Estrutura para tabela  fabricante 
--

CREATE TABLE  fabricante  (
   id  int(11) NOT NULL,
   nome  varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela  fabricante 
--

INSERT INTO  fabricante  ( id ,  nome ) VALUES
(1, 'Boeing'),
(2, 'Airbus'),
(3, 'Embraer'),
(4, 'Cessna'),
(5, 'Mercedes Benz'),
(6, 'Fiat'),
(7, 'Kawasaki'),
(8, 'Honda'),
(9, 'Harley-Davidson'),
(10, 'Toyota'),
(11, 'Ford'),
(12, 'Volkswagen'),
(13, 'Chevrolet'),
(14, 'Hyundai'),
(15, 'Subaru'),
(16, 'Peugeot'),
(17, 'Renault'),
(18, 'Mitsubishi'),
(19, 'Porsche'),
(20, 'Land Rover'),
(21, 'Tesla'),
(22, 'Naval Grupo'),
(23, 'Ferretti Group'),
(24, 'Azimut Yachts'),
(25, 'Bombardier'),
(26, 'Alstom'),
(27, 'Siemens Mobility'),
(28, 'Hitachi Rail'),
(29, 'General Electric'),
(30, 'Hanjin Heavy Industries'),
(31, 'Caterpillar');

-- --------------------------------------------------------

--
-- Estrutura para tabela  modelo 
--

CREATE TABLE  modelo  (
   id  int(11) NOT NULL,
   nome  varchar(50) DEFAULT NULL,
   fabricante_id  int(11) DEFAULT NULL,
   tipo_transporte_id  int(11) DEFAULT NULL,
   classificacao_id  int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela  modelo 
--

INSERT INTO  modelo  ( id ,  nome ,  fabricante_id ,  tipo_transporte_id ,  classificacao_id ) VALUES
(1, 'Boeing 747', 1, 1, 3),
(2, 'Boeing 777', 1, 1, 3),
(3, 'Boeing 787', 1, 1, 3),
(4, 'Boeing 737', 1, 1, 3),
(5, 'Boeing 757', 1, 1, 3),
(6, 'Airbus A320', 2, 1, 3),
(7, 'Airbus A330', 2, 1, 3),
(8, 'Airbus A350', 2, 1, 3),
(9, 'Airbus A380', 2, 1, 3),
(10, 'Airbus A220', 2, 1, 3),
(11, 'Mercedes-Benz C-Class', 3, 2, 1),
(12, 'Mercedes-Benz E-Class', 3, 2, 1),
(13, 'Mercedes-Benz G-Class', 3, 2, 1),
(14, 'Mercedes-Benz A-Class', 3, 2, 1),
(15, 'Mercedes-Benz S-Class', 3, 2, 1),
(16, 'Fiat Uno', 4, 2, 1),
(17, 'Fiat Palio', 4, 2, 1),
(18, 'Fiat Toro', 4, 2, 2),
(19, 'Fiat Argo', 4, 2, 1),
(20, 'Fiat Strada', 4, 2, 2),
(21, 'Ford F-150', 5, 2, 2),
(22, 'Ford Mustang', 5, 2, 1),
(23, 'Ford Explorer', 5, 2, 1),
(24, 'Ford Fiesta', 5, 2, 1),
(25, 'Ford EcoSport', 5, 2, 1),
(26, 'Toyota Hilux', 6, 2, 2),
(27, 'Toyota Corolla', 6, 2, 1),
(28, 'Toyota Camry', 6, 2, 1),
(29, 'Toyota RAV4', 6, 2, 1),
(30, 'Toyota Land Cruiser', 6, 2, 1),
(31, 'Volkswagen Gol', 7, 2, 1),
(32, 'Volkswagen Polo', 7, 2, 1),
(33, 'Volkswagen T-Cross', 7, 2, 1),
(34, 'Volkswagen Jetta', 7, 2, 1),
(35, 'Volkswagen Amarok', 7, 2, 2),
(36, 'Chevrolet Onix', 8, 2, 1),
(37, 'Chevrolet Tracker', 8, 2, 1),
(38, 'Chevrolet S10', 8, 2, 2),
(39, 'Chevrolet Camaro', 8, 2, 1),
(40, 'Chevrolet Spin', 8, 2, 1),
(41, 'Kawasaki Ninja 300', 9, 2, 1),
(42, 'Kawasaki Z900', 9, 2, 1),
(43, 'Kawasaki Versys 650', 9, 2, 1),
(44, 'Kawasaki Vulcan S', 9, 2, 1),
(45, 'Kawasaki KLR 650', 9, 2, 1),
(46, 'Harley-Davidson Sportster', 10, 2, 1),
(47, 'Harley-Davidson Softail', 10, 2, 1),
(48, 'Harley-Davidson Road King', 10, 2, 1),
(49, 'Harley-Davidson Fat Boy', 10, 2, 1),
(50, 'Harley-Davidson Iron 883', 10, 2, 1),
(51, 'Alstom Metropolis', 12, 4, 1),
(52, 'Alstom Citadis', 12, 4, 1),
(53, 'Alstom Bombardier Flexity', 12, 4, 1),
(54, 'Alstom Coradia LINT', 12, 4, 1),
(55, 'Alstom Citadis Spirit', 12, 4, 1),
(56, 'Bombardier Innovia Metro', 11, 4, 1),
(57, 'Bombardier Flexity Outlook', 11, 4, 1),
(58, 'Bombardier Talent 2', 11, 4, 1),
(59, 'Bombardier BOMBARDIER CSeries', 11, 4, 1),
(60, 'Bombardier CRJ200', 11, 4, 1),
(61, 'Siemens S-Bahn', 18, 4, 1),
(62, 'Siemens Desiro', 18, 4, 1),
(63, 'Siemens Avenio', 18, 4, 1),
(64, 'Siemens Inspiro', 18, 4, 1),
(65, 'Siemens Mireo', 18, 4, 1),
(66, 'Maersk Triple E', 15, 3, 2),
(67, 'Maersk Line', 15, 3, 2),
(68, 'Maersk Denver', 15, 3, 2),
(69, 'Maersk Elma', 15, 3, 2),
(70, 'Maersk Alabama', 15, 3, 2),
(71, 'Carnival Vista', 16, 3, 1),
(72, 'Carnival Horizon', 16, 3, 1),
(73, 'Carnival Dream', 16, 3, 1),
(74, 'Carnival Glory', 16, 3, 1),
(75, 'Carnival Paradise', 16, 3, 1),
(76, 'Votorantim Rio Doce', 17, 4, 2),
(77, 'Votorantim Espírito Santo', 17, 4, 2),
(78, 'Votorantim Paraná', 17, 4, 2),
(79, 'Votorantim Tietê', 17, 4, 2),
(80, 'Votorantim São Francisco', 17, 4, 2),
(81, 'Volvo B9R', 13, 4, 1),
(82, 'Volvo B7R', 13, 4, 1),
(83, 'Volvo 7900', 13, 4, 1),
(84, 'Volvo 8500', 13, 4, 1),
(85, 'Volvo 9700', 13, 4, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela  tipo_transporte 
--

CREATE TABLE  tipo_transporte  (
   id  int(11) NOT NULL,
   descricao  varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela  tipo_transporte 
--

INSERT INTO  tipo_transporte  ( id ,  descricao ) VALUES
(1, 'Aéreo'),
(2, 'Fluvial'),
(3, 'Rodoviário'),
(4, 'Ferroviário'),
(5, 'Marítimo'),
(6, 'Urbano'),
(7, 'Metropolitano');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela  classificacao_transporte 
--
ALTER TABLE  classificacao_transporte 
  ADD PRIMARY KEY ( id );

--
-- Índices de tabela  especificacoes 
--
ALTER TABLE  especificacoes 
  ADD PRIMARY KEY ( id ),
  ADD KEY  FK_modelo_id  ( modelo_id );

--
-- Índices de tabela  fabricante 
--
ALTER TABLE  fabricante 
  ADD PRIMARY KEY ( id );

--
-- Índices de tabela  modelo 
--
ALTER TABLE  modelo 
  ADD PRIMARY KEY ( id ),
  ADD KEY  FK_fabricante_id  ( fabricante_id ),
  ADD KEY  FK_classificacao_id  ( classificacao_id ),
  ADD KEY  FK_tipo_transporte_id  ( tipo_transporte_id );

--
-- Índices de tabela  tipo_transporte 
--
ALTER TABLE  tipo_transporte 
  ADD PRIMARY KEY ( id );

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela  classificacao_transporte 
--
ALTER TABLE  classificacao_transporte 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela  especificacoes 
--
ALTER TABLE  especificacoes 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de tabela  fabricante 
--
ALTER TABLE  fabricante 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela  modelo 
--
ALTER TABLE  modelo 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de tabela  tipo_transporte 
--
ALTER TABLE  tipo_transporte 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas  especificacoes 
--
ALTER TABLE  especificacoes 
  ADD CONSTRAINT  FK_modelo_id  FOREIGN KEY ( modelo_id ) REFERENCES  modelo  ( id );

--
-- Restrições para tabelas  modelo 
--
ALTER TABLE  modelo 
  ADD CONSTRAINT  FK_classificacao_id  FOREIGN KEY ( classificacao_id ) REFERENCES  classificacao_transporte  ( id ),
  ADD CONSTRAINT  FK_fabricante_id  FOREIGN KEY ( fabricante_id ) REFERENCES  fabricante  ( id ),
  ADD CONSTRAINT  FK_tipo_transporte_id  FOREIGN KEY ( tipo_transporte_id ) REFERENCES  tipo_transporte  ( id );
COMMIT;