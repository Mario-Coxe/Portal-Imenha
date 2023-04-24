-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Jan-2023 às 08:20
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal-imenha`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `adddress` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'afonsosilva', '$2y$12$He.8N4.vDEWs5JQBgXKMuueJPHI50Y3d3yYTObfX4q3rLIHgftX7y', 'cox3site59@gmail.com', 1, '2022-01-20 16:51:00', '2022-12-31 04:39:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'Portal IMENHA', '<h3><p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 28.35pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">O <b>IMENHA</b> estÃ¡ localizado na ProvÃ­ncia de Luanda, MunicÃ­pio de Belas,\r\nBairro SAPÃš 2, Rua do MelÃ£o. Possui condiÃ§Ãµes para funcionar em trÃªs turnos (ManhÃ£,\r\nTarde e Noite). O turno da Noite estÃ¡ reservado aos funcionÃ¡rios pÃºblicos de\r\nEmpresas do ramo de HidrÃ¡ulica e Ambiente que pretendam adquirir uma formaÃ§Ã£o\r\ntÃ©cnica de nÃ­vel mÃ©dio e, perspectivar a sua formaÃ§Ã£o superior.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 28.35pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">O EdifÃ­cio possui o seguinte espaÃ§o\r\nfÃ­sico:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 28.35pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span lang=\"PT\" style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;mso-themeshade:128;\r\nmso-fareast-language:PT\">ESTRUTURA DE CONSTRUÃ‡ÃƒO DEFINITIVA DE 3 PISOS:<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">DOZE <b>(12) SALAS DE AULAS</b>APETRECHADAS PARA 35 ALUNOS CADA.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">UMA <b>(1) SALA DE PROFESSORES</b> APETRECHADA<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">CINCO<b> (5) GABINETES</b> PARA ORGÃƒOS DE DIRECÃ‡ÃƒO<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">UMA <b>(1) SALA DE VÃDEO- VIGILÃ‚NCIA</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">UMA <b>(1) SECRETARIA-GERAL/</b>/PEDAGÃ“GICA<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">UMA<b> (1) BIBLIOTECA </b>FÃSICA E VIRTUAL<b><o:p></o:p></b></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">UMA <b>(1) SALA DE INFORMÃTICA</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">UMA <b>(1) OFICINA</b> DE TRABALHOS PRÃTICOS<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">UM (1) GABINETE DE ELABORAÃ‡ÃƒO DE\r\nPROJECTOS<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Um (1) <b>LABORATÃ“RIO</b> DE ANÃLISES FISICO/QUÃMICA DA ÃGUA.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">UMA <b>(1) ANFITEATRO</b>PARA CERCA DE 60 PESSOAS SENTADAS<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">QUATRO <b>(4) COORDENAÃ‡Ã•ES</b> DE CURSOS<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">OITO<b>(08) WCS</b> COLECTIVOS (BALNEÃRIOS) E <b>TRÃŠS (3)</b> INDIVIDUAIS. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">UM <b>(1) REFEITÃ“RIO </b>PARA CERCA DE 40 PESSOAS.<b><o:p></o:p></b></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">DOIS <b>(2) TANQUES DE ÃGUA</b> COM CAPACIDADE PARA 15.OOO LITROS &nbsp; CADA (1 ELEVADO E 1 SUBTERRÃ‚NEO).<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span lang=\"PT\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;color:#0F243E;mso-themecolor:text2;\r\nmso-themeshade:128;mso-fareast-language:PT\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><b><span lang=\"PT\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#0F243E;mso-themecolor:text2;mso-themeshade:128;mso-fareast-language:\r\nPT\">UM (1) INTERNATO COM CAPACIDADE PARA 80 ALUNOS.</span></b></p><p class=\"MsoNormal\" style=\"margin-left: 0in; text-align: justify; text-indent: 21.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></p></h3><p><span style=\"font-family: &quot;Hind Madurai&quot;, sans-serif;\">Criado </span>por :<b>Afonso<a href=\"por:Afonso\"></a>&nbsp;Silva De Almeida<span style=\"font-family: &quot;Hind Madurai&quot;, sans-serif;\">&nbsp;</span><span style=\"font-family: &quot;Hind Madurai&quot;, sans-serif;\">&nbsp;&nbsp;</span></b></p><p><span style=\"font-family: &quot;Hind Madurai&quot;, sans-serif;\">NÃºmero de telefone</span><span style=\"font-weight: 600; font-family: &quot;Hind Madurai&quot;, sans-serif;\">:&nbsp;</span><b>+224 997268788</b></p><p><span style=\"font-family: &quot;Hind Madurai&quot;, sans-serif;\">Email</span><span style=\"font-weight: 600; font-family: &quot;Hind Madurai&quot;, sans-serif;\">: afonsosilvadealmeida17@gmail.com</span></p>', '2018-06-30 18:01:03', '2023-01-22 03:37:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD CONSTRAINT `tblcategory_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tblsubcategory` (`SubCategoryId`);

--
-- Limitadores para a tabela `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `tblsubcategory_ibfk_1` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblposts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
