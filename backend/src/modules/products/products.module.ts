import { Module } from '@nestjs/common';
import { ProductsService } from './services/products.service';
import { ProductsController } from './products.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ProductStock } from './entities/stock.entity';

@Module({
  imports: [TypeOrmModule.forFeature([ProductStock])],
  controllers: [ProductsController],
  providers: [ProductsService],
})
export class ProductsModule {}
