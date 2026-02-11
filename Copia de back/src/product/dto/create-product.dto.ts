import { IsNumber, IsString } from "class-validator";

//Cambios acá
export class CreateProductDto {
  @IsString()
  name: string;

  @IsNumber()
  price: number;
}

