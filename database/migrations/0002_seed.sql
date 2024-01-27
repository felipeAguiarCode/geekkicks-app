-- semente pra alimentar as tabelas inciais

-- Inserir dados na tabela tbl_brands
INSERT INTO tbl_brands (id, brand_name) VALUES
    (1, 'Stealth'),
    (2, 'McLaren'),
    (3, 'Ferrari'),
    (4, 'Gulf');

-- Inserir dados na tabela tbl_segments
INSERT INTO tbl_segments (id, segment_name) VALUES
    (1, 'shoes');

-- Inserir dados na tabela tbl_products
INSERT INTO tbl_products (brand_id, segment_id, product_name, description) VALUES
    (1, 1, 'Air Jordan Stealth', 'The Air Jordan Stealth is a premium sneaker with a sleek, modern design that effortlessly combines style and comfort. Crafted for those who appreciate both fashion and functionality, these sneakers are perfect for any casual or athletic occasion.'),
    (2, 1, 'Air Jordan McLaren', 'Inspired by the high-performance McLaren cars, the Air Jordan McLaren is a top-tier sneaker designed for those who seek luxury and speed in their footwear. With its unique design elements and superior craftsmanship, these sneakers are a statement of both style and performance.'),
    (3, 1, 'Air Jordan Ferrari', 'The Air Jordan Ferrari is a luxury sneaker that exudes elegance and prestige, drawing inspiration from the iconic Ferrari brand. With its sophisticated design and attention to detail, these sneakers are the embodiment of refinement and style.'),
    (4, 1, 'Air Jordan Gulf', 'The Air Jordan Gulf is a stylish sneaker that pays homage to the legendary Gulf Racing livery. Featuring a unique and eye-catching design, these sneakers are a must-have for motorsport enthusiasts and sneaker aficionados alike, offering a perfect blend of fashion and racing heritage.');

-- Inserir dados na tabela tbl_variants
INSERT INTO tbl_variants (product_id, size, color, type, sku_code) VALUES
    (1, 38, 'black', 'low pipe', 'ste-38-black-low pipe'),
    (1, 39, 'black', 'low pipe', 'ste-39-black-low pipe'),
    (1, 40, 'black', 'low pipe', 'ste-40-black-low pipe'),
    (1, 41, 'black', 'low pipe', 'ste-41-black-low pipe'),
    (1, 42, 'black', 'low pipe', 'ste-42-black-low pipe'),
    (1, 43, 'black', 'low pipe', 'ste-43-black-low pipe'),
    (1, 44, 'black', 'low pipe', 'ste-44-black-low pipe'),
    (1, 45, 'black', 'low pipe', 'ste-45-black-low pipe'),
    (1, 46, 'black', 'low pipe', 'ste-46-black-low pipe'),
    (1, 40, 'white', 'low pipe', 'ste-40-white-low pipe'),
    (1, 41, 'white', 'low pipe', 'ste-41-white-low pipe'),
    (1, 42, 'white', 'low pipe', 'ste-42-white-low pipe'),
    (2, 41, 'orange', 'low pipe', 'mcl-41-orange-low pipe'),
    (2, 38, 'orange', 'low pipe', 'mcl-38-orange-low pipe'),
    (2, 42, 'orange', 'low pipe', 'mcl-42-orange-low pipe'),
    (2, 39, 'orange', 'low pipe', 'mcl-39-orange-low pipe'),
    (3, 38, 'red', 'low pipe', 'fer-38-red-low pipe'),
    (3, 39, 'red', 'low pipe', 'fer-39-red-low pipe'),
    (3, 40, 'red', 'low pipe', 'fer-40-red-low pipe'),
    (3, 41, 'red', 'low pipe', 'fer-41-red-low pipe'),
    (3, 42, 'red', 'low pipe', 'fer-42-red-low pipe'),
    (3, 43, 'red', 'low pipe', 'fer-43-red-low pipe'),
    (3, 44, 'red', 'low pipe', 'fer-44-red-low pipe'),
    (3, 45, 'red', 'low pipe', 'fer-45-red-low pipe'),
    (3, 46, 'red', 'low pipe', 'fer-46-red-low pipe'),
    (3, 40, 'red', 'low pipe', 'fer-40-red-low pipe'),
    (3, 41, 'red', 'low pipe', 'fer-41-red-low pipe'),
    (3, 42, 'red', 'low pipe', 'fer-42-red-low pipe'),
    (4, 38, 'blue', 'low pipe', 'gul-38-blue-low pipe'),
    (4, 39, 'blue', 'low pipe', 'gul-39-blue-low pipe'),
    (4, 40, 'blue', 'low pipe', 'gul-40-blue-low pipe'),
    (4, 41, 'blue', 'low pipe', 'gul-41-blue-low pipe'),
    (4, 42, 'blue', 'low pipe', 'gul-42-blue-low pipe'),
    (4, 43, 'blue', 'low pipe', 'gul-43-blue-low pipe'),
    (4, 44, 'blue', 'low pipe', 'gul-44-blue-low pipe'),
    (4, 45, 'blue', 'low pipe', 'gul-45-blue-low pipe'),
    (4, 46, 'blue', 'low pipe', 'gul-46-blue-low pipe'),
    (4, 40, 'blue', 'low pipe', 'gul-40-blue-low pipe'),
    (4, 41, 'blue', 'low pipe', 'gul-41-blue-low pipe'),
    (4, 42, 'blue', 'low pipe', 'gul-42-blue-low pipe');

-- Inserir dados na tabela tbl_pictures
INSERT INTO tbl_pictures (variant_id, picture_url) VALUES
    (1, 'image-stealth-black.png'),
    (2, 'image-stealth-black.png'),
    (3, 'image-stealth-black.png'),
    (4, 'image-stealth-black.png'),
    (5, 'image-stealth-black.png'),
    (6, 'image-stealth-black.png'),
    (7, 'image-stealth-black.png'),
    (8, 'image-stealth-black.png'),
    (9, 'image-stealth-black.png'),
    (10, 'image-stealth-white.png'),
    (11, 'image-stealth-white.png'),
    (12, 'image-stealth-white.png'),
    (13, 'image-mclaren.png'),
    (14, 'image-mclaren.png'),
    (15, 'image-mclaren.png'),
    (16, 'image-mclaren.png'),
    (17, 'image-ferrari.png'),
    (18, 'image-ferrari.png'),
    (19, 'image-ferrari.png'),
    (20, 'image-ferrari.png'),
    (21, 'image-ferrari.png'),
    (22, 'image-ferrari.png'),
    (23, 'image-ferrari.png'),
    (24, 'image-ferrari.png'),
    (25, 'image-ferrari.png'),
    (26, 'image-ferrari.png'),
    (27, 'image-ferrari.png'),
    (28, 'image-ferrari.png'),
    (29, 'image-gulf.png'),
    (30, 'image-gulf.png'),
    (31, 'image-gulf.png'),
    (32, 'image-gulf.png'),
    (33, 'image-gulf.png'),
    (34, 'image-gulf.png'),
    (35, 'image-gulf.png'),
    (36, 'image-gulf.png'),
    (37, 'image-gulf.png'),
    (38, 'image-gulf.png'),
    (39, 'image-gulf.png'),
    (40, 'image-gulf.png');

-- Inserir dados na tabela tbl_prices
INSERT INTO tbl_prices (variant_id, base_pricing, discount) VALUES
    (1, 300.99, 12.99),
    (2, 300.99, 0),
    (3, 300.99, 0),
    (4, 300.99, 0),
    (5, 300.99, 0),
    (6, 300.99, 0),
    (7, 300.99, 0),
    (8, 300.99, 0),
    (9, 300.99, 0),
    (10, 400.99, 0),
    (11, 400.99, 0),
    (12, 400.99, 0),
    (13, 350.99, 0),
    (14, 350.99, 0),
    (15, 350.99, 0),
    (16, 350.99, 0),
    (17, 500.99, 0),
    (18, 500.99, 0),
    (19, 500.99, 0),
    (20, 500.99, 0),
    (21, 500.99, 0),
    (22, 500.99, 0),
    (23, 500.99, 0),
    (24, 500.99, 0),
    (25, 500.99, 0),
    (26, 500.99, 0),
    (27, 500.99, 0),
    (28, 500.99, 0),
    (29, 1000, 20),
    (30, 1000, 0),
    (31, 1000, 0),
    (32, 1000, 0),
    (33, 1000, 0),
    (34, 1000, 0),
    (35, 1000, 0),
    (36, 1000, 0),
    (37, 1000, 0),
    (38, 1000, 0),
    (39, 1000, 0),
    (40, 1000, 0);






