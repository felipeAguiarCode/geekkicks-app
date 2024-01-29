import { Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Product {
  @PrimaryGeneratedColumn()
  id: number;
  brand_id: number;
  segment_id: number;
  product_name: string;
  description: string;
  active: boolean;
  created_at: Date;
  updated_at: Date;
  image_preview_url: string;
}
