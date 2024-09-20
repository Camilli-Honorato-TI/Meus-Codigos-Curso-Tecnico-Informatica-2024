--
-- Banco de dados:    Controleestoque_Camilli_Honorato_Cedup_2024
--

-- --------------------------------------------------------

--
-- Estrutura para tabela    cliente   
--

CREATE TABLE    cliente    (
     id    int(11) NOT NULL,
     nome    varchar(50) DEFAULT NULL,
     endreco    varchar(50) DEFAULT NULL,
     telefone    int(11) DEFAULT NULL,
     email    varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela    cliente   
--

INSERT INTO    cliente    (   id   ,    nome   ,    endreco   ,    telefone   ,    email   ) VALUES
(1, 'João', 'Rua A, 123', 45436, 'Lenore_Dooley@gmail.com'),
(2, 'Maria', 'Rua B, 456', 544564, 'Delaney.Ryan@gmail.com'),
(3, 'Pedro', 'Rua C, 789', 6456546, 'Monte_Howell89@gmail.com'),
(4, 'Ana', 'Rua D, 101', 67574564, 'Enrico.Nienow79@gmail.com'),
(5, 'Luis', 'Rua E, 202', 65467567, 'Boyd.King74@gmail.com'),
(6, 'Carlos', 'Rua F, 303', 5654333, 'Mylene35@gmail.com'),
(7, 'Julia', 'Rua G, 404', 556323543, 'Clovis67@gmail.com'),
(8, 'Paula', 'Rua I, 606', 324446432, 'Roberta.Armstrong43@gmail.com'),
(9, 'Fernanda', 'Rua J, 707', 46512563, 'Dan56@gmail.com'),
(10, 'João', 'Rua A, 123', 2147483647, 'Lenore_Dooley@gmail.com'),
(11, 'Maria', 'Rua B, 456', 99533456, 'Delaney.Ryan@gmail.com'),
(12, 'Pedro', 'Rua C, 789', 994535345, 'Monte_Howell89@gmail.com'),
(13, 'Ana', 'Rua D, 101', 545435, 'Enrico.Nienow79@gmail.com'),
(14, 'Luis', 'Rua E, 202', 994353545, 'Boyd.King74@gmail.com'),
(15, 'Carlos', 'Rua F, 303', 995454345, 'Mylene35@gmail.com'),
(16, 'Julia', 'Rua G, 404', 945343543, 'Clovis67@gmail.com'),
(17, 'Paula', 'Rua I, 606', 43544543, 'Roberta.Armstrong43@gmail.com'),
(18, 'Fernanda', 'Rua J, 707', 9945435, 'Dan56@gmail.com'),
(19, 'Ximena Stark', 'Rua A, 123', 4801280, 'Edmund_Schneider46@gmail.com'),
(20, 'Ruby Lowe', 'Rua B, 456', 6841092, 'Junior90@gmail.com'),
(21, 'Julius Murray', 'Rua B, 456', 6145060, 'Joelle30@gmail.com'),
(22, 'Faith Dunn', 'Rua B, 456', 3021058, 'Wanda.Koss@gmail.com'),
(23, 'Dawson Roberson', 'Rua B, 456', 99202233, 'Celine.Kreiger@gmail.com'),
(24, 'Sasha Gates', 'Rua B, 456', 7409136, 'Aida4@gmail.com'),
(25, 'Sasha Gates', 'Rua B, 456', 244336, 'Garett_Gutmann@gmail.com'),
(26, 'Ermias Allison', 'Rua B, 456', 4325787, 'Casimer_Wuckert@gmail.com'),
(27, 'Chelsea Flynn', 'Rua B, 456', 2002764, 'Wilford_McCullough86@gmail.com'),
(28, 'Kannon Rasmussen', 'Rua B, 456', 9796828, 'Virgil.Stamm58@gmail.com'),
(29, 'Esperanza Wilkins', 'Rua B, 456', 4103174, 'Margret.Bruen@gmail.com'),
(30, 'Yusuf Gillespie', 'Rua B, 456', 7340948, 'Jermain.Kiehn@gmail.com'),
(31, 'Alianna Bryant', 'Rua A, 123', 4801280, 'gfdsgfdgr46@gmail.com'),
(32, 'Jonah Stanley', 'Rua B, 456', 6841092, 'Junior90@gmail.com'),
(33, 'Gracelyn Rush', 'Rua B, 456', 6145060, 'Joelle30@gmail.com'),
(34, 'Kaiser Koch', 'Rua B, 456', 3021058, 'Wanda.Koss@gmail.com'),
(35, 'Deacon Donovan', 'Rua B, 456', 99202233, 'Celine.Kreiger@gmail.com'),
(36, 'Azariah Pollard', 'Rua B, 456', 7409136, 'Aida4@gmail.com'),
(37, 'Haven Wallace', 'Rua B, 456', 244336, 'Garett_Gutmann@gmail.com'),
(38, 'Galilea Knight', 'Rua B, 456', 4325787, 'Casimer_Wuckert@gmail.com'),
(39, 'Chelsea Flynn', 'Rua B, 456', 2002764, 'Wilford_McCullough86@gmail.com'),
(40, 'Beckett Stanley', 'Rua B, 456', 9796828, 'Virgil.Stamm58@gmail.com'),
(41, 'Gracelyn Brewer', 'Rua B, 456', 4103174, 'Margret.Bruen@gmail.com'),
(42, 'Cruz Parks', 'Rua B, 456', 7340948, 'Jermain.Kiehn@gmail.com'),
(43, 'Ainsley Hull', 'Rua A, 123', 4801280, 'gfdsgfdgr46@gmail.com'),
(44, 'Salem Quinn', 'Rua B, 456', 6841092, 'Junior90@gmail.com'),
(45, 'Heaven Hodge', 'Rua B, 456', 6145060, 'Joelle30@gmail.com'),
(46, 'Reign Gallagher', 'Rua B, 456', 3021058, 'Wanda.Koss@gmail.com'),
(47, 'Elliott Booker', 'Rua B, 456', 99202233, 'Celine.Kreiger@gmail.com'),
(48, 'Dominik Daniel', 'Rua B, 456', 7409136, 'Aida4@gmail.com'),
(49, 'Haven Wallace', 'Rua B, 436', 244336, 'Garett_Gutmann@gmail.com'),
(50, 'Galilea Knight', 'Rua B, 476', 4325787, 'Casimer_Wuckert@gmail.com'),
(51, 'Joy Nolan', 'Rua B, 442', 2002764, 'Wilford_McCullough86@gmail.com'),
(52, 'Maximo Ramos', 'Rua B, 456', 7995224, 'Virgil.Stamm58@gmail.com'),
(53, 'Alice Stuart', 'Rua B, 246', 4103174, 'Margret.Bruen@gmail.com'),
(54, 'Dion Bailey', 'Rua B, 45634', 7995224, 'Jermain.Kiehn@gmail.com'),
(55, 'João', 'Rua A, 123', 2147483647, 'joao@email.com'),
(56, 'Maria', 'Rua B, 456', 2147483647, 'maria@email.com'),
(57, 'Pedro', 'Rua C, 789', 2147483647, 'pedro@email.com'),
(58, 'Ana', 'Rua D, 101', 2147483647, 'ana@email.com'),
(59, 'Lucas', 'Rua E, 202', 2147483647, 'lucas@email.com'),
(60, 'Carla', 'Rua F, 303', 2147483647, 'carla@email.com'),
(61, 'Ricardo', 'Rua G, 404', 2147483647, 'ricardo@email.com'),
(62, 'Fernanda', 'Rua H, 505', 2147483647, 'fernanda@email.com'),
(63, 'Paulo', 'Rua I, 606', 2147483647, 'paulo@email.com'),
(64, 'Juliana', 'Rua J, 707', 2147483647, 'juliana@email.com'),
(65, 'Rafael', 'Rua K, 808', 2147483647, 'rafael@email.com'),
(66, 'Camila', 'Rua L, 909', 2147483647, 'camila@email.com'),
(67, 'Gabriel', 'Rua M, 1010', 2147483647, 'gabriel@email.com'),
(68, 'Isabela', 'Rua N, 1111', 2147483647, 'isabela@email.com'),
(69, 'Fábio', 'Rua O, 1212', 2147483647, 'fabio@email.com'),
(70, 'Mariana', 'Rua P, 1313', 2147483647, 'mariana@email.com'),
(71, 'Thiago', 'Rua Q, 1414', 2147483647, 'thiago@email.com'),
(72, 'Patrícia', 'Rua R, 1515', 2147483647, 'patricia@email.com'),
(73, 'Bruno', 'Rua S, 1616', 2147483647, 'bruno@email.com'),
(74, 'Daniela', 'Rua T, 1717', 2147483647, 'daniela@email.com'),
(75, 'Carlos', 'Rua U, 1818', 2147483647, 'carlos@email.com'),
(76, 'Luciana', 'Rua V, 1919', 2147483647, 'luciana@email.com'),
(77, 'André', 'Rua W, 2020', 2147483647, 'andre@email.com'),
(78, 'Tatiana', 'Rua X, 2121', 2147483647, 'tatiana@email.com'),
(79, 'Felipe', 'Rua Y, 2222', 2147483647, 'felipe@email.com'),
(80, 'Aline', 'Rua Z, 2323', 2147483647, 'aline@email.com'),
(81, 'Vinícius', 'Rua AA, 2424', 2147483647, 'vinicius@email.com'),
(82, 'Sabrina', 'Rua BB, 2525', 2147483647, 'sabrina@email.com'),
(83, 'Leandro', 'Rua CC, 2626', 2147483647, 'leandro@email.com'),
(84, 'Bianca', 'Rua DD, 2727', 2147483647, 'bianca@email.com'),
(85, 'Renato', 'Rua EE, 2828', 2147483647, 'renato@email.com'),
(86, 'Sofia', 'Rua FF, 2929', 2147483647, 'sofia@email.com'),
(87, 'Hugo', 'Rua GG, 3030', 2147483647, 'hugo@email.com'),
(88, 'Larissa', 'Rua HH, 3131', 2147483647, 'larissa@email.com'),
(89, 'Eduardo', 'Rua II, 3232', 2147483647, 'eduardo@email.com'),
(90, 'Rafaela', 'Rua JJ, 3333', 2147483647, 'rafaela@email.com'),
(91, 'Gustavo', 'Rua KK, 3434', 2147483647, 'gustavo@email.com'),
(92, 'Priscila', 'Rua LL, 3535', 2147483647, 'priscila@email.com'),
(93, 'Otávio', 'Rua MM, 3636', 2147483647, 'otavio@email.com'),
(94, 'Carolina', 'Rua NN, 3737', 2147483647, 'carolina@email.com'),
(95, 'Marcelo', 'Rua OO, 3838', 2147483647, 'marcelo@email.com'),
(96, 'Vanessa', 'Rua PP, 3939', 2147483647, 'vanessa@email.com'),
(97, 'Rodrigo', 'Rua QQ, 4040', 2147483647, 'rodrigo@email.com'),
(98, 'Michele', 'Rua RR, 4141', 2147483647, 'michele@email.com'),
(99, 'César', 'Rua SS, 4242', 2147483647, 'cesar@email.com'),
(100, 'Natalia', 'Rua TT, 4343', 2147483647, 'natalia@email.com'),
(101, 'Alexandre', 'Rua UU, 4444', 2147483647, 'alexandre@email.com'),
(102, 'Juliana', 'Rua VV, 4545', 2147483647, 'juliana@email.com'),
(103, 'Fernando', 'Rua WW, 4646', 2147483647, 'fernando@email.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela    compras   
--

CREATE TABLE    compras    (
     id    int(11) NOT NULL,
     id_Fornecedor    int(11) DEFAULT NULL,
     Data_compra    date DEFAULT NULL,
     Total_Compra    float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela    compras   
--

INSERT INTO    compras    (   id   ,    id_Fornecedor   ,    Data_compra   ,    Total_Compra   ) VALUES
(1, 1, '2014-01-23', 300),
(2, 2, '2019-03-31', 200),
(3, 3, '2020-09-30', 1000),
(4, 4, '2023-08-12', 200),
(5, 5, '2018-06-11', 500),
(6, 6, '2008-04-04', 400),
(7, 7, '2011-07-12', 380),
(8, 8, '2024-12-25', 1290),
(9, 9, '2022-10-18', 234),
(10, 10, '2020-03-13', 543);

-- --------------------------------------------------------

--
-- Estrutura para tabela    fornecedor   
--

CREATE TABLE    fornecedor    (
     id    int(11) NOT NULL,
     nome    varchar(55) DEFAULT NULL,
     endereco    varchar(45) DEFAULT NULL,
     telefone    int(11) DEFAULT NULL,
     email    varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela    fornecedor   
--

INSERT INTO    fornecedor    (   id   ,    nome   ,    endereco   ,    telefone   ,    email   ) VALUES
(1, 'Joseulmo', 'Rua A, 123, Centro', 12345678, 'contato@fornecedor1.com'),
(2, 'Amazon', 'Avenida B, 456, Bairro X', 23456789, 'contato@fornecedor2.com'),
(3, 'Shopee', 'Praça C, 789, Centro', 34567890, 'contato@fornecedor3.com'),
(4, 'Big Box', 'Rua D, 101, Bairro Y', 45678901, 'contato@fornecedor4.com'),
(5, 'Alibaba', 'Avenida E, 202, Centro', 56789012, 'contato@fornecedor5.com'),
(6, 'Ali Express', 'Rua F, 303, Bairro Z', 67890123, 'contato@fornecedor6.com'),
(7, 'Shein', 'Praça G, 404, Centro', 78901234, 'contato@fornecedor7.com'),
(8, 'Americanas', 'Rua H, 505, Bairro W', 89012345, 'contato@fornecedor8.com'),
(9, 'Casas Bahia', 'Avenida I, 606, Centro', 90123456, 'contato@fornecedor9.com'),
(10, 'Mercado Livre', 'Rua J, 707, Bairro V', 1234567, 'contato@fornecedor10.com'),
(11, 'Kabum', 'Praça K, 808, Centro', 12345678, 'contato@fornecedor11.com'),
(12, 'Pichau', 'Rua L, 909, Bairro U', 23456789, 'contato@fornecedor12.com'),
(13, 'Netshoes', 'Avenida M, 1010, Centro', 34567890, 'contato@fornecedor13.com'),
(14, 'Magazine Luiza', 'Rua N, 1111, Bairro T', 4567890, 'contato@fornecedor14.com'),
(15, 'SubMarino', 'Praça O, 1212, Centro', 56789012, 'contato@fornecedor15.com'),
(16, 'Atacadao', 'Rua P, 1313, Bairro S', 67890123, 'contato@fornecedor16.com'),
(17, 'Havan', 'Avenida Q, 1414, Centro', 78901234, 'contato@fornecedor17.com'),
(18, 'Walmart', 'Rua R, 1515, Bairro R', 89012345, 'contato@fornecedor18.com'),
(19, 'Pernambucanas', 'Praça S, 1616, Centro', 90123456, 'contato@fornecedor19.com'),
(20, 'Giassi', 'Rua T, 1717, Bairro Q', 1234567, 'contato@fornecedor20.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela    itenscompras   
--

CREATE TABLE    itenscompras    (
     id    int(11) NOT NULL,
     id_Compra    int(11) DEFAULT NULL,
     id_Produto    int(11) DEFAULT NULL,
     Quantidade    int(11) DEFAULT NULL,
     Preco_Unit    float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela    itenscompras   
--

INSERT INTO    itenscompras    (   id   ,    id_Compra   ,    id_Produto   ,    Quantidade   ,    Preco_Unit   ) VALUES
(1, 1, 12, 6, 14.43),
(2, 2, 11, 1, 12.43),
(3, 3, 5, 2, 24.13),
(4, 4, 6, 8, 91.43),
(5, 5, 7, 21, 54.94);

-- --------------------------------------------------------

--
-- Estrutura para tabela    itensvendas   
--

CREATE TABLE    itensvendas    (
     id    int(11) NOT NULL,
     id_Venda    int(11) DEFAULT NULL,
     id_Produto    int(11) DEFAULT NULL,
     Quantidade    int(11) DEFAULT NULL,
     Preco_Unit    float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela    itensvendas   
--

INSERT INTO    itensvendas    (   id   ,    id_Venda   ,    id_Produto   ,    Quantidade   ,    Preco_Unit   ) VALUES
(1, 1, 23, 2, 12.9),
(2, 2, 7, 12, 23.54),
(3, 3, 4, 14, 24.54),
(4, 4, 3, 8, 90),
(5, 5, 5, 4, 54.94);

-- --------------------------------------------------------

--
-- Estrutura para tabela    pagamento   
--

CREATE TABLE    pagamento    (
     id    int(11) NOT NULL,
     Id_Venda    int(11) DEFAULT NULL,
     tipo    tinyint(1) DEFAULT NULL,
     data_pag    date DEFAULT NULL,
     valor_pago    float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela    produtos   
--

CREATE TABLE    produtos    (
     id    int(11) NOT NULL,
     nome    varchar(55) DEFAULT NULL,
     descricao    varchar(105) DEFAULT NULL,
     preco_compra    float DEFAULT NULL,
     preco_venda    float DEFAULT NULL,
     estq_min    int(11) DEFAULT NULL,
     estq_max    int(11) DEFAULT NULL,
     margen_lucro    float DEFAULT NULL,
     Dep_estq    int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela    produtos   
--

INSERT INTO    produtos    (   id   ,    nome   ,    descricao   ,    preco_compra   ,    preco_venda   ,    estq_min   ,    estq_max   ,    margen_lucro   ,    Dep_estq   ) VALUES
(1, 'Caneta Azul', 'Caneta esferográfica de tinta azul, escrita suave.', 1, 2, 100, 1000, 100, 365),
(2, 'Caderno 100 Folhas', 'Caderno espiral com 100 folhas pautadas.', 5, 8, 50, 500, 60, 365),
(3, 'Mouse Óptico', 'Mouse óptico USB de alta precisão.', 10, 15, 20, 200, 50, 730),
(4, 'Teclado Mecânico', 'Teclado mecânico com retroiluminação RGB.', 50, 80, 5, 50, 60, 730),
(5, 'Monitor 24\"', 'Monitor LED de 24 polegadas Full HD.', 400, 600, 2, 20, 50, 730),
(6, 'Cabo HDMI 2m', 'Cabo HDMI de 2 metros, alta velocidade.', 15, 25, 30, 300, 66.67, 365),
(7, 'Fone de Ouvido Bluetooth', 'Fone de ouvido sem fio com microfone.', 50, 75, 10, 100, 50, 365),
(8, 'Webcam HD', 'Webcam com resolução HD 720p e microfone.', 35, 55, 8, 80, 57.14, 365),
(9, 'Cadeira Gamer', 'Cadeira ergonômica para jogos com ajuste de altura.', 300, 450, 2, 15, 50, 730),
(10, 'Mesa de Escritório', 'Mesa de escritório em L com suporte para CPU.', 200, 350, 3, 20, 75, 730),
(11, 'Suporte para Monitor', 'Suporte ajustável para monitor, aço inoxidável.', 25, 40, 15, 150, 60, 365),
(12, 'Smartphone 64GB', 'Smartphone com 64GB de armazenamento e câmera dupla.', 800, 1200, 5, 50, 50, 365),
(13, 'Tablet 10\"', 'Tablet de 10 polegadas com Wi-Fi e 32GB de memória.', 600, 900, 5, 30, 50, 365),
(14, 'Notebook 15\"', 'Notebook 15 polegadas, 8GB RAM, 256GB SSD.', 2500, 3500, 3, 10, 40, 730),
(15, 'Impressora Multifuncional', 'Impressora multifuncional a laser com scanner.', 500, 750, 5, 25, 50, 730),
(16, 'Papel A4 500 Folhas', 'Resma de papel A4, 500 folhas.', 15, 25, 50, 500, 66.67, 365),
(17, 'Pen Drive 32GB', 'Pen Drive USB 3.0 de 32GB.', 20, 35, 30, 300, 75, 365),
(18, 'HD Externo 1TB', 'HD externo portátil de 1TB.', 300, 450, 5, 50, 50, 730),
(19, 'Câmera de Segurança', 'Câmera de segurança IP com visão noturna.', 150, 225, 10, 100, 50, 365),
(20, 'Roteador Wi-Fi', 'Roteador Wi-Fi de alta velocidade, 1200Mbps.', 100, 150, 15, 150, 50, 365),
(21, 'Ventilador de Mesa', 'Ventilador de mesa com 3 velocidades.', 60, 90, 20, 200, 50, 365),
(22, 'Aspirador de Pó', 'Aspirador de pó portátil, 1200W.', 180, 270, 5, 50, 50, 365),
(23, 'Smart TV 43\"', 'Smart TV 43 polegadas com resolução 4K.', 1800, 2700, 2, 20, 50, 730),
(24, 'Cafeteira Elétrica', 'Cafeteira elétrica com jarra de 1,5L.', 120, 180, 10, 100, 50, 365),
(25, 'Micro-ondas 20L', 'Micro-ondas de 20 litros com painel digital.', 350, 525, 5, 50, 50, 365),
(26, 'Geladeira Frost Free', 'Geladeira Frost Free, 400L, inox.', 2500, 3750, 3, 10, 50, 730),
(27, 'Fogão 5 Bocas', 'Fogão a gás com 5 bocas e acendimento automático.', 1200, 1800, 4, 20, 50, 730),
(28, 'Máquina de Lavar 10kg', 'Máquina de lavar roupa, 10kg, abertura frontal.', 2000, 3000, 3, 10, 50, 730),
(29, 'Ferro de Passar', 'Ferro de passar roupa a vapor.', 80, 120, 15, 150, 50, 365),
(30, 'Batedeira Planetária', 'Batedeira planetária com 12 velocidades.', 250, 375, 8, 80, 50, 365),
(31, 'Liquidificador 1,5L', 'Liquidificador com jarra de 1,5L e 5 velocidades.', 120, 180, 10, 100, 50, 365),
(32, 'Sanduicheira Grill', 'Sanduicheira elétrica com grill antiaderente.', 100, 150, 10, 100, 50, 365),
(33, 'Smartwatch', 'Smartwatch com monitoramento de atividades físicas.', 300, 450, 5, 50, 50, 365),
(34, 'Caixa de Som Bluetooth', 'Caixa de som Bluetooth portátil, 20W.', 180, 270, 10, 100, 50, 365),
(35, 'Carregador Rápido USB', 'Carregador rápido USB com 2 portas.', 50, 75, 20, 200, 50, 365),
(36, 'Mousepad Gamer', 'Mousepad gamer com superfície em microfibra.', 30, 45, 30, 300, 50, 365),
(37, 'Hub USB 4 Portas', 'Hub USB 4 portas com alimentação própria.', 40, 60, 20, 200, 50, 365),
(38, 'Luminária de Mesa LED', 'Luminária de mesa LED com ajuste de brilho.', 80, 120, 15, 150, 50, 365),
(39, 'Relógio de Parede', 'Relógio de parede analógico, silencioso.', 50, 75, 20, 200, 50, 365),
(40, 'Cadeira de Escritório', 'Cadeira de escritório ergonômica com ajuste de altura.', 350, 525, 5, 50, 50, 730),
(41, 'Estante de Livros', 'Estante de livros em madeira, 5 prateleiras.', 400, 600, 5, 25, 50, 730),
(42, 'Abajur de Mesa', 'Abajur de mesa clássico, base em cerâmica.', 120, 180, 10, 100, 50, 365),
(43, 'Guarda-Roupa 6 Portas', 'Guarda-roupa em MDF com 6 portas e espelho.', 1500, 2250, 3, 10, 50, 730),
(44, 'Cama Box Casal', 'Cama box casal com colchão de molas ensacadas.', 2000, 3000, 3, 10, 50, 730),
(45, 'Sofá 3 Lugares', 'Sofá de 3 lugares em tecido suede.', 2500, 3750, 2, 10, 50, 730),
(46, 'Mesa de Jantar 6 Lugares', 'Mesa de jantar em vidro, 6 lugares.', 1800, 2700, 2, 10, 50, 730),
(47, 'Aparador de Barba', 'Aparador de barba elétrico, à prova d’água.', 150, 225, 10, 100, 50, 365),
(48, 'Secador de Cabelo', 'Secador de cabelo com 3 velocidades e difusor.', 200, 300, 10, 100, 50, 365),
(49, 'Chapa de Cabelo', 'Chapa de cabelo profissional, revestimento em cerâmica.', 180, 270, 10, 100, 50, 365),
(50, 'Espremedor de Frutas', 'Espremedor de frutas elétrico, jarra de 1L.', 80, 120, 15, 150, 50, 365),
(51, 'Liquidificador Portátil', 'Liquidificador portátil, recarregável via USB.', 120, 180, 10, 100, 50, 365),
(52, 'Mixer de Mão', 'Mixer de mão com 2 velocidades e copo medidor.', 90, 135, 12, 120, 50, 365),
(53, 'Balança Digital', 'Balança digital de cozinha, precisão de 1g.', 50, 75, 20, 200, 50, 365),
(54, 'Aquecedor Elétrico', 'Aquecedor elétrico portátil, 1500W.', 200, 300, 10, 100, 50, 365),
(55, 'Ventilador de Torre', 'Ventilador de torre com controle remoto.', 250, 375, 8, 80, 50, 365),
(56, 'Umidificador de Ar', 'Umidificador de ar ultrassônico, 3,5L.', 150, 225, 10, 100, 50, 365),
(57, 'Purificador de Água', 'Purificador de água com filtro de carvão ativado.', 300, 450, 5, 50, 50, 365),
(58, 'Fritadeira Elétrica', 'Fritadeira elétrica sem óleo, capacidade de 3,5L.', 250, 375, 8, 80, 50, 365),
(59, 'Churrasqueira Elétrica', 'Churrasqueira elétrica portátil, grelha antiaderente.', 200, 300, 10, 100, 50, 365),
(60, 'Máquina de Costura', 'Máquina de costura portátil com 12 pontos.', 400, 600, 5, 50, 50, 365),
(61, 'Aspirador Robô', 'Aspirador robô com função de mapeamento e retorno automático.', 1500, 2250, 3, 20, 50, 730),
(62, 'Smart Lock', 'Fechadura digital com biometria e senha.', 500, 750, 5, 50, 50, 365),
(63, 'Luminária Solar', 'Luminária solar de jardim com sensor de movimento.', 100, 150, 20, 200, 50, 365),
(64, 'Painel Solar 150W', 'Painel solar de 150W, alta eficiência.', 800, 1200, 5, 30, 50, 730),
(65, 'Garrafa Térmica 1L', 'Garrafa térmica de aço inox, 1L.', 80, 120, 20, 200, 50, 365),
(66, 'Cafeteira Italiana', 'Cafeteira italiana em alumínio, 6 xícaras.', 60, 90, 15, 150, 50, 365),
(67, 'Bule Térmico', 'Bule térmico de vidro, 1,5L.', 120, 180, 10, 100, 50, 365),
(68, 'Porta Mantimentos', 'Conjunto de porta mantimentos em inox, 5 peças.', 200, 300, 10, 100, 50, 365),
(69, 'Faqueiro Inox 24 Peças', 'Faqueiro em aço inox, 24 peças.', 150, 225, 10, 100, 50, 365),
(70, 'Jogo de Panelas 5 Peças', 'Jogo de panelas antiaderente, 5 peças.', 300, 450, 8, 80, 50, 365),
(71, 'Aparelho de Fondue', 'Aparelho de fondue em inox, 8 peças.', 180, 270, 10, 100, 50, 365),
(72, 'Jogo de Taças 6 Peças', 'Jogo de taças de vinho, 6 peças.', 120, 180, 10, 100, 50, 365),
(73, 'Jogo de Lençol Casal', 'Jogo de lençol casal, 4 peças, algodão 200 fios.', 200, 300, 10, 100, 50, 365),
(74, 'Colcha King Size', 'Colcha king size em microfibra, dupla face.', 250, 375, 8, 80, 50, 365),
(75, 'Toalha de Banho 5 Peças', 'Jogo de toalhas de banho 5 peças, algodão.', 150, 225, 10, 100, 50, 365),
(76, 'Tapete Sala 2x3m', 'Tapete para sala, 2x3 metros, antialérgico.', 300, 450, 5, 50, 50, 365),
(77, 'Cortina Blackout', 'Cortina blackout 2,5x2,8m, 100% poliéster.', 180, 270, 10, 100, 50, 365),
(78, 'Jogo de Facas Cozinha', 'Jogo de facas de cozinha, 6 peças, aço inox.', 100, 150, 10, 100, 50, 365),
(79, 'Mochila Executiva', 'Mochila executiva para laptop até 15,6\".', 180, 270, 8, 80, 50, 365),
(80, 'Bolsa Feminina', 'Bolsa feminina em couro sintético, alça ajustável.', 150, 225, 10, 100, 50, 365),
(81, 'Relógio Masculino', 'Relógio masculino analógico, pulseira de aço inox.', 300, 450, 5, 50, 50, 365),
(82, 'Óculos de Sol UV400', 'Óculos de sol com proteção UV400, armação leve.', 100, 150, 20, 200, 50, 365),
(83, 'Tornozeleira Esportiva', 'Tornozeleira esportiva elástica, ajustável.', 50, 75, 30, 300, 50, 365),
(84, 'Cinto de Couro', 'Cinto de couro legítimo, fivela em aço inox.', 120, 180, 15, 150, 50, 365),
(85, 'Tênis de Corrida', 'Tênis de corrida, solado em EVA, respirável.', 250, 375, 8, 80, 50, 365),
(86, 'Relógio de ouro', 'Rélogio de ouro maciço.', 500, 1000, 3, 5, 500, 365),
(87, 'Fone de ouvido bluetooth', 'Fone de ouvido bluetooth wireless, headset.', 500, 700, 10, 100, 200, 365),
(88, 'Garrafa de Spray', 'Garrafa de spray multiuso.', 20, 25, 5, 100, 5, 363),
(89, 'Impressora de tinta', 'Impressora multicolorido.', 20, 25, 5, 100, 5, 363),
(90, 'Brinco de Prata', 'Antialérgico.', 30, 45, 5, 30, 15, 140),
(91, 'Saco de Dormir', 'Confortável e Compacto.', 40, 45, 10, 90, 5, 120),
(92, 'Corda de Violão', 'Profissional, desempenho superior.', 40, 45, 10, 90, 12, 120),
(93, 'Pulverizador', 'Confortável e ergonômico.', 60, 70, 5, 45, 10, 101),
(94, 'Televisão UHD', '55 polegadas, 4k, 60hz.', 6000, 7000, 2, 705, 1000, 300),
(95, 'Halter', '5kg,.', 160, 170, 5, 85, 10, 81),
(96, 'Garrafa Stanley', 'Conserva temperatura, resistente.', 80, 120, 5, 40, 40, 91),
(97, 'Tinta Spray', 'Multiuso, Fosco.', 20, 23, 3, 30, 3, 345),
(98, 'Pulseira de Pedras', 'Anti-estresse.', 20, 25, 5, 90, 5, 200),
(99, 'Estojo', 'Compacta e fofa.', 20, 23, 8, 65, 3, 45),
(100, 'Brinquedo Disney', 'Brinquedos das princesas Disney.', 70, 90, 20, 102, 20, 78),
(101, 'Mop', 'Mop de limpeza.', 40, 50, 6, 76, 10, 90);

-- --------------------------------------------------------

--
-- Estrutura para tabela    venda   
--

CREATE TABLE    venda    (
     id    int(11) NOT NULL,
     Data_Venda    date DEFAULT NULL,
     Total_Venda    float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela    venda   
--

INSERT INTO    venda    (   id   ,    Data_Venda   ,    Total_Venda   ) VALUES
(1, '2016-06-28', 342),
(2, '2019-11-06', 365),
(3, '2022-09-16', 965),
(4, '2023-04-01', 233),
(5, '2024-01-03', 14),
(6, '2016-10-23', 355),
(7, '2018-12-30', 324),
(8, '2023-04-01', 9089),
(9, '2018-04-14', 543),
(10, '2021-03-02', 435);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela    cliente   
--
ALTER TABLE    cliente   
  ADD PRIMARY KEY (   id   );

--
-- Índices de tabela    compras   
--
ALTER TABLE    compras   
  ADD PRIMARY KEY (   id   ),
  ADD KEY    FK_Fornecedor    (   id_Fornecedor   );

--
-- Índices de tabela    fornecedor   
--
ALTER TABLE    fornecedor   
  ADD PRIMARY KEY (   id   );

--
-- Índices de tabela    itenscompras   
--
ALTER TABLE    itenscompras   
  ADD PRIMARY KEY (   id   ),
  ADD KEY    FK_Compra    (   id_Compra   ),
  ADD KEY    FK_Produto    (   id_Produto   );

--
-- Índices de tabela    itensvendas   
--
ALTER TABLE    itensvendas   
  ADD PRIMARY KEY (   id   ),
  ADD KEY    FK_Venda    (   id_Venda   ),
  ADD KEY    FK_Produtos    (   id_Produto   );

--
-- Índices de tabela    pagamento   
--
ALTER TABLE    pagamento   
  ADD PRIMARY KEY (   id   ),
  ADD KEY    FK_pagamento    (   Id_Venda   );

--
-- Índices de tabela    produtos   
--
ALTER TABLE    produtos   
  ADD PRIMARY KEY (   id   );

--
-- Índices de tabela    venda   
--
ALTER TABLE    venda   
  ADD PRIMARY KEY (   id   );

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela    cliente   
--
ALTER TABLE    cliente   
  MODIFY    id    int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de tabela    compras   
--
ALTER TABLE    compras   
  MODIFY    id    int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela    fornecedor   
--
ALTER TABLE    fornecedor   
  MODIFY    id    int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela    itenscompras   
--
ALTER TABLE    itenscompras   
  MODIFY    id    int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela    itensvendas   
--
ALTER TABLE    itensvendas   
  MODIFY    id    int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela    pagamento   
--
ALTER TABLE    pagamento   
  MODIFY    id    int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela    produtos   
--
ALTER TABLE    produtos   
  MODIFY    id    int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de tabela    venda   
--
ALTER TABLE    venda   
  MODIFY    id    int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas    compras   
--
ALTER TABLE    compras   
  ADD CONSTRAINT    FK_Fornecedor    FOREIGN KEY (   id_Fornecedor   ) REFERENCES    fornecedor    (   id   );

--
-- Restrições para tabelas    itenscompras   
--
ALTER TABLE    itenscompras   
  ADD CONSTRAINT    FK_Compra    FOREIGN KEY (   id_Compra   ) REFERENCES    compras    (   id   ),
  ADD CONSTRAINT    FK_Produto    FOREIGN KEY (   id_Produto   ) REFERENCES    produtos    (   id   );

--
-- Restrições para tabelas    itensvendas   
--
ALTER TABLE    itensvendas   
  ADD CONSTRAINT    FK_produto_venda    FOREIGN KEY (   id_Produto   ) REFERENCES    produtos    (   id   ),
  ADD CONSTRAINT    FK_venda    FOREIGN KEY (   id_Venda   ) REFERENCES    venda    (   ID   );

--
-- Restrições para tabelas    pagamento   
--
ALTER TABLE    pagamento   
  ADD CONSTRAINT    FK_pagamento    FOREIGN KEY (   Id_Venda   ) REFERENCES    venda    (   ID   );
COMMIT;

