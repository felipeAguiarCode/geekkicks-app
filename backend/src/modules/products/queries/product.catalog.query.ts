// src/queries/product.query.ts

export const ProductQuery = `
  SELECT
    p.brand_id,
    p.brand_name,
    p.product_id,
    p.product_name,
    SUM(p.STOCK_QUANTITY) AS total_stock
  FROM VIEW_PRODUCT_STOCK AS p
  WHERE p.IS_ACTIVE IS TRUE
  GROUP BY p.BRAND_ID,
    p.BRAND_NAME,
    p.PRODUCT_ID,
    p.PRODUCT_NAME,
    p.IS_ACTIVE
  ORDER BY p.PRODUCT_ID
`;
