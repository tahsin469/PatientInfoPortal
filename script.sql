USE [PatientInfoDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/30/2024 3:22:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Allergies]    Script Date: 6/30/2024 3:22:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Allergies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AllergyName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Allergies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Allergies_Detailss]    Script Date: 6/30/2024 3:22:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Allergies_Detailss](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NOT NULL,
	[AllergiesID] [int] NOT NULL,
 CONSTRAINT [PK_Allergies_Detailss] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiseaseInformations]    Script Date: 6/30/2024 3:22:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiseaseInformations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DiseaseInformations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCD_Details]    Script Date: 6/30/2024 3:22:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCD_Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NOT NULL,
	[NCDID] [int] NOT NULL,
 CONSTRAINT [PK_NCD_Details] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCDs]    Script Date: 6/30/2024 3:22:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCDs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NCDName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_NCDs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 6/30/2024 3:22:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[DiseaseInformationID] [int] NOT NULL,
	[NCDID] [int] NOT NULL,
	[AllergiesID] [int] NOT NULL,
 CONSTRAINT [PK_Patients] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240630062727_InitialCreate', N'6.0.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240630063313_InitialCreateAllergies_Details', N'6.0.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240630065801_InitialCreateNCD_Details', N'6.0.31')
GO
SET IDENTITY_INSERT [dbo].[Allergies] ON 

INSERT [dbo].[Allergies] ([ID], [AllergyName]) VALUES (1, N'jj')
SET IDENTITY_INSERT [dbo].[Allergies] OFF
GO
SET IDENTITY_INSERT [dbo].[DiseaseInformations] ON 

INSERT [dbo].[DiseaseInformations] ([ID], [DiseaseName]) VALUES (1, N'COVID-19')
INSERT [dbo].[DiseaseInformations] ([ID], [DiseaseName]) VALUES (2, N'Influenza')
SET IDENTITY_INSERT [dbo].[DiseaseInformations] OFF
GO
SET IDENTITY_INSERT [dbo].[NCDs] ON 

INSERT [dbo].[NCDs] ([ID], [NCDName]) VALUES (1, N'll')
SET IDENTITY_INSERT [dbo].[NCDs] OFF
GO
SET IDENTITY_INSERT [dbo].[Patients] ON 

INSERT [dbo].[Patients] ([ID], [Name], [DateOfBirth], [DiseaseInformationID], [NCDID], [AllergiesID]) VALUES (7, N'Rana', CAST(N'2010-10-02T00:00:00.0000000' AS DateTime2), 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Patients] OFF
GO
ALTER TABLE [dbo].[Allergies_Detailss]  WITH CHECK ADD  CONSTRAINT [FK_Allergies_Detailss_Allergies_AllergiesID] FOREIGN KEY([AllergiesID])
REFERENCES [dbo].[Allergies] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Allergies_Detailss] CHECK CONSTRAINT [FK_Allergies_Detailss_Allergies_AllergiesID]
GO
ALTER TABLE [dbo].[Allergies_Detailss]  WITH CHECK ADD  CONSTRAINT [FK_Allergies_Detailss_Patients_PatientID] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([ID])
GO
ALTER TABLE [dbo].[Allergies_Detailss] CHECK CONSTRAINT [FK_Allergies_Detailss_Patients_PatientID]
GO
ALTER TABLE [dbo].[NCD_Details]  WITH CHECK ADD  CONSTRAINT [FK_NCD_Details_NCDs_NCDID] FOREIGN KEY([NCDID])
REFERENCES [dbo].[NCDs] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NCD_Details] CHECK CONSTRAINT [FK_NCD_Details_NCDs_NCDID]
GO
ALTER TABLE [dbo].[NCD_Details]  WITH CHECK ADD  CONSTRAINT [FK_NCD_Details_Patients_PatientID] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([ID])
GO
ALTER TABLE [dbo].[NCD_Details] CHECK CONSTRAINT [FK_NCD_Details_Patients_PatientID]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_Patients_Allergies_AllergiesID] FOREIGN KEY([AllergiesID])
REFERENCES [dbo].[Allergies] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_Patients_Allergies_AllergiesID]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_Patients_DiseaseInformations_DiseaseInformationID] FOREIGN KEY([DiseaseInformationID])
REFERENCES [dbo].[DiseaseInformations] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_Patients_DiseaseInformations_DiseaseInformationID]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_Patients_NCDs_NCDID] FOREIGN KEY([NCDID])
REFERENCES [dbo].[NCDs] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_Patients_NCDs_NCDID]
GO
