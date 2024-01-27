-- criando tabelas iniciais (preciso revalidar os not nulls)

CREATE TABLE IF NOT EXISTS  tbl_brands (
    id serial PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ DEFAULT current_timestamp,
    updated_at TIMESTAMPTZ DEFAULT current_timestamp
);


CREATE TABLE IF NOT EXISTS  tbl_segments (
    id serial PRIMARY KEY,
    segment_name VARCHAR(20) NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ DEFAULT current_timestamp,
    updated_at TIMESTAMPTZ DEFAULT current_timestamp
);

CREATE TABLE IF NOT EXISTS  tbl_products (
    id serial PRIMARY KEY,
    brand_id INTEGER NOT NULL,
    segment_id INTEGER NOT NULL,
    product_name VARCHAR(80) NOT NULL,
    description TEXT,
    active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ DEFAULT current_timestamp,
    updated_at TIMESTAMPTZ DEFAULT current_timestamp,
    CONSTRAINT fk_brand FOREIGN KEY (brand_id) REFERENCES tbl_brands(id),
    CONSTRAINT fk_segment FOREIGN KEY (segment_id) REFERENCES tbl_segments(id)
);


CREATE TABLE IF NOT EXISTS tbl_variants (
    id serial PRIMARY KEY,
    product_id INTEGER NOT NULL,
    size INTEGER CHECK (size <= 60) NOT NULL,
    color VARCHAR(30) NOT NULL,
    type VARCHAR(30) NOT NULL,
    sku_code VARCHAR(40) NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ DEFAULT current_timestamp,
    updated_at TIMESTAMPTZ DEFAULT current_timestamp,
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES tbl_products(id)
);

CREATE TABLE IF NOT EXISTS tbl_pictures (
    id serial PRIMARY KEY,
    variant_id INTEGER NOT NULL,
    picture_url VARCHAR(150) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT current_timestamp,
    updated_at TIMESTAMPTZ DEFAULT current_timestamp,
    CONSTRAINT fk_variant FOREIGN KEY (variant_id) REFERENCES tbl_variants(id)
);

CREATE TABLE IF NOT EXISTS  tbl_prices (
    id serial PRIMARY KEY,
    variant_id INTEGER NOT NULL,
    base_pricing NUMERIC(10, 2) NOT NULL,
    discount NUMERIC(10, 2) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT current_timestamp,
    updated_at TIMESTAMPTZ DEFAULT current_timestamp,
    CONSTRAINT fk_variant FOREIGN KEY (variant_id) REFERENCES tbl_variants(id)
);


CREATE TABLE IF NOT EXISTS  tbl_stocks (
    id serial PRIMARY KEY,
    variant_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    created_at TIMESTAMPTZ DEFAULT current_timestamp,
    updated_at TIMESTAMPTZ DEFAULT current_timestamp,
    CONSTRAINT fk_variant FOREIGN KEY (variant_id) REFERENCES tbl_variants(id)
);
