-- CreateTable
CREATE TABLE "ProductoImagen" (
    "id" TEXT NOT NULL,
    "productoId" TEXT NOT NULL,
    "url" TEXT NOT NULL,
    "alt" TEXT,
    "orden" INTEGER NOT NULL DEFAULT 0,
    "esPrincipal" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "ProductoImagen_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "ProductoImagen_productoId_idx" ON "ProductoImagen"("productoId");

-- AddForeignKey
ALTER TABLE "ProductoImagen" ADD CONSTRAINT "ProductoImagen_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE CASCADE ON UPDATE CASCADE;
