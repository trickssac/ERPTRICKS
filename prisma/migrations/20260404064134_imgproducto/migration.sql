/*
  Warnings:

  - You are about to drop the `ProductoImagen` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "ProductoImagen" DROP CONSTRAINT "ProductoImagen_productoId_fkey";

-- DropTable
DROP TABLE "ProductoImagen";
