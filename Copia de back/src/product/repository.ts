import { Product } from '@prisma/client';

export interface ProductRepository {
  findAll(): Promise<Product[]>;
  findOne(id: number): Promise<Product>;
  create(data: Omit<Product, 'id' | 'createdAt'>): Promise<Product>;
  update(id: number, data: Partial<Product>): Promise<Product>;
  delete(id: number): Promise<void>;
}