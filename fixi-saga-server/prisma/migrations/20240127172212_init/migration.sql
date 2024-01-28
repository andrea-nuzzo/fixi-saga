-- CreateTable
CREATE TABLE "Users" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "role" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Customers" (
    "id" SERIAL NOT NULL,
    "companyName" TEXT,
    "typeBusiness" TEXT,
    "fiscalCodeCeo" TEXT,
    "vatNumber" TEXT NOT NULL,
    "address" TEXT,
    "postcode" TEXT,
    "municipality" TEXT,
    "province" TEXT,
    "phone" TEXT,
    "mobile" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Customers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Machines" (
    "id" SERIAL NOT NULL,
    "customerId" INTEGER,
    "model" TEXT,
    "serialNumber" TEXT NOT NULL,
    "activationDate" TIMESTAMP(3),
    "lastVerificationDate" TIMESTAMP(3),
    "dgfeReplacementDate" TIMESTAMP(3),
    "contract" BOOLEAN,
    "typeContract" TEXT,
    "contractMonths" INTEGER,
    "lastResetNumber" BIGINT,
    "lastResetDate" TIMESTAMP(3),
    "qrCode" TEXT,
    "lottery" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Machines_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Interventions" (
    "id" SERIAL NOT NULL,
    "machineId" INTEGER NOT NULL,
    "openingIntervention" TIMESTAMP(3),
    "closureIntervention" TIMESTAMP(3),
    "descriptionIntervention" TEXT,
    "replacedParts" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Interventions_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Users_email_key" ON "Users"("email");

-- AddForeignKey
ALTER TABLE "Machines" ADD CONSTRAINT "Machines_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES "Customers"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Interventions" ADD CONSTRAINT "Interventions_machineId_fkey" FOREIGN KEY ("machineId") REFERENCES "Machines"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
