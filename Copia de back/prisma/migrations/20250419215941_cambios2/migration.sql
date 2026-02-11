/*
  Warnings:

  - You are about to drop the column `userId` on the `Address` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `Inventory` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `Inventory` table. All the data in the column will be lost.
  - You are about to drop the column `receiverId` on the `Message` table. All the data in the column will be lost.
  - You are about to drop the column `senderId` on the `Message` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Message` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `Notification` table. All the data in the column will be lost.
  - You are about to drop the column `buyerId` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `orderId` on the `OrderItem` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `OrderItem` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `OrderItem` table. All the data in the column will be lost.
  - You are about to drop the column `buyerId` on the `Review` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `Review` table. All the data in the column will be lost.
  - Added the required column `user` to the `Address` table without a default value. This is not possible if the table is not empty.
  - Added the required column `artisan` to the `Inventory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product` to the `Inventory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `receiver` to the `Message` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sender` to the `Message` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user` to the `Notification` table without a default value. This is not possible if the table is not empty.
  - Added the required column `buyer` to the `Order` table without a default value. This is not possible if the table is not empty.
  - Added the required column `order` to the `OrderItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product` to the `OrderItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `buyer` to the `Review` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product` to the `Review` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Address" DROP COLUMN "userId",
ADD COLUMN     "user" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Inventory" DROP COLUMN "productId",
DROP COLUMN "userId",
ADD COLUMN     "artisan" TEXT NOT NULL,
ADD COLUMN     "product" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Message" DROP COLUMN "receiverId",
DROP COLUMN "senderId",
DROP COLUMN "updatedAt",
ADD COLUMN     "receiver" TEXT NOT NULL,
ADD COLUMN     "sender" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Notification" DROP COLUMN "userId",
ADD COLUMN     "user" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Order" DROP COLUMN "buyerId",
ADD COLUMN     "buyer" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "OrderItem" DROP COLUMN "orderId",
DROP COLUMN "productId",
DROP COLUMN "updatedAt",
ADD COLUMN     "order" TEXT NOT NULL,
ADD COLUMN     "product" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Review" DROP COLUMN "buyerId",
DROP COLUMN "productId",
ADD COLUMN     "buyer" TEXT NOT NULL,
ADD COLUMN     "product" TEXT NOT NULL;
