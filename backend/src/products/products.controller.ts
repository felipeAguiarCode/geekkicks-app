import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { ProductsService } from './products.service';
import { CreateProductDto } from './dto/create-product.dto';
import { UpdateProductDto } from './dto/update-product.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { ProductStock } from './entities/stock.entity';
import { Repository } from 'typeorm';
import { ProductCatalog } from './entities/product.catalog.entity';
import { productQuery } from './queries/product.catalog.query';
import { ProductCatalogDto } from './dto/product-catalog-list.dto';

@Controller('v1/products')
export class ProductsController {
  constructor(
    @InjectRepository(ProductStock)
    private readonly productStockRepository: Repository<ProductCatalog>,
    private readonly productsService: ProductsService,
  ) {}

  @Post()
  create(@Body() createProductDto: CreateProductDto) {
    return this.productsService.create(createProductDto);
  }

  @Get()
  async findAll(): Promise<ProductCatalogDto[]> {
    const rawResults = await this.productStockRepository.query(productQuery);

    const resultsDto: ProductCatalogDto[] = rawResults.map((result) => ({
      brand_id: result.brand_id,
      brand_name: result.brand_name,
      product_id: result.product_id,
      product_name: result.product_name,
      total_stock: result.total_stock,
    }));

    return resultsDto;
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.productsService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateProductDto: UpdateProductDto) {
    return this.productsService.update(+id, updateProductDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.productsService.remove(+id);
  }
}
