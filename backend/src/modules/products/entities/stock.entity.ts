// src/product-stock.entity.ts

import { ViewEntity, ViewColumn } from 'typeorm';

@ViewEntity({
  name: 'view_product_stock',
  expression: `
    SELECT * FROM view_product_stock
  `,
})
export class ProductStock {
  @ViewColumn()
  brand_name: string;

  @ViewColumn()
  product_name: string;
}
