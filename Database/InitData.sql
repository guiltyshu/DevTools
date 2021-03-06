USE [HumanResourceManager]
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([Id], [StreetAddress], [PostalCode], [City], [StateProvince], [Country]) VALUES (2, N'453/23/21 Lê Quang Định', N'700000', N'TP.HCM', N'TP.HCM', N'Việt Nam')
INSERT [dbo].[Locations] ([Id], [StreetAddress], [PostalCode], [City], [StateProvince], [Country]) VALUES (3, N'653/12B Phạm Văn Đồng', N'100000', N'Hà Nội', N'Hà Nội', N'Việt Nam')
INSERT [dbo].[Locations] ([Id], [StreetAddress], [PostalCode], [City], [StateProvince], [Country]) VALUES (4, N'233/65A Quang Trung', N'650000', N'Nha Trang', N'Khánh Hoà', N'VIệt Nam')
SET IDENTITY_INSERT [dbo].[Locations] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [LocationId], [Name]) VALUES (1, 2, N'Phòng quản lý nhân sự')
INSERT [dbo].[Departments] ([Id], [LocationId], [Name]) VALUES (2, 2, N'Phòng kế toán')
INSERT [dbo].[Departments] ([Id], [LocationId], [Name]) VALUES (3, 2, N'Phòng bảo vệ')
INSERT [dbo].[Departments] ([Id], [LocationId], [Name]) VALUES (4, 2, N'Phòng quản lý dự án')
INSERT [dbo].[Departments] ([Id], [LocationId], [Name]) VALUES (5, 2, N'Phòng kỹ thuật')
INSERT [dbo].[Departments] ([Id], [LocationId], [Name]) VALUES (6, 3, N'Phòng marketing')
INSERT [dbo].[Departments] ([Id], [LocationId], [Name]) VALUES (7, 3, N'Phòng đo lường chất lượng')
INSERT [dbo].[Departments] ([Id], [LocationId], [Name]) VALUES (8, 3, N'Phòng truyền thông và đối ngoại')
INSERT [dbo].[Departments] ([Id], [LocationId], [Name]) VALUES (9, 4, N'Phòng thí nghiệm')
INSERT [dbo].[Departments] ([Id], [LocationId], [Name]) VALUES (10, 4, N'Phòng quản lý kho hàng')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([Id], [Title], [MinSalary], [MaxSalary]) VALUES (1, N'Personnel Manager', CAST(500000.000 AS Decimal(18, 3)), CAST(600000.000 AS Decimal(18, 3)))
INSERT [dbo].[Jobs] ([Id], [Title], [MinSalary], [MaxSalary]) VALUES (2, N'Project Manager', CAST(450000.000 AS Decimal(18, 3)), CAST(550000.000 AS Decimal(18, 3)))
INSERT [dbo].[Jobs] ([Id], [Title], [MinSalary], [MaxSalary]) VALUES (3, N'Team Leader', CAST(350000.000 AS Decimal(18, 3)), CAST(400000.000 AS Decimal(18, 3)))
INSERT [dbo].[Jobs] ([Id], [Title], [MinSalary], [MaxSalary]) VALUES (4, N'Software Engineer', CAST(46000.000 AS Decimal(18, 3)), CAST(65000.000 AS Decimal(18, 3)))
INSERT [dbo].[Jobs] ([Id], [Title], [MinSalary], [MaxSalary]) VALUES (5, N'Network Engineer', CAST(65000.000 AS Decimal(18, 3)), CAST(75000.000 AS Decimal(18, 3)))
INSERT [dbo].[Jobs] ([Id], [Title], [MinSalary], [MaxSalary]) VALUES (6, N'Security Engineer', CAST(70000.000 AS Decimal(18, 3)), CAST(80000.000 AS Decimal(18, 3)))
INSERT [dbo].[Jobs] ([Id], [Title], [MinSalary], [MaxSalary]) VALUES (7, N'Representative', CAST(80000.000 AS Decimal(18, 3)), CAST(90000.000 AS Decimal(18, 3)))
INSERT [dbo].[Jobs] ([Id], [Title], [MinSalary], [MaxSalary]) VALUES (8, N'Finance Manager', CAST(800000.000 AS Decimal(18, 3)), CAST(900000.000 AS Decimal(18, 3)))
INSERT [dbo].[Jobs] ([Id], [Title], [MinSalary], [MaxSalary]) VALUES (9, N'Accounting Manager ', CAST(760000.000 AS Decimal(18, 3)), CAST(840000.000 AS Decimal(18, 3)))
INSERT [dbo].[Jobs] ([Id], [Title], [MinSalary], [MaxSalary]) VALUES (10, N'Production Manager', CAST(790000.000 AS Decimal(18, 3)), CAST(860000.000 AS Decimal(18, 3)))
INSERT [dbo].[Jobs] ([Id], [Title], [MinSalary], [MaxSalary]) VALUES (11, N'Section Manager', CAST(850000.000 AS Decimal(18, 3)), CAST(870000.000 AS Decimal(18, 3)))
INSERT [dbo].[Jobs] ([Id], [Title], [MinSalary], [MaxSalary]) VALUES (12, N'Receptionist', CAST(4000.000 AS Decimal(18, 3)), CAST(5000.000 AS Decimal(18, 3)))
INSERT [dbo].[Jobs] ([Id], [Title], [MinSalary], [MaxSalary]) VALUES (13, N'Apprentice', CAST(3000.000 AS Decimal(18, 3)), CAST(3500.000 AS Decimal(18, 3)))
SET IDENTITY_INSERT [dbo].[Jobs] OFF
GO
