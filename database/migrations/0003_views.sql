-- view principal

 SELECT b.brand_name,
    p.brand_id,
    p.product_name,
    p.id AS product_id,
    p.active,
    v.size,
    v.color,
    v.type,
    s.quantity AS stock_quantity,
    v.active AS is_active
FROM tbl_variants v
     JOIN tbl_products p ON v.product_id = p.id
     JOIN tbl_brands b ON p.brand_id = b.id
     JOIN tbl_stocks s ON v.id = s.variant_id;