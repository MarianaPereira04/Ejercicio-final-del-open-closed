import { Module } from '@nestjs/common';
import { ProductService } from './product.service';
import { ProductController } from './product.controller';
import { ProductPrismaRepository } from './prisma.repository';
import { PrismaService } from './prisma.service';

@Module({
  controllers: [ProductController],
  providers: [PrismaService, ProductService, //Cambios acá, agregué el PrismaService
    {provide: 'ProductRepository',
      useClass: ProductPrismaRepository,}
  ],
})
export class ProductModule {}
