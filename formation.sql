
--
-- Base de données : `formation`
--

-- --------------------------------------------------------

--
-- Structure de la table `combinaison`
--

DROP TABLE IF EXISTS `combinaison`;
CREATE TABLE IF NOT EXISTS `combinaison` (
  `codeForm` varchar(20) DEFAULT NULL,
  `codeSpec` varchar(20) DEFAULT NULL,
  KEY `codeForm` (`codeForm`),
  KEY `codeSpec` (`codeSpec`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `NumCINEtu` int NOT NULL,
  `NomEtu` varchar(50) DEFAULT NULL,
  `prenomEtu` varchar(50) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `adresseEtu` varchar(100) DEFAULT NULL,
  `VilleEtu` varchar(50) DEFAULT NULL,
  `niveauEtu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NumCINEtu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `codeForm` varchar(20) NOT NULL,
  `titreForm` varchar(50) DEFAULT NULL,
  `dureeForm` date DEFAULT NULL,
  `prixForm` float DEFAULT NULL,
  PRIMARY KEY (`codeForm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `NumCINEtu` int DEFAULT NULL,
  `codeSess` varchar(20) DEFAULT NULL,
  `TypeCours` varchar(50) NOT NULL,
  KEY `NumCINEtu` (`NumCINEtu`),
  KEY `codeSess` (`codeSess`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `codeSess` varchar(20) NOT NULL,
  `nomSess` varchar(50) DEFAULT NULL,
  `dateDebut` date DEFAULT NULL,
  `dateFin` date DEFAULT NULL,
  PRIMARY KEY (`codeSess`)
) ;

-- --------------------------------------------------------

--
-- Structure de la table `spécialité`
--

DROP TABLE IF EXISTS `spécialité`;
CREATE TABLE IF NOT EXISTS `spécialité` (
  `codeSpec` varchar(20) NOT NULL,
  `nomSpec` varchar(50) DEFAULT NULL,
  `descSpec` varchar(100) DEFAULT NULL,
  `Active` int DEFAULT '0',
  PRIMARY KEY (`codeSpec`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

