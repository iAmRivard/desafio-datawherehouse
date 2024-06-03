SELECT TOP (1000) [Código País]
      ,[Nombre]
  FROM [desafio].[dbo].[País$]

SELECT TOP (1000) [Serie]
      ,[Número]
      ,[Fecha]
      ,[Código Sector]
      ,[Código País]
      ,[Código Vendedor]
      ,[Código Gaseosa]
      ,[Ppto]
      ,[Cantidad]
      ,[Merma]
      ,[Subtotal]
      ,[IGV]
      ,[Total]
  FROM [desafio].[dbo].[Factura$]

  SELECT TOP (1000) [Código Sector]
      ,[Descripción Sector]
  FROM [desafio].[dbo].[Sector$]

  SELECT TOP (1000) [Código Gaseosa]
      ,[Nombre Gaseosa]
      ,[Precio]
  FROM [desafio].[dbo].[Gaseosa$]


  SELECT TOP (1000) [Código Vendedor]
      ,[Nombre Vendedor]
      ,[Código Supervisor]
  FROM [desafio].[dbo].[Vendedor$]


  SELECT TOP (1000) [Código Supervisor]
      ,[Nombre Supervisor]
  FROM [desafio].[dbo].[Supervisor$]



  ALTER TABLE dbo.País$
ALTER COLUMN [Código País] FLOAT NOT NULL;

ALTER TABLE dbo.País$
ADD CONSTRAINT PK_Pais PRIMARY KEY ([Código País]);

ALTER TABLE dbo.Factura$
ADD CONSTRAINT FK_FacturaPais FOREIGN KEY ([Código País]) REFERENCES dbo.País$([Código País]);



  ALTER TABLE [dbo].[Sector$]
ALTER COLUMN [Código Sector] FLOAT NOT NULL;

ALTER TABLE [dbo].[Sector$]
ADD CONSTRAINT PK_Sector PRIMARY KEY ([Código Sector]);

ALTER TABLE dbo.Factura$
ADD CONSTRAINT FK_FacturaSector FOREIGN KEY ([Código Sector]) REFERENCES [dbo].[Sector$]([Código Sector]);



  ALTER TABLE [dbo].[Gaseosa$]
ALTER COLUMN [Código Gaseosa] FLOAT NOT NULL;

ALTER TABLE [dbo].[Gaseosa$]
ADD CONSTRAINT PKGaseosa PRIMARY KEY ([Código Gaseosa]);

ALTER TABLE dbo.Factura$
ADD CONSTRAINT FK_FacturaGaseosa FOREIGN KEY ([Código Gaseosa]) REFERENCES [dbo].[Gaseosa$]([Código Gaseosa]);


  ALTER TABLE [dbo].[Vendedor$]
ALTER COLUMN [Código Vendedor] FLOAT NOT NULL;

ALTER TABLE [dbo].[Vendedor$]
ADD CONSTRAINT PKVendedor PRIMARY KEY ([Código Vendedor]);

ALTER TABLE dbo.Factura$
ADD CONSTRAINT FK_Vendedor FOREIGN KEY ([Código Vendedor]) REFERENCES [dbo].[Vendedor$]([Código Vendedor]);

 ALTER TABLE [dbo].[Supervisor$]
ALTER COLUMN [Código Supervisor] FLOAT NOT NULL;

ALTER TABLE [dbo].[Supervisor$]
ADD CONSTRAINT PKSupervisor PRIMARY KEY ([Código Supervisor]);

ALTER TABLE [dbo].[Vendedor$]
ADD CONSTRAINT FK_VendedorSupervisor FOREIGN KEY ([Código Supervisor]) REFERENCES [dbo].[Supervisor$]([Código Supervisor]);
