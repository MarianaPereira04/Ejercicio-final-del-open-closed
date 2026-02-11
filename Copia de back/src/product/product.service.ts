import { Inject, Injectable } from '@nestjs/common';
import { ProductRepository } from './repository';

@Injectable()
export class ProductService {
  constructor(
    @Inject('ProductRepository')
    private readonly repository: ProductRepository,
  ) {}

  findAll() {
    return this.repository.findAll();
  }

  findOne(id: number) {
    return this.repository.findOne(id);
  }

  create(data) {
    return this.repository.create(data);
  }

  update(id: number, data) {
    return this.repository.update(id, data);
  }

  delete(id: number) {
    return this.repository.delete(id);
  }
}