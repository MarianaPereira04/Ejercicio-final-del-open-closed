/*
  Warnings:

  - You are about to drop the column `artisanId` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `categoryId` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `image` on the `Product` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Product" DROP COLUMN "artisanId",
DROP COLUMN "categoryId",
DROP COLUMN "image";
