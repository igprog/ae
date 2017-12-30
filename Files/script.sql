USE [DB_9B2F52_ApartmentsElvira]
GO
/****** Object:  Table [dbo].[AdministrationUsers]    Script Date: 05/25/2016 13:31:24 ******/
DROP TABLE [dbo].[AdministrationUsers]
GO
/****** Object:  Table [dbo].[Calendar]    Script Date: 05/25/2016 13:31:33 ******/
DROP TABLE [dbo].[Calendar]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 05/25/2016 13:31:43 ******/
DROP TABLE [dbo].[Gallery]
GO
/****** Object:  Table [dbo].[Guests]    Script Date: 05/25/2016 13:31:54 ******/
DROP TABLE [dbo].[Guests]
GO
/****** Object:  Table [dbo].[Links]    Script Date: 05/25/2016 13:32:03 ******/
DROP TABLE [dbo].[Links]
GO
/****** Object:  Table [dbo].[Translations]    Script Date: 05/25/2016 13:32:14 ******/
DROP TABLE [dbo].[Translations]
GO
/****** Object:  Table [dbo].[Translations]    Script Date: 05/25/2016 13:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Translations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TranslationId] [nvarchar](225) NOT NULL,
	[Croatian] [nvarchar](max) NULL,
	[English] [nvarchar](max) NULL,
	[German] [nvarchar](max) NULL,
 CONSTRAINT [PK_Translations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Translations] ON
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (3, N'SiteTitle', N'BRELA - Apartmani Elvira Gašparović', N'BRELA - Apartments Elvira Gasparovic', NULL)
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (4, N'SiteShortDescription', N'Privatni apartmani samo 30 m od plaže', N'Private apartments just 30 m from the beach', NULL)
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (5, N'SiteLongDescription', N'Provedite godišnji odmoru u Brelima, jednom od najljepših mjesta na Jadranu, biseru Hrvatskog turizma. Nudimo smještaj u privatnoj kući smještenoj u mirnom dijelu Brela, okruženu borovom šumom i mediteranskim raslinjem, udaljenu svega 30 metara od prekrasne šljunčane plaže.', N'Spend your holiday in Brela, one of the most beautiful places on the Adriatic Coast, the pearl of Croatian tourism. We offer accommodation in a private house in a quiet part of Brela, surrounded by pine trees and Mediterranean plants, located only 30 meters from the beautiful sandy beach.', NULL)
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (6, N'Address', N'Adresa', N'Address', N'Address')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (9, N'Admin', N'Administracija', N'Administration', N'Administracija')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (10, N'Gallery', N'Galerija', N'Gallery', N'Galerija')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (11, N'Price', N'Cijena', N'Price', N'Cijena')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (12, N'Booking', N'Rezervacija', N'Booking', N'Rezervacija')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (13, N'Home', N'Naslovna', N'Home', N'Naslovna')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (14, N'Accommodation', N'Smještaj', N'Accommodation', N'Smještaj')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (15, N'Calendar', N'Kalendar', N'Calendar', N'Kalendar')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (16, N'Contact', N'Kontakt', N'Contact', N'Kontakt')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (18, N'Location', N'Lokacija', N'Lokacija', N'Lokacija')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (19, N'Location', N'Lokacija', N'Location', N'Location')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (20, N'Phone', N'Telefon', N'Phone', N'Phone')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (21, N'Booking', N'Rezervacija', N'Booking', N'Booking')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (22, N'FirstName', N'Ime', N'First Name', N'FirstName')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (23, N'LastName', N'Prezime', N'Last Name', N'LastName')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (24, N'Arrival', N'Dolazak', N'Arrival', N'Arrival')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (25, N'Departure', N'Odlazak', N'Departure', N'Departure')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (26, N'Adults', N'Odrasli', N'Adults', N'Adults')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (27, N'Children', N'Djeca', N'Children', N'Children')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (28, N'Email', N'E-mail', N'E-mail', N'Email')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (29, N'Annotation', N'Napomena', N'Annotation', N'Annotation')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (30, N'Send', N'Pošalji', N'Send', N'Send')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (31, N'BookingDescription', N'Ispunite online obrazac za rezervaciju, a mi ćemo Vam odgovoriti unutar 24 sata.', N'Please, send us filled form with desired period of stay and we will respond to you within 24 hours.', N'BookingDescription')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (32, N'Apartment1', N'Apartman br. 1', N'Apartment No. 1', N'Apartment1')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (33, N'Apartment2', N'Apartman br. 2', N'Apartment No. 2', N'Apartment2')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (34, N'Apartment3', N'Apartman br. 3', N'Apartment No. 3', N'Apartment3')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (35, N'ChooseApartment', N'Odaberite apartman', N'Choose Apartment', N'ChooseApartment')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (36, N'MaxNumberOfPersons', N'Maksimalni broj osoba', N'Max. number of persons', N'MaxNumberOfPersons')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (37, N'Floor', N'Kat', N'Floor', N'Floor')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (38, N'SeaView', N'Pogled na more', N'Sea view', N'SeaView')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (39, N'NumberOfPersons', N'Broj osoba', N'Number od persons', N'NumberOfPersons')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (40, N'Calculate', N'Izračunaj', N'Calculate', N'Calculate')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (41, N'PriceShortDescription', N'Informativni izračun', N'Informativ calculation', N'PriceShortDescription')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (42, N'ShowMore', N'Prikaži više', N'Show more', N'ShowMore')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (43, N'TotalPrice', N'Cijena ukupno', N'Total price', N'TotalPrice')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (44, N'NumberOfBeds', N'Broj kreveta', N'Number of beds', N'NumberOfBeds')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (45, N'WiFi', N'WI-FI', N'WI-FI', N'WiFi')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (46, N'Ground', N'Prizemlje', N'Ground', N'Ground')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (47, N'First', N'Prvi', N'First', N'First')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (48, N'Balcony', N'Balkon', N'Balcony', N'Balcony')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (49, N'Terrace', N'Terasa', N'Terrace', N'Terrace')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (50, N'Distance', N'Udaljenost', N'Distance', N'Distance')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (51, N'Beach', N'Plaža', N'Beach', N'Beach')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (52, N'Parking', N'Parking', N'Parking', N'Parking')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (53, N'Shop', N'Trgovina', N'Shop', N'Shop')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (54, N'Restaurant', N'Restoran', N'Restaurant', N'Restaurant')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (55, N'Center', N'Centar', N'Center', N'Center')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (56, N'BookingCalendar', N'Kalendar rezervacija za 2016.', N'Booking calendar for 2016.', N'BookingCalendar')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (57, N'YourMessageWasSentSuccessfully', N'Poruka je uspješno poslana.', N'Your message was sent successfully.', N'YourMessageWasSentSuccessfully')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (58, N'TheMessageWasNotSuccessfullySent', N'GREŠKA! Poruka nije poslana!', N'ERROR! The message was not successfully sent!', N'YourMessageWasSentSuccessfully')
INSERT [dbo].[Translations] ([Id], [TranslationId], [Croatian], [English], [German]) VALUES (59, N'Airconditioning', N'A/C', N'A/C', N'A/C')
SET IDENTITY_INSERT [dbo].[Translations] OFF
/****** Object:  Table [dbo].[Links]    Script Date: 05/25/2016 13:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Links](
	[IdLink] [uniqueidentifier] NOT NULL,
	[LinkCode] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[LinkUrl] [nvarchar](50) NULL,
	[Position] [nvarchar](50) NOT NULL,
	[IdParent] [uniqueidentifier] NULL,
	[LinkOrder] [int] NULL,
	[IsVisible] [bit] NULL,
 CONSTRAINT [PK_Links] PRIMARY KEY CLUSTERED 
(
	[IdLink] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Links] ([IdLink], [LinkCode], [Title], [LinkUrl], [Position], [IdParent], [LinkOrder], [IsVisible]) VALUES (N'dcbf2b0e-6da7-4848-a983-04cdcbc9fa7e', N'Contact', N'Kontakt', N'Contact.aspx', N'top', N'dcbf2b0e-6da7-4848-a983-04cdcbc9fa7e', 8, 1)
INSERT [dbo].[Links] ([IdLink], [LinkCode], [Title], [LinkUrl], [Position], [IdParent], [LinkOrder], [IsVisible]) VALUES (N'8aafc2c8-2bd6-49be-acae-1c7ea3edfc39', N'Price', N'Cijena', N'Price.aspx', N'top', N'8aafc2c8-2bd6-49be-acae-1c7ea3edfc39', 4, 1)
INSERT [dbo].[Links] ([IdLink], [LinkCode], [Title], [LinkUrl], [Position], [IdParent], [LinkOrder], [IsVisible]) VALUES (N'960262fb-006c-46e4-a768-1cd21230ab69', N'Accommodation', N'Smještaj', N'Accommodation.aspx', N'top', N'960262fb-006c-46e4-a768-1cd21230ab69', 3, 1)
INSERT [dbo].[Links] ([IdLink], [LinkCode], [Title], [LinkUrl], [Position], [IdParent], [LinkOrder], [IsVisible]) VALUES (N'a6826999-eea2-4a0f-af71-306792dedef7', N'Location', N'Lokacija', N'Location.aspx', N'top', N'a6826999-eea2-4a0f-af71-306792dedef7', 7, 1)
INSERT [dbo].[Links] ([IdLink], [LinkCode], [Title], [LinkUrl], [Position], [IdParent], [LinkOrder], [IsVisible]) VALUES (N'270049bc-70d0-4c42-8643-3b53ae758572', N'Booking', N'Rezervacija', N'Booking.aspx', N'top', N'270049bc-70d0-4c42-8643-3b53ae758572', 6, 1)
INSERT [dbo].[Links] ([IdLink], [LinkCode], [Title], [LinkUrl], [Position], [IdParent], [LinkOrder], [IsVisible]) VALUES (N'd8ca0125-2a59-4fbb-8663-808cea40f0d7', N'Home', N'Naslovna', N'Index.aspx', N'top', N'd8ca0125-2a59-4fbb-8663-808cea40f0d7', 1, 1)
INSERT [dbo].[Links] ([IdLink], [LinkCode], [Title], [LinkUrl], [Position], [IdParent], [LinkOrder], [IsVisible]) VALUES (N'091c9bdf-73bb-43d8-9c7c-86bc61526bd0', N'Admin', N'Administracija', N'Administration', N'footer', N'091c9bdf-73bb-43d8-9c7c-86bc61526bd0', 1, 0)
INSERT [dbo].[Links] ([IdLink], [LinkCode], [Title], [LinkUrl], [Position], [IdParent], [LinkOrder], [IsVisible]) VALUES (N'2ff171b4-16bd-436a-a720-af66ff74dc01', N'Calendar', N'Kalendar', N'Calendar.aspx', N'top', N'2ff171b4-16bd-436a-a720-af66ff74dc01', 5, 1)
INSERT [dbo].[Links] ([IdLink], [LinkCode], [Title], [LinkUrl], [Position], [IdParent], [LinkOrder], [IsVisible]) VALUES (N'372efcc0-19d8-4d4c-a951-cf4b047d6773', N'Gallery', N'Galerija', N'Gallery.aspx', N'top', N'372efcc0-19d8-4d4c-a951-cf4b047d6773', 2, 0)
/****** Object:  Table [dbo].[Guests]    Script Date: 05/25/2016 13:31:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guests](
	[GuestId] [int] IDENTITY(1,1) NOT NULL,
	[InquireDate] [date] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Arrival] [date] NULL,
	[Departure] [date] NULL,
	[Days] [int] NULL,
	[Adults] [int] NULL,
	[Children] [int] NULL,
	[Message] [nvarchar](225) NULL,
	[Apartment] [nvarchar](50) NULL,
	[PricePerDay] [decimal](18, 0) NULL,
	[TotalPrice] [decimal](18, 0) NULL,
	[Deposit] [decimal](18, 0) NULL,
	[RestToPay] [decimal](18, 0) NULL,
	[Confirmation] [bit] NOT NULL,
	[ConfirmationDate] [date] NULL,
	[Annotation] [nvarchar](225) NULL,
 CONSTRAINT [PK_Guests] PRIMARY KEY CLUSTERED 
(
	[GuestId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Guests] ON
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (8, CAST(0x963A0B00 AS Date), N'Branka', N'Gamber', N'branka.gamber@infineon.com', CAST(0xB23B0B00 AS Date), CAST(0xC03B0B00 AS Date), 14, 2, 2, NULL, N'3', CAST(80 AS Decimal(18, 0)), CAST(1120 AS Decimal(18, 0)), CAST(120 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)), 1, CAST(0x5D3A0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (9, CAST(0x963A0B00 AS Date), N'Gerald Erich', N' Starandt', N'xx', CAST(0xA63B0B00 AS Date), CAST(0xB43B0B00 AS Date), 14, 2, 0, NULL, N'2', CAST(80 AS Decimal(18, 0)), CAST(1120 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), CAST(1020 AS Decimal(18, 0)), 1, CAST(0x6B3A0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (10, CAST(0xDF3A0B00 AS Date), N'Gabriela', N'Chojnacka', N'gaba_25@wp.pl', CAST(0x923B0B00 AS Date), CAST(0x993B0B00 AS Date), 7, 4, 4, N'', N'0', CAST(80 AS Decimal(18, 0)), CAST(560 AS Decimal(18, 0)), CAST(56 AS Decimal(18, 0)), CAST(504 AS Decimal(18, 0)), 0, CAST(0xDF3A0B00 AS Date), N'')
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (11, CAST(0xEC3A0B00 AS Date), N'Rene', N'Raszka', N'rene.raszka@tiscali.cz', CAST(0x9B3B0B00 AS Date), CAST(0xA83B0B00 AS Date), 11, 2, 2, NULL, N'1', CAST(90 AS Decimal(18, 0)), CAST(1170 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), CAST(1070 AS Decimal(18, 0)), 0, CAST(0xEC3A0B00 AS Date), N'njemu sam stornirao rezervaciju jer je pre kompliciran')
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (12, CAST(0xEC3A0B00 AS Date), N'Oleh', N'Stojko 1', N'oleh.stojko@gmail.com', CAST(0xC53B0B00 AS Date), CAST(0xD13B0B00 AS Date), 12, 2, 2, NULL, N'1', CAST(60 AS Decimal(18, 0)), CAST(2760 AS Decimal(18, 0)), CAST(240 AS Decimal(18, 0)), CAST(2520 AS Decimal(18, 0)), 1, CAST(0xEC3A0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (13, CAST(0xEC3A0B00 AS Date), N'Oleh', N'Stojko 2', N'oleh.stojko@gmail.com', CAST(0xC53B0B00 AS Date), CAST(0xCD3B0B00 AS Date), 8, 2, 2, NULL, N'2', CAST(90 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(0xEC3A0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (14, CAST(0xEC3A0B00 AS Date), N'Oleh', N'Stojko 3', N'oleh.stojko@gmail.com', CAST(0xC53B0B00 AS Date), CAST(0xD13B0B00 AS Date), 12, 2, 2, NULL, N'3', CAST(60 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(0xEC3A0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (15, CAST(0xEF3A0B00 AS Date), N'Monika', N'Benkova 1', N'mobenkova@gmail.com', CAST(0xA93B0B00 AS Date), CAST(0xB43B0B00 AS Date), 11, 2, 2, NULL, N'1', CAST(90 AS Decimal(18, 0)), CAST(990 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(990 AS Decimal(18, 0)), 1, CAST(0xEF3A0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (16, CAST(0xEF3A0B00 AS Date), N'Monika', N'Benkova 2', N'mobenkova@gmail.com>', CAST(0xA93B0B00 AS Date), CAST(0xB23B0B00 AS Date), 9, 2, 2, NULL, N'3', CAST(80 AS Decimal(18, 0)), CAST(720 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(990 AS Decimal(18, 0)), 1, CAST(0xEF3A0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (17, CAST(0xEF3A0B00 AS Date), N'Vaclav', N'Ridl', N'vrydl@email.cz', CAST(0xD13B0B00 AS Date), CAST(0xD83B0B00 AS Date), 7, 2, 2, NULL, N'1', CAST(60 AS Decimal(18, 0)), CAST(420 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)), CAST(380 AS Decimal(18, 0)), 1, CAST(0xEF3A0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (18, CAST(0xF33A0B00 AS Date), N'Marek', N'Ilcin 1', N'marek.ilcin@gmail.com', CAST(0x953B0B00 AS Date), CAST(0x9F3B0B00 AS Date), 10, 2, 2, NULL, N'2', CAST(90 AS Decimal(18, 0)), CAST(1540 AS Decimal(18, 0)), CAST(140 AS Decimal(18, 0)), CAST(1400 AS Decimal(18, 0)), 1, CAST(0xF33A0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (19, CAST(0xF33A0B00 AS Date), N'Marek', N'Ilcin 2', N'marek.ilcin@gmail.com', CAST(0x993B0B00 AS Date), CAST(0xA13B0B00 AS Date), 8, 2, 2, NULL, N'3', CAST(80 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(0xF33A0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (20, CAST(0xF73A0B00 AS Date), N'Dušan', N'Marin', N'duskolana@yahoo.com', CAST(0xA23B0B00 AS Date), CAST(0xA93B0B00 AS Date), 7, 2, 2, N'Pozdravljeni!Smo 4 članska družina in nas zanima, ali imate v terminu od 18.7.2016 do 25.7.2016 prost katerikoli apartma in kolika je cena na dan.Lep pozdrav.Dušan', N'3', CAST(80 AS Decimal(18, 0)), CAST(560 AS Decimal(18, 0)), CAST(60 AS Decimal(18, 0)), CAST(500 AS Decimal(18, 0)), 1, CAST(0xF73A0B00 AS Date), N'Pozdravljeni!Smo 4 članska družina in nas zanima, ali imate v terminu od 18.7.2016 do 25.7.2016 prost katerikoli apartma in kolika je cena na dan.Lep pozdrav.Dušan')
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (1020, CAST(0xFE3A0B00 AS Date), N'Sylva', N'Krcmarova', N'SylvaKrcmarova@seznam.cz', CAST(0xAA3B0B00 AS Date), CAST(0xB33B0B00 AS Date), 9, 2, 2, NULL, N'1', CAST(90 AS Decimal(18, 0)), CAST(810 AS Decimal(18, 0)), CAST(80 AS Decimal(18, 0)), CAST(730 AS Decimal(18, 0)), 0, CAST(0xFE3A0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (1021, CAST(0xFE3A0B00 AS Date), N'Ivo ', N'Grac', N'igrac@evektor.cz', CAST(0x933B0B00 AS Date), CAST(0x9C3B0B00 AS Date), 9, 2, 3, N'', N'0', CAST(80 AS Decimal(18, 0)), CAST(720 AS Decimal(18, 0)), CAST(72 AS Decimal(18, 0)), CAST(648 AS Decimal(18, 0)), 0, CAST(0xFE3A0B00 AS Date), N'')
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (1022, CAST(0x003B0B00 AS Date), N'Sylva', N'Krčmářová', N'sylvakrcmarova@seznam.cz', CAST(0xAA3B0B00 AS Date), CAST(0xB33B0B00 AS Date), 9, 4, 0, N'', N'1', CAST(80 AS Decimal(18, 0)), CAST(720 AS Decimal(18, 0)), CAST(72 AS Decimal(18, 0)), CAST(648 AS Decimal(18, 0)), 0, CAST(0x003B0B00 AS Date), N'')
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (1023, CAST(0x083B0B00 AS Date), N'Harald', N'Pracher', N'@', CAST(0xCE3B0B00 AS Date), CAST(0xD93B0B00 AS Date), 11, 2, 1, NULL, N'2', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, CAST(0x083B0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (1024, CAST(0x0B3B0B00 AS Date), N'Josef ', N'Svoboda', N'artes@centrum.cz', CAST(0x8E3B0B00 AS Date), CAST(0x973B0B00 AS Date), 9, 2, 0, NULL, N'1', CAST(60 AS Decimal(18, 0)), CAST(540 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)), CAST(500 AS Decimal(18, 0)), 1, CAST(0x0B3B0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (1025, CAST(0x0E3B0B00 AS Date), N'Renata', N'Vachouskova', N'renata.vachouskova@gmail.com', CAST(0xA23B0B00 AS Date), CAST(0xA83B0B00 AS Date), 6, 2, 3, N'', N'0', CAST(80 AS Decimal(18, 0)), CAST(480 AS Decimal(18, 0)), CAST(48 AS Decimal(18, 0)), CAST(432 AS Decimal(18, 0)), 0, CAST(0x0E3B0B00 AS Date), N'')
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (1026, CAST(0x183B0B00 AS Date), N'Radim', N'Šnirc', N'radim@snirc.cz', CAST(0x903B0B00 AS Date), CAST(0x983B0B00 AS Date), 8, 2, 2, NULL, N'3', CAST(80 AS Decimal(18, 0)), CAST(610 AS Decimal(18, 0)), CAST(60 AS Decimal(18, 0)), CAST(550 AS Decimal(18, 0)), 1, CAST(0x183B0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (1027, CAST(0x243B0B00 AS Date), N'Jan', N'Soun', N'janmottmac@gmail.com', CAST(0x843B0B00 AS Date), CAST(0x2C3B0B00 AS Date), -88, 2, 2, N'Hello, I would like to ask you if you have a free accomodation from 18.6 till 22.6. We are 2 adults and 2 children (2 and 5 years old). Please let me know the price as well. Thank you very much. Jan Šoun', N'1, 2, 3', CAST(80 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, CAST(0x243B0B00 AS Date), N'Hello, I would like to ask you if you have a free accomodation from 18.6 till 22.6. We are 2 adults and 2 children (2 and 5 years old). Please let me know the price as well. Thank you very much. Jan Šoun')
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (1028, CAST(0x4E3B0B00 AS Date), N'Tomasz', N'Piaskowski', N'piastom@wp.pl', CAST(0xC03B0B00 AS Date), CAST(0xC53B0B00 AS Date), 5, 6, 7, NULL, N'1, 2, 3', CAST(240 AS Decimal(18, 0)), CAST(1200 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)), 1, CAST(0x4E3B0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (1031, CAST(0x503B0B00 AS Date), N'Katarzyna', N'Syla', N'synalkatarzyna@gmail.com', CAST(0xB03B0B00 AS Date), CAST(0xB93B0B00 AS Date), 9, 6, 2, N'', N'0', CAST(160 AS Decimal(18, 0)), CAST(1440 AS Decimal(18, 0)), CAST(144 AS Decimal(18, 0)), CAST(1296 AS Decimal(18, 0)), 0, CAST(0x503B0B00 AS Date), N'')
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (1032, CAST(0x5B3B0B00 AS Date), N'Jarosław', N'Górka', N'jaro.gorka@gmail.com', CAST(0xB53B0B00 AS Date), CAST(0xBF3B0B00 AS Date), 10, 2, 1, NULL, N'1', CAST(90 AS Decimal(18, 0)), CAST(900 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), CAST(800 AS Decimal(18, 0)), 1, CAST(0x5B3B0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (2032, CAST(0x5C3B0B00 AS Date), N'Šárka', N'Spurná', N'spurna.sarka@gmail.com', CAST(0xB53B0B00 AS Date), CAST(0xBC3B0B00 AS Date), 7, 2, 2, NULL, N'2', CAST(90 AS Decimal(18, 0)), CAST(630 AS Decimal(18, 0)), CAST(60 AS Decimal(18, 0)), CAST(570 AS Decimal(18, 0)), 1, CAST(0x5C3B0B00 AS Date), NULL)
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (2033, CAST(0x5C3B0B00 AS Date), N'Bartek', N'Szlachta', N'b.szlachta@op.pl', CAST(0x9F3B0B00 AS Date), CAST(0xA93B0B00 AS Date), 10, 4, 2, N'', N'0', CAST(80 AS Decimal(18, 0)), CAST(800 AS Decimal(18, 0)), CAST(80 AS Decimal(18, 0)), CAST(720 AS Decimal(18, 0)), 0, CAST(0x5C3B0B00 AS Date), N'')
INSERT [dbo].[Guests] ([GuestId], [InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (2034, CAST(0x5E3B0B00 AS Date), N'Ivo ', N'Vacik', N'ivo.vacik@gmx.de', CAST(0x973B0B00 AS Date), CAST(0x9F3B0B00 AS Date), 8, 3, 1, NULL, N'1', CAST(90 AS Decimal(18, 0)), CAST(720 AS Decimal(18, 0)), CAST(70 AS Decimal(18, 0)), CAST(650 AS Decimal(18, 0)), 1, CAST(0x5E3B0B00 AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Guests] OFF
/****** Object:  Table [dbo].[Gallery]    Script Date: 05/25/2016 13:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[IdGallery] [uniqueidentifier] NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[IsVisible] [bit] NOT NULL,
	[ImageOrder] [int] NOT NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[IdGallery] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Gallery] ([IdGallery], [Image], [IsVisible], [ImageOrder]) VALUES (N'dbe830bf-193a-433e-91de-129ca49758a1', N'ElviraGasparovic1.jpg', 1, 2)
INSERT [dbo].[Gallery] ([IdGallery], [Image], [IsVisible], [ImageOrder]) VALUES (N'e0189f78-30d9-40d5-862c-27deb5bf560c', N'Jardula1.jpg', 1, 7)
INSERT [dbo].[Gallery] ([IdGallery], [Image], [IsVisible], [ImageOrder]) VALUES (N'cf49c37f-8743-4fad-9a3a-64a3dd998eb2', N'ElviraGasparovic6.jpg', 1, 1)
INSERT [dbo].[Gallery] ([IdGallery], [Image], [IsVisible], [ImageOrder]) VALUES (N'674ba0cf-b1a5-46c5-852d-76abc1b01a08', N'ElviraGasparovic3.jpg', 1, 4)
INSERT [dbo].[Gallery] ([IdGallery], [Image], [IsVisible], [ImageOrder]) VALUES (N'6d471a5e-1754-4db0-93a3-7f5cc52abcb8', N'Ap1_1.jpg', 1, 8)
INSERT [dbo].[Gallery] ([IdGallery], [Image], [IsVisible], [ImageOrder]) VALUES (N'c588ad17-efec-427e-8a8c-80cc920d8258', N'Ap3_1.jpg', 1, 5)
INSERT [dbo].[Gallery] ([IdGallery], [Image], [IsVisible], [ImageOrder]) VALUES (N'052de6ec-978b-4ed6-bf60-91d6c6da5688', N'ElviraGasparovic2.jpg', 1, 3)
INSERT [dbo].[Gallery] ([IdGallery], [Image], [IsVisible], [ImageOrder]) VALUES (N'931c66e2-c6ba-4aca-a03c-9ff6a5ee7f64', N'Ap2_1.jpg', 1, 9)
INSERT [dbo].[Gallery] ([IdGallery], [Image], [IsVisible], [ImageOrder]) VALUES (N'f8277bd5-cac9-4753-8a17-e7aa6412ce68', N'Podcrkavlje1.jpg', 1, 6)
/****** Object:  Table [dbo].[Calendar]    Script Date: 05/25/2016 13:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendar](
	[Date] [date] NULL,
	[Apartment1] [nchar](10) NULL,
	[Apartmant2] [nchar](10) NULL,
	[Apartment3] [nchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x733B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x743B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x753B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x763B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x773B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x783B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x793B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x7A3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x7B3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x7C3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x7D3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x7E3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x7F3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x803B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x813B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x823B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x833B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x843B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x853B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x863B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x873B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x883B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x893B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x8A3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x8B3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x8C3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x8D3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x8E3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x8F3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x903B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x913B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x923B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x933B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x943B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x953B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x963B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x973B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x983B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x993B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x9A3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x9B3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x9C3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x9D3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x9E3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0x9F3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xA03B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xA13B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xA23B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xA33B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xA43B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xA53B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xA63B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xA73B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xA83B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xA93B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xAA3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xAB3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xAC3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xAD3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xAE3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xAF3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xB03B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xB13B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xB23B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xB33B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xB43B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xB53B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xB63B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xB73B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xB83B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xB93B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xBA3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xBB3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xBC3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xBD3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xBE3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xBF3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xC03B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xC13B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xC23B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xC33B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xC43B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xC53B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xC63B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xC73B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xC83B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xC93B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xCA3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xCB3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xCC3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xCD3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xCE3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xCF3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xD03B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xD13B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xD23B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xD33B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xD43B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xD53B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xD63B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xD73B0B00 AS Date), N'          ', N'          ', N'          ')
GO
print 'Processed 100 total records'
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xD83B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xD93B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xDA3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xDB3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xDC3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xDD3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xDE3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xDF3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xE03B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xE13B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xE23B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xE33B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xE43B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xE53B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xE63B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xE73B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xE83B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xE93B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xEA3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xEB3B0B00 AS Date), N'          ', N'          ', N'          ')
INSERT [dbo].[Calendar] ([Date], [Apartment1], [Apartmant2], [Apartment3]) VALUES (CAST(0xEC3B0B00 AS Date), N'          ', N'          ', N'          ')
/****** Object:  Table [dbo].[AdministrationUsers]    Script Date: 05/25/2016 13:31:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdministrationUsers](
	[AdministrationId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AdministrationUsers] PRIMARY KEY CLUSTERED 
(
	[AdministrationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
