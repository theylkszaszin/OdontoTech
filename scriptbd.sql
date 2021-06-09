USE [odontotech]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 09/06/2021 02:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[cli_codigo] [int] IDENTITY(1,1) NOT NULL,
	[cli_nome] [varchar](200) NULL,
	[cli_telefone] [varchar](200) NULL,
	[cli_cpf] [varchar](200) NULL,
	[cli_cnpj] [varchar](200) NULL,
	[cli_endereco] [varchar](200) NULL,
	[cli_numerorua] [varchar](200) NULL,
	[cli_cidade] [varchar](200) NULL,
	[cli_estado] [varchar](200) NULL,
	[cli_cep] [varchar](200) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[cli_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Controle Financeiros]    Script Date: 09/06/2021 02:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Controle Financeiros](
	[fin_codigos] [int] IDENTITY(1,1) NOT NULL,
	[fin_datadevencimento] [date] NULL,
	[fin_valortotal] [money] NULL,
	[fin_statu] [varchar](200) NULL,
	[cod_clientes] [int] NULL,
 CONSTRAINT [PK_Controle Financeiros] PRIMARY KEY CLUSTERED 
(
	[fin_codigos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 09/06/2021 02:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedor](
	[for_codigo] [int] IDENTITY(1,1) NOT NULL,
	[for_racaosociais] [varchar](200) NULL,
	[for_cnpj] [varchar](200) NULL,
	[for_cpf] [varchar](200) NULL,
	[for_endereco] [varchar](200) NULL,
	[for_email] [varchar](200) NULL,
	[for_telefone] [varchar](200) NULL,
	[for_cep] [varchar](200) NULL,
	[for_estado] [varchar](200) NULL,
	[for_cidade] [varchar](200) NULL,
	[for_numero] [varchar](200) NULL,
 CONSTRAINT [PK_Fornecedor] PRIMARY KEY CLUSTERED 
(
	[for_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionarios]    Script Date: 09/06/2021 02:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionarios](
	[fun_codigos] [int] IDENTITY(1,1) NOT NULL,
	[fun_nome] [varchar](200) NULL,
	[fun_telefone] [varchar](200) NULL,
	[fun_cpf] [varchar](200) NULL,
	[fun_endereco] [varchar](200) NULL,
	[fun_cidade] [varchar](200) NULL,
	[fun_estado] [varchar](200) NULL,
	[fun_email] [varchar](200) NULL,
	[fun_cargo] [varchar](200) NULL,
	[fun_salario] [money] NULL,
 CONSTRAINT [PK_Funcionarios] PRIMARY KEY CLUSTERED 
(
	[fun_codigos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ordem Servico]    Script Date: 09/06/2021 02:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordem Servico](
	[ord_codigo] [int] IDENTITY(1,1) NOT NULL,
	[ord_dataderecebimento] [date] NULL,
	[ord_dataentrega] [date] NULL,
	[ord_quantidade] [int] NULL,
	[ord_descricao] [varchar](200) NULL,
	[ord_valor] [money] NULL,
	[cod_clientes] [int] NOT NULL,
 CONSTRAINT [PK_Ordem Servico] PRIMARY KEY CLUSTERED 
(
	[ord_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pecas]    Script Date: 09/06/2021 02:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pecas](
	[pec_codigos] [int] IDENTITY(1,1) NOT NULL,
	[pec_nome] [varchar](200) NULL,
	[cod_ordemservico] [int] NULL,
 CONSTRAINT [PK_Pecas] PRIMARY KEY CLUSTERED 
(
	[pec_codigos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 09/06/2021 02:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Usu_codigos] [int] IDENTITY(1,1) NOT NULL,
	[usu_nome] [varchar](200) NULL,
	[usu_senha] [varchar](200) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Usu_codigos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([cli_codigo], [cli_nome], [cli_telefone], [cli_cpf], [cli_cnpj], [cli_endereco], [cli_numerorua], [cli_cidade], [cli_estado], [cli_cep]) VALUES (1, N'Felipe', N'(11)1223-3211', N'12121212', N'', N'Rua José', NULL, N'Presidente Prudente', N'SP', N'12990-911')
INSERT [dbo].[Clientes] ([cli_codigo], [cli_nome], [cli_telefone], [cli_cpf], [cli_cnpj], [cli_endereco], [cli_numerorua], [cli_cidade], [cli_estado], [cli_cep]) VALUES (2, N'Felipe', N'(11)1223-3211', N'12121212', N'', N'Rua José', NULL, N'Presidente Prudente', N'SP', N'12990-911')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Fornecedor] ON 

INSERT [dbo].[Fornecedor] ([for_codigo], [for_racaosociais], [for_cnpj], [for_cpf], [for_endereco], [for_email], [for_telefone], [for_cep], [for_estado], [for_cidade], [for_numero]) VALUES (1, N'Fornec Peças S.A. ', N'65.765.884/0001-10', N'', N'Rua Pombinhas', N'forn@gmail.com', N'(12) 3209-3211', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Fornecedor] OFF
GO
SET IDENTITY_INSERT [dbo].[Funcionarios] ON 

INSERT [dbo].[Funcionarios] ([fun_codigos], [fun_nome], [fun_telefone], [fun_cpf], [fun_endereco], [fun_cidade], [fun_estado], [fun_email], [fun_cargo], [fun_salario]) VALUES (1, N'Felipe', N'(11) 91899-2910', N'424.804.121-21', N'Rua Claro Campo', N'Mogi das Cruzes', N'SP', N'felipe@odontotech.com', N'Adm', 500.0000)
SET IDENTITY_INSERT [dbo].[Funcionarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Ordem Servico] ON 

INSERT [dbo].[Ordem Servico] ([ord_codigo], [ord_dataderecebimento], [ord_dataentrega], [ord_quantidade], [ord_descricao], [ord_valor], [cod_clientes]) VALUES (1, CAST(N'2021-06-09' AS Date), NULL, 1, N'Necessário reparo', 40.2000, 2)
SET IDENTITY_INSERT [dbo].[Ordem Servico] OFF
GO
SET IDENTITY_INSERT [dbo].[Pecas] ON 

INSERT [dbo].[Pecas] ([pec_codigos], [pec_nome], [cod_ordemservico]) VALUES (1, N'Biturador', 1)
SET IDENTITY_INSERT [dbo].[Pecas] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Usu_codigos], [usu_nome], [usu_senha]) VALUES (2, N'felipe', N'7lox5QR+yhg5u5Tx2Y6HCQ==')
INSERT [dbo].[Usuario] ([Usu_codigos], [usu_nome], [usu_senha]) VALUES (3, N'adm', N'7lox5QR+yhg5u5Tx2Y6HCQ==')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Controle Financeiros]  WITH CHECK ADD  CONSTRAINT [FK_Controle Financeiros_Clientes] FOREIGN KEY([cod_clientes])
REFERENCES [dbo].[Clientes] ([cli_codigo])
GO
ALTER TABLE [dbo].[Controle Financeiros] CHECK CONSTRAINT [FK_Controle Financeiros_Clientes]
GO
ALTER TABLE [dbo].[Ordem Servico]  WITH CHECK ADD  CONSTRAINT [FK_Ordem Servico_Ordem Servico] FOREIGN KEY([cod_clientes])
REFERENCES [dbo].[Clientes] ([cli_codigo])
GO
ALTER TABLE [dbo].[Ordem Servico] CHECK CONSTRAINT [FK_Ordem Servico_Ordem Servico]
GO
ALTER TABLE [dbo].[Pecas]  WITH CHECK ADD  CONSTRAINT [FK_Pecas_Ordem Servico] FOREIGN KEY([cod_ordemservico])
REFERENCES [dbo].[Ordem Servico] ([ord_codigo])
GO
ALTER TABLE [dbo].[Pecas] CHECK CONSTRAINT [FK_Pecas_Ordem Servico]
GO
