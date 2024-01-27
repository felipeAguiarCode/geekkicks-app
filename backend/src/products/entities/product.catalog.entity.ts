// src/products/product.entity.ts

import { Entity, Column, PrimaryColumn } from 'typeorm';

@Entity()
export class ProductCatalog {
  @PrimaryColumn()
  brand_id: number;

  @Column()
  brand_name: string;

  @Column()
  product_id: number;

  @Column()
  product_name: string;

  @Column()
  total_stock: number;
}
