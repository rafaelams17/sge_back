import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
   const user = await prisma.usuario.create({
        data: {
          usuario: 'Rafaela',
          senha: '123',
        },
      })
      console.log(user)
}

main()
  .then(async () => {
    await prisma.$disconnect()
  })
  .catch(async (e) => {
    console.error(e)
    await prisma.$disconnect()
    process.exit(1)
  })