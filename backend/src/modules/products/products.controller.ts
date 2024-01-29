import { Controller, Get } from '@nestjs/common';

import { ProductsService } from './services/products.service';

import { ProductCatalogDto } from './dtos/product-catalog-list.dto';

@Controller('v1/products')
export class ProductsController {
  constructor(private readonly productsService: ProductsService) {}

  @Get()
  async findAll(): Promise<ProductCatalogDto[]> {
    return this.productsService.findAll();
  }
}
