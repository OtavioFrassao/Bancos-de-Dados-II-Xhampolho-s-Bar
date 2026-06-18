-- ====================================================================
-- 1. INSERTS NA TABELA AREA
-- ====================================================================
INSERT INTO area (nome_area) VALUES ('Cozinha');
INSERT INTO area (nome_area) VALUES ('Bar');
INSERT INTO area (nome_area) VALUES ('Caixa');

commit;

-- ====================================================================
-- 2. INSERTS NA TABELA PRODUTO
-- ====================================================================

-- Produtos da Cozinha
INSERT INTO produto (nome_produto, preco_produto, observacao_produto, id_area, disponivel) 
VALUES (
    'Batata Frita com Queijo e Bacon', 
    34.90, 
    'Por��o inteira - Serve at� 3 pessoas', 
    (SELECT id_area FROM area WHERE nome_area = 'Cozinha'), 
    1
);

INSERT INTO produto (nome_produto, preco_produto, observacao_produto, id_area, disponivel) 
VALUES (
    'Hamb�rguer Artesanal Xhampolho', 
    29.00, 
    'Blend 180g, queijo prato, alface, tomate e maionese da casa', 
    (SELECT id_area FROM area WHERE nome_area = 'Cozinha'), 
    1
);

INSERT INTO produto (nome_produto, preco_produto, observacao_produto, id_area, disponivel) 
VALUES (
    'Frango a Passarinho', 
    42.00, 
    'Acompanha alho frito e cheiro verde', 
    (SELECT id_area FROM area WHERE nome_area = 'Cozinha'), 
    1
);


-- Produtos do Bar
INSERT INTO produto (nome_produto, preco_produto, observacao_produto, id_area, disponivel) 
VALUES (
    'Chopp Pilsen 300ml', 
    9.50, 
    'Servido em caneca congelada', 
    (SELECT id_area FROM area WHERE nome_area = 'Bar'), 
    1
);

INSERT INTO produto (nome_produto, preco_produto, observacao_produto, id_area, disponivel) 
VALUES (
    'Caipirinha de Lim�o', 
    18.00, 
    'Com cacha�a artesanal da casa e gelo', 
    (SELECT id_area FROM area WHERE nome_area = 'Bar'), 
    1
);

INSERT INTO produto (nome_produto, preco_produto, observacao_produto, id_area, disponivel) 
VALUES (
    'Refrigerante Lata', 
    6.00, 
    'Coca-Cola ou Guaran� Antarctica', 
    (SELECT id_area FROM area WHERE nome_area = 'Bar'), 
    1
);


-- Produtos do Caixa (Produtos de conveni�ncia/balc�o comuns em bares)
INSERT INTO produto (nome_produto, preco_produto, observacao_produto, id_area, disponivel) 
VALUES (
    'Copo Eco Xhampolhos Bar', 
    10.00, 
    'Copo personalizado reutiliz�vel', 
    (SELECT id_area FROM area WHERE nome_area = 'Caixa'), 
    1
);

INSERT INTO produto (nome_produto, preco_produto, observacao_produto, id_area, disponivel) 
VALUES (
    'Isqueiro', 
    5.50, 
    'Dispon�vel para venda no balc�o de atendimento', 
    (SELECT id_area FROM area WHERE nome_area = 'Caixa'), 
    1
);


-- ====================================================================
-- 3. CONFIRMA��O DOS DADOS (COMMIT)
-- ====================================================================
COMMIT;