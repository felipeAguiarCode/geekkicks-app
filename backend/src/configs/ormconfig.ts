import { TypeOrmModuleOptions } from '@nestjs/typeorm';
import { ProductStock } from 'src/modules/products/entities/stock.entity';

const ormconfig: TypeOrmModuleOptions = {
  type: 'postgres',
  host: 'localhost',
  port: 1234,
  username: 'sample',
  password: 'sample',
  database: 'db_sample',
  entities: [ProductStock],
  synchronize: false,
};

export default ormconfig;
