USE [master]
GO
/****** Object:  Database [NMovie]    Script Date: 5/25/2024 9:30:57 PM ******/
CREATE DATABASE [NMovie]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NMovie', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\NMovie.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NMovie_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\NMovie_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [NMovie] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NMovie].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NMovie] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NMovie] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NMovie] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NMovie] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NMovie] SET ARITHABORT OFF 
GO
ALTER DATABASE [NMovie] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NMovie] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NMovie] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NMovie] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NMovie] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NMovie] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NMovie] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NMovie] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NMovie] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NMovie] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NMovie] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NMovie] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NMovie] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NMovie] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NMovie] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NMovie] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NMovie] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NMovie] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NMovie] SET  MULTI_USER 
GO
ALTER DATABASE [NMovie] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NMovie] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NMovie] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NMovie] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NMovie] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NMovie] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [NMovie] SET QUERY_STORE = ON
GO
ALTER DATABASE [NMovie] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [NMovie]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 5/25/2024 9:30:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](255) NULL,
	[OriginalTitle] [nvarchar](255) NULL,
	[Overview] [text] NULL,
	[ReleaseDate] [date] NULL,
	[OriginalLanguage] [varchar](10) NULL,
	[Popularity] [float] NULL,
	[VoteAverage] [float] NULL,
	[VoteCount] [int] NULL,
	[BackdropPath] [varchar](255) NULL,
	[PosterPath] [varchar](max) NULL,
 CONSTRAINT [PK__Movies__4BD2943AC4956390] PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (1, N'The Shawshank Redemption', N'The Shawshank Redemption', N'Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.', CAST(N'1994-09-23' AS Date), N'en', 125.587, 8.7, 26197, N'/kXfqcdQKsToO0OUXHcrrNCHDBzO.jpg', N'/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (2, N'The Godfather', N'The Godfather', N'Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.', CAST(N'1972-03-14' AS Date), N'en', 128.835, 8.694, 19867, N'/tmU7GeKVybMWFButWEGl2M4GeiP.jpg', N'/3bhkrj58Vtu7enYsRolD1fZdja1.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (3, N'The Godfather Part II', N'The Godfather Part II', N'In the continuing saga of the Corleone crime family, a young Vito Corleone grows up in Sicily and in 1910s New York. In the 1950s, Michael Corleone attempts to expand the family business into Las Vegas, Hollywood and Cuba.', CAST(N'1974-12-20' AS Date), N'en', 147.667, 8.576, 11990, N'/kGzFbGhp99zva6oZODW5atUtnqi.jpg', N'/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (4, N'Schindler''s List', N'Schindler''s List', N'The true story of how businessman Oskar Schindler saved over a thousand Jewish lives from the Nazis while they worked as slaves in his factory during World War II.', CAST(N'1993-12-15' AS Date), N'en', 76.979, 8.568, 15400, N'/zb6fM1CX41D9rF9hdgclu0peUmy.jpg', N'/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (5, N'12 Angry Men', N'12 Angry Men', N'The defense and the prosecution have rested and the jury is filing into the jury room to decide if a young Spanish-American is guilty or innocent of murdering his father. What begins as an open and shut case soon becomes a mini-drama of each of the jurors'' prejudices and preconceptions about the trial, the accused, and each other.', CAST(N'1957-04-10' AS Date), N'en', 72.251, 8.542, 8268, N'/qqHQsStV6exghCM7zbObuYBiYxw.jpg', N'/ow3wq89wM8qd5X7hWKxiRfsFf9C.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (6, N'Dilwale Dulhania Le Jayenge', N'??????? ????????? ?? ???????', N'Raj is a rich, carefree, happy-go-lucky second generation NRI. Simran is the daughter of Chaudhary Baldev Singh, who in spite of being an NRI is very strict about adherence to Indian values. Simran has left for India to be married to her childhood fiancé. Raj leaves for India with a mission at his hands, to claim his lady love under the noses of her whole family. Thus begins a saga.', CAST(N'1995-10-20' AS Date), N'hi', 40.451, 8.538, 4387, N'/90ez6ArvpO8bvpyIngBuwXOqJm5.jpg', N'/lfRkUr7DYdHldAqi3PwdQGBRBPM.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (7, N'Spirited Away', N'????????', N'A young girl, Chihiro, becomes trapped in a strange new world of spirits. When her parents undergo a mysterious transformation, she must call upon the courage she never knew she had to free her family.', CAST(N'2001-07-20' AS Date), N'ja', 105.542, 8.536, 15938, N'/mSDsSDwaP3E7dEfUPWy4J0djt4O.jpg', N'/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (8, N'The Dark Knight', N'The Dark Knight', N'Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.', CAST(N'2008-07-16' AS Date), N'en', 97.8, 8.515, 31963, N'/dqK9Hag1054tghRQSqLSfrkvQnA.jpg', N'/qJ2tW6WMUDux911r6m7haRef0WH.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (9, N'Parasite', N'???', N'All unemployed, Ki-taek''s family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.', CAST(N'2019-05-30' AS Date), N'ko', 88.745, 8.509, 17558, N'/TU9NIjwzjoKPwQHoHshkFcQUCG.jpg', N'/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (10, N'The Green Mile', N'The Green Mile', N'A supernatural tale set on death row in a Southern prison, where gentle giant John Coffey possesses the mysterious power to heal people''s ailments. When the cell block''s head guard, Paul Edgecomb, recognizes Coffey''s miraculous gift, he tries desperately to help stave off the condemned man''s execution.', CAST(N'1999-12-10' AS Date), N'en', 101.849, 8.505, 16839, N'/vxJ08SvwomfKbpboCWynC3uqUg4.jpg', N'/8VG8fDNiy50H4FedGwdSVUPoaJe.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (11, N'Your Name.', N'?????', N'High schoolers Mitsuha and Taki are complete strangers living separate lives. But one night, they suddenly switch places. Mitsuha wakes up in Taki’s body, and he in hers. This bizarre occurrence continues to happen randomly, and the two must adjust their lives around each other.', CAST(N'2016-08-26' AS Date), N'ja', 78.335, 8.496, 10976, N'/dIWwZW7dJJtqC6CgWzYkNVKIUm8.jpg', N'/q719jXXEzOoYaps6babgKnONONX.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (12, N'Pulp Fiction', N'Pulp Fiction', N'A burger-loving hit man, his philosophical partner, a drug-addled gangster''s moll and a washed-up boxer converge in this sprawling, comedic crime caper. Their adventures unfurl in three stories that ingeniously trip back and forth in time.', CAST(N'1994-09-10' AS Date), N'en', 369.887, 8.489, 27113, N'/suaEOtk1N1sgg2MTM7oZd2cfVp3.jpg', N'/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (13, N'The Lord of the Rings: The Return of the King', N'The Lord of the Rings: The Return of the King', N'As armies mass for a final battle that will decide the fate of the world--and powerful, ancient forces of Light and Dark compete to determine the outcome--one member of the Fellowship of the Ring is revealed as the noble heir to the throne of the Kings of Men. Yet, the sole hope for triumph over evil lies with a brave hobbit, Frodo, who, accompanied by his loyal friend Sam and the hideous, wretched Gollum, ventures deep into the very dark heart of Mordor on his seemingly impossible quest to destroy the Ring of Power.?', CAST(N'2003-12-01' AS Date), N'en', 108.322, 8.48, 23425, N'/2u7zbn8EudG6kLlBzUYqP8RyFU4.jpg', N'/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (14, N'Forrest Gump', N'Forrest Gump', N'A man with a low IQ has accomplished great things in his life and been present during significant historic events—in each case, far exceeding what anyone imagined he could do. But despite all he has achieved, his one true love eludes him.', CAST(N'1994-06-23' AS Date), N'en', 169.138, 8.475, 26636, N'/qdIMHd4sEfJSckfVJfKQvisL02a.jpg', N'/arw2vcBveWOVZr6pxd9XTd1TdQa.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (15, N'The Good, the Bad and the Ugly', N'Il buono, il brutto, il cattivo', N'While the Civil War rages on between the Union and the Confederacy, three men – a quiet loner, a ruthless hitman, and a Mexican bandit – comb the American Southwest in search of a strongbox containing $200,000 in stolen gold.', CAST(N'1966-12-22' AS Date), N'it', 77.724, 8.467, 8278, N'/Adrip2Jqzw56KeuV2nAxucKMNXA.jpg', N'/bX2xnavhMYjWDoZp1VM6VnU1xwe.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (16, N'GoodFellas', N'GoodFellas', N'The true story of Henry Hill, a half-Irish, half-Sicilian Brooklyn kid who is adopted by neighbourhood gangsters at an early age and climbs the ranks of a Mafia family under the guidance of Jimmy Conway.', CAST(N'1990-09-12' AS Date), N'en', 239.274, 8.465, 12405, N'/sw7mordbZxgITU877yTpZCud90M.jpg', N'/aKuFiU82s5ISJpGZp7YkIr3kCUd.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (17, N'Grave of the Fireflies', N'?????', N'In the final months of World War II, 14-year-old Seita and his sister Setsuko are orphaned when their mother is killed during an air raid in Kobe, Japan. After a falling out with their aunt, they move into an abandoned bomb shelter. With no surviving relatives and their emergency rations depleted, Seita and Setsuko struggle to survive.', CAST(N'1988-04-16' AS Date), N'ja', 0.053, 8.463, 5253, N'/dlC0ed9Ugh3FzydnkBtV5lRXUu4.jpg', N'/k9tv1rXZbOhH7eiCk378x61kNQ1.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (18, N'Radical', N'Radical', N'In a Mexican border town plagued by neglect, corruption, and violence, a frustrated teacher tries a radical new method to break through his students’ apathy and unlock their curiosity, their potential… and maybe even their genius.', CAST(N'2023-10-19' AS Date), N'en', 61.478, 8.451, 364, N'/gutU32BiBxJvJdzLv5RWC9hQhNh.jpg', N'/eSatbygYZp8ooprBHZdb6GFZxGB.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (19, N'Seven Samurai', N'????', N'A samurai answers a village''s request for protection after he falls on hard times. The town needs protection from bandits, so the samurai gathers six others to help him teach the people how to defend themselves, and the villagers provide the soldiers with food.', CAST(N'1954-04-26' AS Date), N'ja', 41.152, 8.456, 3499, N'/qvZ91FwMq6O47VViAr8vZNQz3WI.jpg', N'/8OKmBV5BUFzmozIC3pPWKHy17kx.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (20, N'Cinema Paradiso', N'Nuovo Cinema Paradiso', N'A filmmaker recalls his childhood, when he fell in love with the movies at his village''s theater and formed a deep friendship with the theater''s projectionist.', CAST(N'1988-11-17' AS Date), N'it', 37.633, 8.453, 4202, N'/k3SBILYxHRgjORb5tbvA5dm2N4h.jpg', N'/8SRUfRUi6x4O68n0VCbDNRa6iGL.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (21, N'The Shawshank Redemption', N'The Shawshank Redemption', N'Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.', CAST(N'1994-09-23' AS Date), N'en', 125.587, 8.7, 26197, N'/kXfqcdQKsToO0OUXHcrrNCHDBzO.jpg', N'/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (22, N'The Godfather', N'The Godfather', N'Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.', CAST(N'1972-03-14' AS Date), N'en', 128.835, 8.694, 19867, N'/tmU7GeKVybMWFButWEGl2M4GeiP.jpg', N'/3bhkrj58Vtu7enYsRolD1fZdja1.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (23, N'The Godfather Part II', N'The Godfather Part II', N'In the continuing saga of the Corleone crime family, a young Vito Corleone grows up in Sicily and in 1910s New York. In the 1950s, Michael Corleone attempts to expand the family business into Las Vegas, Hollywood and Cuba.', CAST(N'1974-12-20' AS Date), N'en', 147.667, 8.576, 11990, N'/kGzFbGhp99zva6oZODW5atUtnqi.jpg', N'/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (24, N'Schindler''s List', N'Schindler''s List', N'The true story of how businessman Oskar Schindler saved over a thousand Jewish lives from the Nazis while they worked as slaves in his factory during World War II.', CAST(N'1993-12-15' AS Date), N'en', 76.979, 8.568, 15400, N'/zb6fM1CX41D9rF9hdgclu0peUmy.jpg', N'/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (25, N'12 Angry Men', N'12 Angry Men', N'The defense and the prosecution have rested and the jury is filing into the jury room to decide if a young Spanish-American is guilty or innocent of murdering his father. What begins as an open and shut case soon becomes a mini-drama of each of the jurors'' prejudices and preconceptions about the trial, the accused, and each other.', CAST(N'1957-04-10' AS Date), N'en', 72.251, 8.542, 8268, N'/qqHQsStV6exghCM7zbObuYBiYxw.jpg', N'/ow3wq89wM8qd5X7hWKxiRfsFf9C.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (26, N'Dilwale Dulhania Le Jayenge', N'??????? ????????? ?? ???????', N'Raj is a rich, carefree, happy-go-lucky second generation NRI. Simran is the daughter of Chaudhary Baldev Singh, who in spite of being an NRI is very strict about adherence to Indian values. Simran has left for India to be married to her childhood fiancé. Raj leaves for India with a mission at his hands, to claim his lady love under the noses of her whole family. Thus begins a saga.', CAST(N'1995-10-20' AS Date), N'hi', 40.451, 8.538, 4387, N'/90ez6ArvpO8bvpyIngBuwXOqJm5.jpg', N'/lfRkUr7DYdHldAqi3PwdQGBRBPM.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (27, N'Spirited Away', N'????????', N'A young girl, Chihiro, becomes trapped in a strange new world of spirits. When her parents undergo a mysterious transformation, she must call upon the courage she never knew she had to free her family.', CAST(N'2001-07-20' AS Date), N'ja', 105.542, 8.536, 15938, N'/mSDsSDwaP3E7dEfUPWy4J0djt4O.jpg', N'/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (28, N'The Dark Knight', N'The Dark Knight', N'Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.', CAST(N'2008-07-16' AS Date), N'en', 97.8, 8.515, 31963, N'/dqK9Hag1054tghRQSqLSfrkvQnA.jpg', N'/qJ2tW6WMUDux911r6m7haRef0WH.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (29, N'Parasite', N'???', N'All unemployed, Ki-taek''s family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.', CAST(N'2019-05-30' AS Date), N'ko', 88.745, 8.509, 17558, N'/TU9NIjwzjoKPwQHoHshkFcQUCG.jpg', N'/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (30, N'The Green Mile', N'The Green Mile', N'A supernatural tale set on death row in a Southern prison, where gentle giant John Coffey possesses the mysterious power to heal people''s ailments. When the cell block''s head guard, Paul Edgecomb, recognizes Coffey''s miraculous gift, he tries desperately to help stave off the condemned man''s execution.', CAST(N'1999-12-10' AS Date), N'en', 101.849, 8.505, 16839, N'/vxJ08SvwomfKbpboCWynC3uqUg4.jpg', N'/8VG8fDNiy50H4FedGwdSVUPoaJe.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (31, N'Your Name.', N'?????', N'High schoolers Mitsuha and Taki are complete strangers living separate lives. But one night, they suddenly switch places. Mitsuha wakes up in Taki’s body, and he in hers. This bizarre occurrence continues to happen randomly, and the two must adjust their lives around each other.', CAST(N'2016-08-26' AS Date), N'ja', 78.335, 8.496, 10976, N'/dIWwZW7dJJtqC6CgWzYkNVKIUm8.jpg', N'/q719jXXEzOoYaps6babgKnONONX.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (32, N'Pulp Fiction', N'Pulp Fiction', N'A burger-loving hit man, his philosophical partner, a drug-addled gangster''s moll and a washed-up boxer converge in this sprawling, comedic crime caper. Their adventures unfurl in three stories that ingeniously trip back and forth in time.', CAST(N'1994-09-10' AS Date), N'en', 369.887, 8.489, 27113, N'/suaEOtk1N1sgg2MTM7oZd2cfVp3.jpg', N'/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (33, N'The Lord of the Rings: The Return of the King', N'The Lord of the Rings: The Return of the King', N'As armies mass for a final battle that will decide the fate of the world--and powerful, ancient forces of Light and Dark compete to determine the outcome--one member of the Fellowship of the Ring is revealed as the noble heir to the throne of the Kings of Men. Yet, the sole hope for triumph over evil lies with a brave hobbit, Frodo, who, accompanied by his loyal friend Sam and the hideous, wretched Gollum, ventures deep into the very dark heart of Mordor on his seemingly impossible quest to destroy the Ring of Power.?', CAST(N'2003-12-01' AS Date), N'en', 108.322, 8.48, 23425, N'/2u7zbn8EudG6kLlBzUYqP8RyFU4.jpg', N'/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (34, N'Forrest Gump', N'Forrest Gump', N'A man with a low IQ has accomplished great things in his life and been present during significant historic events—in each case, far exceeding what anyone imagined he could do. But despite all he has achieved, his one true love eludes him.', CAST(N'1994-06-23' AS Date), N'en', 169.138, 8.475, 26636, N'/qdIMHd4sEfJSckfVJfKQvisL02a.jpg', N'/arw2vcBveWOVZr6pxd9XTd1TdQa.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (35, N'The Good, the Bad and the Ugly', N'Il buono, il brutto, il cattivo', N'While the Civil War rages on between the Union and the Confederacy, three men – a quiet loner, a ruthless hitman, and a Mexican bandit – comb the American Southwest in search of a strongbox containing $200,000 in stolen gold.', CAST(N'1966-12-22' AS Date), N'it', 77.724, 8.467, 8278, N'/Adrip2Jqzw56KeuV2nAxucKMNXA.jpg', N'/bX2xnavhMYjWDoZp1VM6VnU1xwe.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (36, N'GoodFellas', N'GoodFellas', N'The true story of Henry Hill, a half-Irish, half-Sicilian Brooklyn kid who is adopted by neighbourhood gangsters at an early age and climbs the ranks of a Mafia family under the guidance of Jimmy Conway.', CAST(N'1990-09-12' AS Date), N'en', 239.274, 8.465, 12405, N'/sw7mordbZxgITU877yTpZCud90M.jpg', N'/aKuFiU82s5ISJpGZp7YkIr3kCUd.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (37, N'Grave of the Fireflies', N'?????', N'In the final months of World War II, 14-year-old Seita and his sister Setsuko are orphaned when their mother is killed during an air raid in Kobe, Japan. After a falling out with their aunt, they move into an abandoned bomb shelter. With no surviving relatives and their emergency rations depleted, Seita and Setsuko struggle to survive.', CAST(N'1988-04-16' AS Date), N'ja', 0.053, 8.463, 5253, N'/dlC0ed9Ugh3FzydnkBtV5lRXUu4.jpg', N'/k9tv1rXZbOhH7eiCk378x61kNQ1.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (38, N'Radical', N'Radical', N'In a Mexican border town plagued by neglect, corruption, and violence, a frustrated teacher tries a radical new method to break through his students’ apathy and unlock their curiosity, their potential… and maybe even their genius.', CAST(N'2023-10-19' AS Date), N'en', 61.478, 8.451, 364, N'/gutU32BiBxJvJdzLv5RWC9hQhNh.jpg', N'/eSatbygYZp8ooprBHZdb6GFZxGB.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (39, N'Seven Samurai', N'????', N'A samurai answers a village''s request for protection after he falls on hard times. The town needs protection from bandits, so the samurai gathers six others to help him teach the people how to defend themselves, and the villagers provide the soldiers with food.', CAST(N'1954-04-26' AS Date), N'ja', 41.152, 8.456, 3499, N'/qvZ91FwMq6O47VViAr8vZNQz3WI.jpg', N'/8OKmBV5BUFzmozIC3pPWKHy17kx.jpg')
INSERT [dbo].[Movies] ([MovieID], [Title], [OriginalTitle], [Overview], [ReleaseDate], [OriginalLanguage], [Popularity], [VoteAverage], [VoteCount], [BackdropPath], [PosterPath]) VALUES (40, N'Cinema Paradiso', N'Nuovo Cinema Paradiso', N'A filmmaker recalls his childhood, when he fell in love with the movies at his village''s theater and formed a deep friendship with the theater''s projectionist.', CAST(N'1988-11-17' AS Date), N'it', 37.633, 8.453, 4202, N'/k3SBILYxHRgjORb5tbvA5dm2N4h.jpg', N'/8SRUfRUi6x4O68n0VCbDNRa6iGL.jpg')
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
/****** Object:  StoredProcedure [dbo].[GetMovies]    Script Date: 5/25/2024 9:30:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetMovies]
AS
BEGIN
    SELECT 
        MovieID,
        Title,
        ReleaseDate,
        Overview,
        OriginalLanguage,
        Popularity,
        VoteAverage,
        VoteCount,
        BackdropPath,
        PosterPath
    FROM 
        Movies 
END
GO
USE [master]
GO
ALTER DATABASE [NMovie] SET  READ_WRITE 
GO
