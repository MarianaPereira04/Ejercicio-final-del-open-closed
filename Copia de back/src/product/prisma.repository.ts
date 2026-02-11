import { Injectable } from '@nestjs/common';
import { Product } from '@prisma/client';
import { ProductRepository } from './repository';
import { PrismaService } from './prisma.service';

@Injectable()
export class ProductPrismaRepository implements ProductRepository {
  constructor(private readonly prisma: PrismaService) {} //Se hizo la importanción

  findAll(): Promise<Product[]> {
    return this.prisma.product.findMany();
  }

  findOne(id: number): Promise<Product> {
    return this.prisma.product.findUnique({ where: { id } });
  }

  create(data): Promise<Product> {
    return this.prisma.product.create({ data });
  }

  update(id: number, data): Promise<Product> {
    return this.prisma.product.update({
      where: { id },
      data,
    });
  }

  async delete(id: number): Promise<void> {
    await this.prisma.product.delete({ where: { id } });
  }
}