import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

import { ProductQuery } from '../queries/product.catalog.query';
import { ProductStock } from '../entities/stock.entity';
import { ProductCatalogDto } from '../dtos/product-catalog-list.dto';

@Injectable()
export class ProductsService {
  constructor(
    @InjectRepository(ProductStock)
    private readonly productStockRepository: Repository<ProductStock>,
  ) {}
  async findAll() {
    const rawResults = await this.productStockRepository.query(ProductQuery);

    const resultsDto: ProductCatalogDto[] = rawResults.map((result) => ({
      brand_id: result.brand_id,
      brand_name: result.brand_name,
      product_id: result.product_id,
      product_name: result.product_name,
      total_stock: result.total_stock,
    }));

    return resultsDto;
  }
}
