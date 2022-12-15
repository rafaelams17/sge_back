-- CreateTable
CREATE TABLE "alunos" (
    "id_alunos" SERIAL NOT NULL,
    "nome_aluno" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "data_nasc" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "alunos_pkey" PRIMARY KEY ("id_alunos")
);

-- CreateTable
CREATE TABLE "modulos" (
    "id_mod" SERIAL NOT NULL,
    "nome_mod" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "data_nasc" TIMESTAMP(3) NOT NULL,
    "nota1" DOUBLE PRECISION NOT NULL,
    "nota2" DOUBLE PRECISION NOT NULL,
    "nota3" DOUBLE PRECISION NOT NULL,
    "aluno_id" INTEGER NOT NULL,

    CONSTRAINT "modulos_pkey" PRIMARY KEY ("id_mod")
);

-- CreateIndex
CREATE UNIQUE INDEX "alunos_cpf_key" ON "alunos"("cpf");

-- CreateIndex
CREATE UNIQUE INDEX "modulos_cpf_key" ON "modulos"("cpf");
