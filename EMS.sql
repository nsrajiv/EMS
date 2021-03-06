USE [EMS]
GO
/****** Object:  Table [dbo].[tbl_Employee]    Script Date: 03/06/2019 01:22:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_Employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[empno] [varchar](5) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[dept] [varchar](50) NULL,
	[contact] [varchar](10) NULL,
	[email] [varchar](50) NOT NULL,
	[status] [tinyint] NOT NULL,
 CONSTRAINT [PK_tbl_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Employee] ON
INSERT [dbo].[tbl_Employee] ([id], [empno], [name], [dept], [contact], [email], [status]) VALUES (1, N'S0001', N'Rajivgandhi', N'Developement', N'7845753639', N'rajivgandhi.ns@gmail.com', 1)
INSERT [dbo].[tbl_Employee] ([id], [empno], [name], [dept], [contact], [email], [status]) VALUES (2, N'R001', N'test', N'test', N'test', N'test', 1)
SET IDENTITY_INSERT [dbo].[tbl_Employee] OFF
/****** Object:  Table [dbo].[tbl_country_master]    Script Date: 03/06/2019 01:22:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_country_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](3) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[status] [tinyint] NOT NULL,
 CONSTRAINT [PK_tbl_country_master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_country_master] ON
INSERT [dbo].[tbl_country_master] ([id], [code], [name], [status]) VALUES (1, N'IND', N'India', 1)
INSERT [dbo].[tbl_country_master] ([id], [code], [name], [status]) VALUES (2, N'CAN', N'Canada', 1)
INSERT [dbo].[tbl_country_master] ([id], [code], [name], [status]) VALUES (3, N'USA', N'United States of America', 1)
INSERT [dbo].[tbl_country_master] ([id], [code], [name], [status]) VALUES (4, N'AUS', N'Australia', 1)
SET IDENTITY_INSERT [dbo].[tbl_country_master] OFF
/****** Object:  Table [dbo].[tbl_state_master]    Script Date: 03/06/2019 01:22:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_state_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country_id] [int] NOT NULL,
	[code] [varchar](3) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[status] [tinyint] NOT NULL,
 CONSTRAINT [PK_tbl_state_master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_state_master] ON
INSERT [dbo].[tbl_state_master] ([id], [country_id], [code], [name], [status]) VALUES (1, 1, N'TN', N'Tamil Nadu', 1)
INSERT [dbo].[tbl_state_master] ([id], [country_id], [code], [name], [status]) VALUES (2, 1, N'KL', N'Kerala', 1)
INSERT [dbo].[tbl_state_master] ([id], [country_id], [code], [name], [status]) VALUES (3, 1, N'KA', N'Karnataka', 1)
INSERT [dbo].[tbl_state_master] ([id], [country_id], [code], [name], [status]) VALUES (4, 2, N'AL', N'Alberta', 1)
INSERT [dbo].[tbl_state_master] ([id], [country_id], [code], [name], [status]) VALUES (5, 2, N'BC', N'British Columbia', 1)
INSERT [dbo].[tbl_state_master] ([id], [country_id], [code], [name], [status]) VALUES (6, 2, N'MT', N'Manitoba', 1)
INSERT [dbo].[tbl_state_master] ([id], [country_id], [code], [name], [status]) VALUES (7, 4, N'SY', N'Sydney', 1)
INSERT [dbo].[tbl_state_master] ([id], [country_id], [code], [name], [status]) VALUES (8, 4, N'VI', N'Victoria', 1)
INSERT [dbo].[tbl_state_master] ([id], [country_id], [code], [name], [status]) VALUES (9, 3, N'CA', N'California', 1)
INSERT [dbo].[tbl_state_master] ([id], [country_id], [code], [name], [status]) VALUES (10, 3, N'AT', N'Atlanta', 1)
SET IDENTITY_INSERT [dbo].[tbl_state_master] OFF
/****** Object:  Table [dbo].[tbl_city_master]    Script Date: 03/06/2019 01:22:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_city_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country_id] [int] NOT NULL,
	[state_id] [int] NOT NULL,
	[code] [varchar](3) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[status] [tinyint] NOT NULL,
 CONSTRAINT [PK_tbl_city_master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_city_master] ON
INSERT [dbo].[tbl_city_master] ([id], [country_id], [state_id], [code], [name], [status]) VALUES (1, 1, 1, N'CH', N'Chennai', 1)
INSERT [dbo].[tbl_city_master] ([id], [country_id], [state_id], [code], [name], [status]) VALUES (2, 1, 1, N'MA', N'Madurai', 1)
INSERT [dbo].[tbl_city_master] ([id], [country_id], [state_id], [code], [name], [status]) VALUES (3, 1, 1, N'TR', N'Trichy', 1)
INSERT [dbo].[tbl_city_master] ([id], [country_id], [state_id], [code], [name], [status]) VALUES (4, 1, 1, N'CO', N'Coimbatore', 1)
INSERT [dbo].[tbl_city_master] ([id], [country_id], [state_id], [code], [name], [status]) VALUES (5, 1, 2, N'AL', N'Alleppey', 1)
INSERT [dbo].[tbl_city_master] ([id], [country_id], [state_id], [code], [name], [status]) VALUES (6, 1, 2, N'KO', N'Kochi', 1)
INSERT [dbo].[tbl_city_master] ([id], [country_id], [state_id], [code], [name], [status]) VALUES (7, 1, 2, N'MU', N'Munnar', 1)
INSERT [dbo].[tbl_city_master] ([id], [country_id], [state_id], [code], [name], [status]) VALUES (8, 1, 3, N'BA', N'Bangalore', 1)
INSERT [dbo].[tbl_city_master] ([id], [country_id], [state_id], [code], [name], [status]) VALUES (9, 1, 3, N'MY', N'Mysore', 1)
SET IDENTITY_INSERT [dbo].[tbl_city_master] OFF
/****** Object:  Table [dbo].[tbl_EmployeeAddress]    Script Date: 03/06/2019 01:22:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_EmployeeAddress](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[ispermanant] [bit] NOT NULL,
	[addressline1] [varchar](500) NULL,
	[addressline2] [varchar](500) NULL,
	[country] [int] NULL,
	[state] [int] NULL,
	[city] [int] NULL,
	[pin] [varchar](50) NULL,
	[contact] [varchar](15) NULL,
	[status] [tinyint] NOT NULL,
 CONSTRAINT [PK_tbl_EmployeeAddress] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_EmployeeAddress] ON
INSERT [dbo].[tbl_EmployeeAddress] ([id], [employee_id], [ispermanant], [addressline1], [addressline2], [country], [state], [city], [pin], [contact], [status]) VALUES (1, 1, 1, N'No.2/47,East Street', N'Mugandanur', 1, 1, 1, N'613701', N'9842744564', 1)
SET IDENTITY_INSERT [dbo].[tbl_EmployeeAddress] OFF
/****** Object:  Default [DF_city_status]    Script Date: 03/06/2019 01:22:31 ******/
ALTER TABLE [dbo].[tbl_city_master] ADD  CONSTRAINT [DF_city_status]  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF_country_status]    Script Date: 03/06/2019 01:22:31 ******/
ALTER TABLE [dbo].[tbl_country_master] ADD  CONSTRAINT [DF_country_status]  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF_Employee_status]    Script Date: 03/06/2019 01:22:31 ******/
ALTER TABLE [dbo].[tbl_Employee] ADD  CONSTRAINT [DF_Employee_status]  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF_EmployeeAddress_status]    Script Date: 03/06/2019 01:22:31 ******/
ALTER TABLE [dbo].[tbl_EmployeeAddress] ADD  CONSTRAINT [DF_EmployeeAddress_status]  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF_state_status]    Script Date: 03/06/2019 01:22:31 ******/
ALTER TABLE [dbo].[tbl_state_master] ADD  CONSTRAINT [DF_state_status]  DEFAULT ((1)) FOR [status]
GO
/****** Object:  ForeignKey [FK_city_country]    Script Date: 03/06/2019 01:22:31 ******/
ALTER TABLE [dbo].[tbl_city_master]  WITH CHECK ADD  CONSTRAINT [FK_city_country] FOREIGN KEY([country_id])
REFERENCES [dbo].[tbl_country_master] ([id])
GO
ALTER TABLE [dbo].[tbl_city_master] CHECK CONSTRAINT [FK_city_country]
GO
/****** Object:  ForeignKey [FK_city_state]    Script Date: 03/06/2019 01:22:31 ******/
ALTER TABLE [dbo].[tbl_city_master]  WITH CHECK ADD  CONSTRAINT [FK_city_state] FOREIGN KEY([state_id])
REFERENCES [dbo].[tbl_state_master] ([id])
GO
ALTER TABLE [dbo].[tbl_city_master] CHECK CONSTRAINT [FK_city_state]
GO
/****** Object:  ForeignKey [FK_EmployeeAddress_city]    Script Date: 03/06/2019 01:22:31 ******/
ALTER TABLE [dbo].[tbl_EmployeeAddress]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeAddress_city] FOREIGN KEY([city])
REFERENCES [dbo].[tbl_city_master] ([id])
GO
ALTER TABLE [dbo].[tbl_EmployeeAddress] CHECK CONSTRAINT [FK_EmployeeAddress_city]
GO
/****** Object:  ForeignKey [FK_EmployeeAddress_country]    Script Date: 03/06/2019 01:22:31 ******/
ALTER TABLE [dbo].[tbl_EmployeeAddress]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeAddress_country] FOREIGN KEY([country])
REFERENCES [dbo].[tbl_country_master] ([id])
GO
ALTER TABLE [dbo].[tbl_EmployeeAddress] CHECK CONSTRAINT [FK_EmployeeAddress_country]
GO
/****** Object:  ForeignKey [FK_EmployeeAddress_Employee]    Script Date: 03/06/2019 01:22:31 ******/
ALTER TABLE [dbo].[tbl_EmployeeAddress]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeAddress_Employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[tbl_Employee] ([id])
GO
ALTER TABLE [dbo].[tbl_EmployeeAddress] CHECK CONSTRAINT [FK_EmployeeAddress_Employee]
GO
/****** Object:  ForeignKey [FK_EmployeeAddress_state]    Script Date: 03/06/2019 01:22:31 ******/
ALTER TABLE [dbo].[tbl_EmployeeAddress]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeAddress_state] FOREIGN KEY([state])
REFERENCES [dbo].[tbl_state_master] ([id])
GO
ALTER TABLE [dbo].[tbl_EmployeeAddress] CHECK CONSTRAINT [FK_EmployeeAddress_state]
GO
/****** Object:  ForeignKey [FK_state_country]    Script Date: 03/06/2019 01:22:31 ******/
ALTER TABLE [dbo].[tbl_state_master]  WITH CHECK ADD  CONSTRAINT [FK_state_country] FOREIGN KEY([country_id])
REFERENCES [dbo].[tbl_country_master] ([id])
GO
ALTER TABLE [dbo].[tbl_state_master] CHECK CONSTRAINT [FK_state_country]
GO
