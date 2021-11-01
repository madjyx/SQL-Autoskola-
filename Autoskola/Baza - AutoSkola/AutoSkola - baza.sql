
-- --------------------------------------------------------
-- Host:                         .\SQLEXPRESS
-- Server version:               Microsoft SQL Server 2014 - 12.0.2269.0
-- Server OS:                    Windows NT 6.3 <X64> (Build 19042: )
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for procedure AutoSkola.br_instr_proc
DELIMITER //
CREATE PROCEDURE br_instr_proc
	@vozilo VARCHAR(20)
AS
BEGIN
	SELECT COUNT(*)
	FROM instruktor
	WHERE instruktor.id_vozilo = @vozilo
END
//
DELIMITER ;

-- Dumping structure for table AutoSkola.cas
CREATE TABLE IF NOT EXISTS "cas" (
	"id_cas" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_polaznik" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_prva_pomoc_cas" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_testovi_cas" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_voznja_cas" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	FOREIGN KEY INDEX "FK__cas__id_polaznik__76969D2E" ("id_polaznik"),
	FOREIGN KEY INDEX "FK__cas__id_prva_pom__778AC167" ("id_prva_pomoc_cas"),
	FOREIGN KEY INDEX "FK__cas__id_testovi___787EE5A0" ("id_testovi_cas"),
	FOREIGN KEY INDEX "FK__cas__id_voznja_c__797309D9" ("id_voznja_cas"),
	PRIMARY KEY ("id_cas"),
	CONSTRAINT "FK__cas__id_polaznik__76969D2E" FOREIGN KEY ("id_polaznik") REFERENCES "polaznik" ("id_polaznik") ON UPDATE NO_ACTION ON DELETE NO_ACTION,
	CONSTRAINT "FK__cas__id_prva_pom__778AC167" FOREIGN KEY ("id_prva_pomoc_cas") REFERENCES "prva_pomoc_cas" ("id_prva_pomoc_cas") ON UPDATE NO_ACTION ON DELETE NO_ACTION,
	CONSTRAINT "FK__cas__id_testovi___787EE5A0" FOREIGN KEY ("id_testovi_cas") REFERENCES "testovi_cas" ("id_testovi_cas") ON UPDATE NO_ACTION ON DELETE NO_ACTION,
	CONSTRAINT "FK__cas__id_voznja_c__797309D9" FOREIGN KEY ("id_voznja_cas") REFERENCES "voznja_cas" ("id_voznja_cas") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

-- Dumping data for table AutoSkola.cas: -1 rows
/*!40000 ALTER TABLE "cas" DISABLE KEYS */;
INSERT INTO "cas" ("id_cas", "id_polaznik", "id_prva_pomoc_cas", "id_testovi_cas", "id_voznja_cas") VALUES
	('C-1', 'P-1', 'PPC-1', 'TC-1', 'VC-1'),
	('C-10', 'P-10', 'PPC-10', 'TC-10', 'VC-10'),
	('C-11', 'P-11', 'PPC-11', 'TC-11', 'VC-11'),
	('C-12', 'P-12', 'PPC-12', 'TC-12', 'VC-12'),
	('C-13', 'P-13', 'PPC-13', 'TC-13', 'VC-13'),
	('C-14', 'P-14', 'PPC-14', 'TC-14', 'VC-14'),
	('C-15', 'P-15', 'PPC-15', 'TC-15', 'VC-15'),
	('C-16', 'P-16', 'PPC-16', 'TC-16', 'VC-16'),
	('C-17', 'P-17', 'PPC-17', 'TC-17', 'VC-17'),
	('C-18', 'P-18', 'PPC-18', 'TC-18', 'VC-18'),
	('C-19', 'P-19', 'PPC-19', 'TC-19', 'VC-19'),
	('C-2', 'P-2', 'PPC-2', 'TC-2', 'VC-2'),
	('C-20', 'P-20', 'PPC-20', 'TC-20', 'VC-20'),
	('C-21', 'P-21', 'PPC-21', 'TC-21', 'VC-21'),
	('C-22', 'P-22', 'PPC-22', 'TC-22', 'VC-22'),
	('C-23', 'P-23', 'PPC-23', 'TC-23', 'VC-23'),
	('C-24', 'P-24', 'PPC-24', 'TC-24', 'VC-24'),
	('C-25', 'P-25', 'PPC-25', 'TC-25', 'VC-25'),
	('C-26', 'P-26', 'PPC-26', 'TC-26', 'VC-26'),
	('C-27', 'P-27', 'PPC-27', 'TC-27', 'VC-27'),
	('C-28', 'P-28', 'PPC-28', 'TC-28', 'VC-28'),
	('C-29', 'P-29', 'PPC-29', 'TC-29', 'VC-29'),
	('C-3', 'P-3', 'PPC-3', 'TC-3', 'VC-3'),
	('C-30', 'P-30', 'PPC-30', 'TC-30', 'VC-30'),
	('C-4', 'P-4', 'PPC-4', 'TC-4', 'VC-4'),
	('C-5', 'P-5', 'PPC-5', 'TC-5', 'VC-5'),
	('C-6', 'P-6', 'PPC-6', 'TC-6', 'VC-6'),
	('C-7', 'P-7', 'PPC-7', 'TC-7', 'VC-7'),
	('C-8', 'P-8', 'PPC-8', 'TC-8', 'VC-8'),
	('C-9', 'P-9', 'PPC-9', 'TC-9', 'VC-9');
/*!40000 ALTER TABLE "cas" ENABLE KEYS */;

-- Dumping structure for table AutoSkola.instruktor
CREATE TABLE IF NOT EXISTS "instruktor" (
	"id_instruktor" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ime" VARCHAR(20) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"prezime" VARCHAR(20) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"godiste" NUMERIC(5,0) NULL DEFAULT NULL,
	"broj_telefona" VARCHAR(15) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_vozilo" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	FOREIGN KEY INDEX "FK__instrukto__id_vo__164452B1" ("id_vozilo"),
	PRIMARY KEY ("id_instruktor"),
	CONSTRAINT "FK__instrukto__id_vo__164452B1" FOREIGN KEY ("id_vozilo") REFERENCES "vozilo" ("id_vozilo") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

-- Dumping data for table AutoSkola.instruktor: -1 rows
/*!40000 ALTER TABLE "instruktor" DISABLE KEYS */;
INSERT INTO "instruktor" ("id_instruktor", "ime", "prezime", "godiste", "broj_telefona", "id_vozilo") VALUES
	('I-1', 'Merisa', 'Kukurozovic', 1970, '063357753', 'V-1'),
	('I-2', 'Ajda', 'Zukic', 1979, '061157751', 'V-2'),
	('I-3', 'Ada', 'Adilovic', 1974, '062557747', 'V-3'),
	('I-4', 'Sedef', 'Jahovic', 1992, '061365692', 'V-4'),
	('I-5', 'Edisa', 'Džombic', 1993, '062205205', 'V-5'),
	('I-6', 'Belma', 'Hadžihasanovic', 1984, '063500600', 'V-6'),
	('I-7', 'Amina', 'Zahirovic', 1971, '061412413', 'V-7'),
	('I-8', 'Amir', 'Tosunbegovic', 1966, '062141147', 'V-8'),
	('I-9', 'Hana', 'Kulenovic', 1967, '061888778', 'V-9');
/*!40000 ALTER TABLE "instruktor" ENABLE KEYS */;

-- Dumping structure for table AutoSkola.kurs
CREATE TABLE IF NOT EXISTS "kurs" (
	"id_kurs" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_polaznik" VARCHAR(20) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"kategorija" VARCHAR(10) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_cas" VARCHAR(20) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_testiranje" VARCHAR(20) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	FOREIGN KEY INDEX "FK__kurs__id_cas__02FC7413" ("id_cas"),
	FOREIGN KEY INDEX "FK__kurs__id_polazni__02084FDA" ("id_polaznik"),
	FOREIGN KEY INDEX "FK__kurs__id_testira__03F0984C" ("id_testiranje"),
	PRIMARY KEY ("id_kurs"),
	CONSTRAINT "FK__kurs__id_polazni__02084FDA" FOREIGN KEY ("id_polaznik") REFERENCES "polaznik" ("id_polaznik") ON UPDATE NO_ACTION ON DELETE NO_ACTION,
	CONSTRAINT "FK__kurs__id_cas__02FC7413" FOREIGN KEY ("id_cas") REFERENCES "cas" ("id_cas") ON UPDATE NO_ACTION ON DELETE NO_ACTION,
	CONSTRAINT "FK__kurs__id_testira__03F0984C" FOREIGN KEY ("id_testiranje") REFERENCES "testiranje" ("id_testiranje") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

-- Dumping data for table AutoSkola.kurs: -1 rows
/*!40000 ALTER TABLE "kurs" DISABLE KEYS */;
INSERT INTO "kurs" ("id_kurs", "id_polaznik", "kategorija", "id_cas", "id_testiranje") VALUES
	('K-1', 'P-1', 'B', 'C-1', 'T-1'),
	('K-10', 'P-10', 'B', 'C-10', 'T-10'),
	('K-11', 'P-11', 'B', 'C-11', 'T-11'),
	('K-12', 'P-12', 'B', 'C-12', 'T-12'),
	('K-13', 'P-13', 'C', 'C-13', 'T-13'),
	('K-14', 'P-14', 'B', 'C-14', 'T-14'),
	('K-15', 'P-15', 'A', 'C-15', 'T-15'),
	('K-16', 'P-16', 'A', 'C-16', 'T-16'),
	('K-17', 'P-17', 'B', 'C-17', 'T-17'),
	('K-18', 'P-18', 'B', 'C-18', 'T-18'),
	('K-19', 'P-19', 'C', 'C-19', 'T-19'),
	('K-2', 'P-2', 'B', 'C-2', 'T-2'),
	('K-20', 'P-20', 'B', 'C-20', 'T-20'),
	('K-21', 'P-21', 'B', 'C-21', 'T-21'),
	('K-22', 'P-22', 'B', 'C-22', 'T-22'),
	('K-23', 'P-23', 'C', 'C-23', 'T-23'),
	('K-24', 'P-24', 'B', 'C-24', 'T-24'),
	('K-25', 'P-25', 'A', 'C-25', 'T-25'),
	('K-26', 'P-26', 'A', 'C-26', 'T-26'),
	('K-27', 'P-27', 'B', 'C-27', 'T-27'),
	('K-28', 'P-28', 'B', 'C-28', 'T-28'),
	('K-29', 'P-29', 'C', 'C-29', 'T-29'),
	('K-3', 'P-3', 'C', 'C-3', 'T-3'),
	('K-30', 'P-30', 'B', 'C-30', 'T-30'),
	('K-4', 'P-4', 'B', 'C-4', 'T-4'),
	('K-5', 'P-5', 'A', 'C-5', 'T-5'),
	('K-6', 'P-6', 'A', 'C-6', 'T-6'),
	('K-7', 'P-7', 'B', 'C-7', 'T-7'),
	('K-8', 'P-8', 'B', 'C-8', 'T-8'),
	('K-9', 'P-9', 'C', 'C-9', 'T-9');
/*!40000 ALTER TABLE "kurs" ENABLE KEYS */;

-- Dumping structure for table AutoSkola.polaznik
CREATE TABLE IF NOT EXISTS "polaznik" (
	"id_polaznik" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ime" VARCHAR(20) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"prezime" VARCHAR(20) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"godiste" NUMERIC(5,0) NULL DEFAULT NULL,
	"broj_telefona" VARCHAR(15) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	PRIMARY KEY ("id_polaznik")
);

-- Dumping data for table AutoSkola.polaznik: -1 rows
/*!40000 ALTER TABLE "polaznik" DISABLE KEYS */;
INSERT INTO "polaznik" ("id_polaznik", "ime", "prezime", "godiste", "broj_telefona") VALUES
	('P-1', 'Azra', 'Džinovic', 2000, '062111222'),
	('P-10', 'Berina', 'Berbic', 1999, '061061061'),
	('P-11', 'Asja', 'Ikanovic', 2000, '062255556'),
	('P-12', 'Sabrina', 'Grbešic', 2000, '065861284'),
	('P-13', 'Amna', 'Delic', 1999, '061288616'),
	('P-14', 'Nermina', 'Begicic', 1997, '063363963'),
	('P-15', 'Nejra', 'Nurkovic', 2001, '064587124'),
	('P-16', 'Alma', 'Smajlovic', 1998, '063632732'),
	('P-17', 'Melika', 'Jahic', 1992, '062625550'),
	('P-18', 'Džana', 'Brkovic', 1999, '061275754'),
	('P-19', 'Ajla', 'Memic', 1996, '061224447'),
	('P-2', 'Tarik', 'Cizmic', 2000, '0622234543'),
	('P-20', 'Irma', 'Hadžic', 1995, '063816579'),
	('P-21', 'Amira', 'Kasumovic', 2001, '062666665'),
	('P-22', 'Edisa', 'Kešetovic', 1999, '062657756'),
	('P-23', 'Amela', 'Vikalo', 1996, '061213123'),
	('P-24', 'Nejra', 'Korjenic', 1997, '065444222'),
	('P-25', 'Amil', 'Nurkovic', 1979, '064515151'),
	('P-26', 'Haris', 'Celebic', 1989, '063273456'),
	('P-27', 'Ema', 'Muratovic', 1992, '062593314'),
	('P-28', 'Dženana', 'Alibegovic', 1992, '061787878'),
	('P-29', 'Emir', 'Nukic', 1994, '061252522'),
	('P-3', 'Maid', 'Hamidovic', 1995, '061234567'),
	('P-30', 'Emil', 'Hodžic', 1995, '063765567'),
	('P-31', 'Berin', 'Beric', 1998, '061061062'),
	('P-4', 'Osman', 'Kakeš', 1993, '062367543'),
	('P-5', 'Bakir', 'Osmanovic', 2002, '062368986'),
	('P-6', 'Andrea', 'Džinovic', 2001, '061987658'),
	('P-7', 'Maja', 'Simic', 1994, '061456783'),
	('P-8', 'Šejla', 'Ðulic', 2000, '061221223'),
	('P-9', 'Ema', 'Ajanovic', 1999, '061123098');
/*!40000 ALTER TABLE "polaznik" ENABLE KEYS */;

-- Dumping structure for table AutoSkola.prva_pomoc_cas
CREATE TABLE IF NOT EXISTS "prva_pomoc_cas" (
	"id_prva_pomoc_cas" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_polaznik" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"broj_casova" INT NULL DEFAULT NULL,
	"odslusani_casovi" VARCHAR(30) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	FOREIGN KEY INDEX "FK__prva_pomo__id_po__1920BF5C" ("id_polaznik"),
	PRIMARY KEY ("id_prva_pomoc_cas"),
	CONSTRAINT "FK__prva_pomo__id_po__1920BF5C" FOREIGN KEY ("id_polaznik") REFERENCES "polaznik" ("id_polaznik") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

-- Dumping data for table AutoSkola.prva_pomoc_cas: -1 rows
/*!40000 ALTER TABLE "prva_pomoc_cas" DISABLE KEYS */;
INSERT INTO "prva_pomoc_cas" ("id_prva_pomoc_cas", "id_polaznik", "broj_casova", "odslusani_casovi") VALUES
	('PPC-1', 'P-1', 8, 'Da'),
	('PPC-10', 'P-10', 8, 'Da'),
	('PPC-11', 'P-11', 8, 'Da'),
	('PPC-12', 'P-12', 7, 'Ne'),
	('PPC-13', 'P-13', 8, 'Da'),
	('PPC-14', 'P-14', 5, 'Ne'),
	('PPC-15', 'P-15', 7, 'Ne'),
	('PPC-16', 'P-16', 8, 'Da'),
	('PPC-17', 'P-17', 7, 'Ne'),
	('PPC-18', 'P-18', 8, 'Da'),
	('PPC-19', 'P-19', 8, 'Da'),
	('PPC-2', 'P-2', 1, 'Ne'),
	('PPC-20', 'P-20', 6, 'Ne'),
	('PPC-21', 'P-21', 6, 'Ne'),
	('PPC-22', 'P-22', 8, 'Da'),
	('PPC-23', 'P-23', 1, 'Ne'),
	('PPC-24', 'P-24', 8, 'Da'),
	('PPC-25', 'P-25', 4, 'Ne'),
	('PPC-26', 'P-26', 8, 'Da'),
	('PPC-27', 'P-27', 3, 'Ne'),
	('PPC-28', 'P-28', 5, 'Ne'),
	('PPC-29', 'P-29', 8, 'Da'),
	('PPC-3', 'P-3', 7, 'Ne'),
	('PPC-30', 'P-30', 6, 'Ne'),
	('PPC-31', 'P-31', 8, 'Da'),
	('PPC-4', 'P-4', 4, 'Ne'),
	('PPC-5', 'P-5', 3, 'Ne'),
	('PPC-6', 'P-6', 2, 'Ne'),
	('PPC-7', 'P-7', 8, 'Da'),
	('PPC-8', 'P-8', 8, 'Da'),
	('PPC-9', 'P-9', 7, 'Ne');
/*!40000 ALTER TABLE "prva_pomoc_cas" ENABLE KEYS */;

-- Dumping structure for table AutoSkola.prva_pomoc_testiranje
CREATE TABLE IF NOT EXISTS "prva_pomoc_testiranje" (
	"id_prva_pomoc_testiranje" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_polaznik" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"mjesto_polaganja" VARCHAR(30) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"termin_polaganja" VARCHAR(30) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"polozio" VARCHAR(10) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	FOREIGN KEY INDEX "FK__prva_pomo__id_po__6E01572D" ("id_polaznik"),
	PRIMARY KEY ("id_prva_pomoc_testiranje"),
	CONSTRAINT "FK__prva_pomo__id_po__6E01572D" FOREIGN KEY ("id_polaznik") REFERENCES "polaznik" ("id_polaznik") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

-- Dumping data for table AutoSkola.prva_pomoc_testiranje: -1 rows
/*!40000 ALTER TABLE "prva_pomoc_testiranje" DISABLE KEYS */;
INSERT INTO "prva_pomoc_testiranje" ("id_prva_pomoc_testiranje", "id_polaznik", "mjesto_polaganja", "termin_polaganja", "polozio") VALUES
	('PPT-1', 'P-1', 'Crveni Krst Grada Tuzla', '28.4.2021', 'Da'),
	('PPT-10', 'P-10', 'Crveni Krst Grada Tuzla', '28.4.2021', 'Da'),
	('PPT-11', 'P-11', 'Crveni Krst Grada Tuzla', '17.3.2021', 'Da'),
	('PPT-12', 'P-12', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-13', 'P-13', 'Crveni Krst Grada Tuzla', '12.2.2021', 'Da'),
	('PPT-14', 'P-14', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-15', 'P-15', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-16', 'P-16', 'Crveni Krst Grada Tuzla', '14.3.2021', 'Da'),
	('PPT-17', 'P-17', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-18', 'P-18', 'Crveni Krst Grada Tuzla', '19.3.2021', 'Da'),
	('PPT-19', 'P-19', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-2', 'P-2', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-20', 'P-20', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-21', 'P-21', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-22', 'P-22', 'Crveni Krst Grada Tuzla', '12.3.2021', 'Da'),
	('PPT-23', 'P-23', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-24', 'P-24', 'Crveni Krst Grada Tuzla', '16.3.2021', 'Da'),
	('PPT-25', 'P-25', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-26', 'P-26', 'Crveni Krst Grada Tuzla', '14.3.2021', 'Da'),
	('PPT-27', 'P-27', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-28', 'P-28', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-29', 'P-29', 'Crveni Krst Grada Tuzla', '1.1.2021', 'Da'),
	('PPT-3', 'P-3', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-30', 'P-30', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-4', 'P-4', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-5', 'P-5', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-6', 'P-6', 'Crveni Krst Grada Tuzla', NULL, NULL),
	('PPT-7', 'P-7', 'Crveni Krst Grada Tuzla', '22.4.2021', 'Da'),
	('PPT-8', 'P-8', 'Crveni Krst Grada Tuzla', '30.3.2021', 'Da'),
	('PPT-9', 'P-9', 'Crveni Krst Grada Tuzla', NULL, NULL);
/*!40000 ALTER TABLE "prva_pomoc_testiranje" ENABLE KEYS */;

-- Dumping structure for table AutoSkola.testiranje
CREATE TABLE IF NOT EXISTS "testiranje" (
	"id_testiranje" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_polaznik" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_prva_pomoc_testiranje" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_testovi_testiranje" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_voznja_testiranje" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	FOREIGN KEY INDEX "FK__testiranj__id_po__7C4F7684" ("id_polaznik"),
	FOREIGN KEY INDEX "FK__testiranj__id_pr__7D439ABD" ("id_prva_pomoc_testiranje"),
	FOREIGN KEY INDEX "FK__testiranj__id_te__7E37BEF6" ("id_testovi_testiranje"),
	FOREIGN KEY INDEX "FK__testiranj__id_vo__7F2BE32F" ("id_voznja_testiranje"),
	PRIMARY KEY ("id_testiranje"),
	CONSTRAINT "FK__testiranj__id_po__7C4F7684" FOREIGN KEY ("id_polaznik") REFERENCES "polaznik" ("id_polaznik") ON UPDATE NO_ACTION ON DELETE NO_ACTION,
	CONSTRAINT "FK__testiranj__id_pr__7D439ABD" FOREIGN KEY ("id_prva_pomoc_testiranje") REFERENCES "prva_pomoc_testiranje" ("id_prva_pomoc_testiranje") ON UPDATE NO_ACTION ON DELETE NO_ACTION,
	CONSTRAINT "FK__testiranj__id_te__7E37BEF6" FOREIGN KEY ("id_testovi_testiranje") REFERENCES "testovi_testiranje" ("id_testovi_testiranje") ON UPDATE NO_ACTION ON DELETE NO_ACTION,
	CONSTRAINT "FK__testiranj__id_vo__7F2BE32F" FOREIGN KEY ("id_voznja_testiranje") REFERENCES "voznja_testiranje" ("id_voznja_testiranje") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

-- Dumping data for table AutoSkola.testiranje: -1 rows
/*!40000 ALTER TABLE "testiranje" DISABLE KEYS */;
INSERT INTO "testiranje" ("id_testiranje", "id_polaznik", "id_prva_pomoc_testiranje", "id_testovi_testiranje", "id_voznja_testiranje") VALUES
	('T-1', 'P-1', 'PPT-1', 'TT-1', 'VT-1'),
	('T-10', 'P-10', 'PPT-10', 'TT-10', 'VT-10'),
	('T-11', 'P-11', 'PPT-11', 'TT-11', 'VT-11'),
	('T-12', 'P-12', 'PPT-12', 'TT-12', 'VT-12'),
	('T-13', 'P-13', 'PPT-13', 'TT-13', 'VT-13'),
	('T-14', 'P-14', 'PPT-14', 'TT-14', 'VT-14'),
	('T-15', 'P-15', 'PPT-15', 'TT-15', 'VT-15'),
	('T-16', 'P-16', 'PPT-16', 'TT-16', 'VT-16'),
	('T-17', 'P-17', 'PPT-17', 'TT-17', 'VT-17'),
	('T-18', 'P-18', 'PPT-18', 'TT-18', 'VT-18'),
	('T-19', 'P-19', 'PPT-19', 'TT-19', 'VT-19'),
	('T-2', 'P-2', 'PPT-2', 'TT-2', 'VT-2'),
	('T-20', 'P-20', 'PPT-20', 'TT-20', 'VT-20'),
	('T-21', 'P-21', 'PPT-21', 'TT-21', 'VT-21'),
	('T-22', 'P-22', 'PPT-22', 'TT-22', 'VT-22'),
	('T-23', 'P-23', 'PPT-23', 'TT-23', 'VT-23'),
	('T-24', 'P-24', 'PPT-24', 'TT-24', 'VT-24'),
	('T-25', 'P-25', 'PPT-25', 'TT-25', 'VT-25'),
	('T-26', 'P-26', 'PPT-26', 'TT-26', 'VT-26'),
	('T-27', 'P-27', 'PPT-27', 'TT-27', 'VT-27'),
	('T-28', 'P-28', 'PPT-28', 'TT-28', 'VT-28'),
	('T-29', 'P-29', 'PPT-29', 'TT-29', 'VT-29'),
	('T-3', 'P-3', 'PPT-3', 'TT-3', 'VT-3'),
	('T-30', 'P-30', 'PPT-30', 'TT-30', 'VT-30'),
	('T-4', 'P-4', 'PPT-4', 'TT-4', 'VT-4'),
	('T-5', 'P-5', 'PPT-5', 'TT-5', 'VT-5'),
	('T-6', 'P-6', 'PPT-6', 'TT-6', 'VT-6'),
	('T-7', 'P-7', 'PPT-7', 'TT-7', 'VT-7'),
	('T-8', 'P-8', 'PPT-8', 'TT-8', 'VT-8'),
	('T-9', 'P-9', 'PPT-9', 'TT-9', 'VT-9');
/*!40000 ALTER TABLE "testiranje" ENABLE KEYS */;

-- Dumping structure for table AutoSkola.testovi_cas
CREATE TABLE IF NOT EXISTS "testovi_cas" (
	"id_testovi_cas" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_polaznik" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"broj_casova" INT NULL DEFAULT NULL,
	"odslusani_casovi" VARCHAR(30) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	FOREIGN KEY INDEX "FK__testovi_c__id_po__2F10007B" ("id_polaznik"),
	PRIMARY KEY ("id_testovi_cas"),
	CONSTRAINT "FK__testovi_c__id_po__2F10007B" FOREIGN KEY ("id_polaznik") REFERENCES "polaznik" ("id_polaznik") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

-- Dumping data for table AutoSkola.testovi_cas: -1 rows
/*!40000 ALTER TABLE "testovi_cas" DISABLE KEYS */;
INSERT INTO "testovi_cas" ("id_testovi_cas", "id_polaznik", "broj_casova", "odslusani_casovi") VALUES
	('TC-1', 'P-1', 40, 'Da'),
	('TC-10', 'P-10', 40, 'Da'),
	('TC-11', 'P-11', 40, 'Da'),
	('TC-12', 'P-12', 12, 'Ne'),
	('TC-13', 'P-13', 40, 'Da'),
	('TC-14', 'P-14', 10, 'Ne'),
	('TC-15', 'P-15', 20, 'Ne'),
	('TC-16', 'P-16', 40, 'Da'),
	('TC-17', 'P-17', 25, 'Ne'),
	('TC-18', 'P-18', 40, 'Da'),
	('TC-19', 'P-19', 40, 'Da'),
	('TC-2', 'P-2', 12, 'Ne'),
	('TC-20', 'P-20', 32, 'Ne'),
	('TC-21', 'P-21', 15, 'Ne'),
	('TC-22', 'P-22', 40, 'Da'),
	('TC-23', 'P-23', 30, 'Ne'),
	('TC-24', 'P-24', 40, 'Da'),
	('TC-25', 'P-25', 30, 'Ne'),
	('TC-26', 'P-26', 40, 'Da'),
	('TC-27', 'P-27', 34, 'Ne'),
	('TC-28', 'P-28', 32, 'Ne'),
	('TC-29', 'P-29', 40, 'Da'),
	('TC-3', 'P-3', 34, 'Ne'),
	('TC-30', 'P-30', 28, 'Ne'),
	('TC-31', 'P-31', 40, 'Da'),
	('TC-4', 'P-4', 10, 'Ne'),
	('TC-5', 'P-5', 12, 'Ne'),
	('TC-6', 'P-6', 11, 'NE'),
	('TC-7', 'P-7', 40, 'Da'),
	('TC-8', 'P-8', 40, 'Da'),
	('TC-9', 'P-9', 38, 'Ne');
/*!40000 ALTER TABLE "testovi_cas" ENABLE KEYS */;

-- Dumping structure for table AutoSkola.testovi_testiranje
CREATE TABLE IF NOT EXISTS "testovi_testiranje" (
	"id_testovi_testiranje" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_polaznik" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"mjesto_polaganja" VARCHAR(30) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"termin_polaganja" VARCHAR(30) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"polozio" VARCHAR(10) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	FOREIGN KEY INDEX "FK__testovi_t__id_po__70DDC3D8" ("id_polaznik"),
	PRIMARY KEY ("id_testovi_testiranje"),
	CONSTRAINT "FK__testovi_t__id_po__70DDC3D8" FOREIGN KEY ("id_polaznik") REFERENCES "polaznik" ("id_polaznik") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

-- Dumping data for table AutoSkola.testovi_testiranje: -1 rows
/*!40000 ALTER TABLE "testovi_testiranje" DISABLE KEYS */;
INSERT INTO "testovi_testiranje" ("id_testovi_testiranje", "id_polaznik", "mjesto_polaganja", "termin_polaganja", "polozio") VALUES
	('TT-1', 'P-1', 'Osnovna skola Tusanj Tuzla', '28.4.2021', 'Da'),
	('TT-10', 'P-10', 'Osnovna skola Tusanj Tuzla', '28.4.2021', 'Da'),
	('TT-11', 'P-11', 'Osnovna skola Tusanj Tuzla', '17.3.2021', 'Da'),
	('TT-12', 'P-12', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-13', 'P-13', 'Osnovna skola Tusanj Tuzla', '12.2.2021', 'Da'),
	('TT-14', 'P-14', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-15', 'P-15', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-16', 'P-16', 'Osnovna skola Tusanj Tuzla', '14.3.2021', 'Da'),
	('TT-17', 'P-17', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-18', 'P-18', 'Osnovna skola Tusanj Tuzla', '19.3.2021', 'Da'),
	('TT-19', 'P-19', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-2', 'P-2', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-20', 'P-20', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-21', 'P-21', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-22', 'P-22', 'Osnovna skola Tusanj Tuzla', '11.2.2021', 'Da'),
	('TT-23', 'P-23', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-24', 'P-24', 'Osnovna skola Tusanj Tuzla', '14.2.2021', 'Da'),
	('TT-25', 'P-25', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-26', 'P-26', 'Osnovna skola Tusanj Tuzla', '14.3.2021', 'Da'),
	('TT-27', 'P-27', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-28', 'P-28', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-29', 'P-29', 'Osnovna skola Tusanj Tuzla', '20.3.2021', 'Da'),
	('TT-3', 'P-3', 'Osnovna skola Tusanj Tuzla', '5.5.2021', NULL),
	('TT-30', 'P-30', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-4', 'P-4', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-5', 'P-5', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-6', 'P-6', 'Osnovna skola Tusanj Tuzla', NULL, NULL),
	('TT-7', 'P-7', 'Osnovna skola Tusanj Tuzla', '25.4.2021', 'Da'),
	('TT-8', 'P-8', 'Osnovna skola Tusanj Tuzla', '25.4.2021', 'Da'),
	('TT-9', 'P-9', 'Osnovna skola Tusanj Tuzla', '5.5.2021', 'Da');
/*!40000 ALTER TABLE "testovi_testiranje" ENABLE KEYS */;

-- Dumping structure for table AutoSkola.vozilo
CREATE TABLE IF NOT EXISTS "vozilo" (
	"id_vozilo" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"model" VARCHAR(20) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"godiste" NUMERIC(5,0) NULL DEFAULT NULL,
	"registracija" VARCHAR(30) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"kategorija" VARCHAR(5) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	PRIMARY KEY ("id_vozilo")
);

-- Dumping data for table AutoSkola.vozilo: -1 rows
/*!40000 ALTER TABLE "vozilo" DISABLE KEYS */;
INSERT INTO "vozilo" ("id_vozilo", "model", "godiste", "registracija", "kategorija") VALUES
	('V-1', 'Golf 4', 2014, 'K32-M-213', 'B'),
	('V-2', 'Skoda fabia', 2012, 'A32-T-130', 'B'),
	('V-3', 'Golf 4', 2010, 'T13-O-222', 'B'),
	('V-4', 'Golf 4', 2010, 'M12-K-123', 'B'),
	('V-5', 'Skoda fabia', 2010, 'M54-K-745', 'B'),
	('V-6', 'Skoda fabia', 2015, 'K67-A-234', 'B'),
	('V-7', 'Golf 4', 2010, 'T12-T-487', 'B'),
	('V-8', 'Kawasaki ninja', 2010, 'M32-M-845', 'A'),
	('V-9', 'Man D20', 2005, 'A20-L-253', 'C');
/*!40000 ALTER TABLE "vozilo" ENABLE KEYS */;

-- Dumping structure for table AutoSkola.voznja_cas
CREATE TABLE IF NOT EXISTS "voznja_cas" (
	"id_voznja_cas" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_polaznik" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_instruktor" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_vozilo" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"broj_casova" INT NULL DEFAULT NULL,
	"zavrsena_voznja" VARCHAR(30) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	FOREIGN KEY INDEX "FK__voznja_ca__id_in__4E88ABD4" ("id_instruktor"),
	FOREIGN KEY INDEX "FK__voznja_ca__id_po__4D94879B" ("id_polaznik"),
	FOREIGN KEY INDEX "FK__voznja_ca__id_vo__4F7CD00D" ("id_vozilo"),
	PRIMARY KEY ("id_voznja_cas"),
	CONSTRAINT "FK__voznja_ca__id_po__4D94879B" FOREIGN KEY ("id_polaznik") REFERENCES "polaznik" ("id_polaznik") ON UPDATE NO_ACTION ON DELETE NO_ACTION,
	CONSTRAINT "FK__voznja_ca__id_vo__4F7CD00D" FOREIGN KEY ("id_vozilo") REFERENCES "vozilo" ("id_vozilo") ON UPDATE NO_ACTION ON DELETE NO_ACTION,
	CONSTRAINT "FK__voznja_ca__id_in__4E88ABD4" FOREIGN KEY ("id_instruktor") REFERENCES "instruktor" ("id_instruktor") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

-- Dumping data for table AutoSkola.voznja_cas: -1 rows
/*!40000 ALTER TABLE "voznja_cas" DISABLE KEYS */;
INSERT INTO "voznja_cas" ("id_voznja_cas", "id_polaznik", "id_instruktor", "id_vozilo", "broj_casova", "zavrsena_voznja") VALUES
	('VC-1', 'P-1', 'I-1', 'V-1', 20, 'Ne'),
	('VC-10', 'P-10', 'I-4', 'V-4', 36, 'Ne'),
	('VC-11', 'P-11', 'I-1', 'V-1', 40, 'Da'),
	('VC-12', 'P-12', 'I-2', 'V-2', NULL, NULL),
	('VC-13', 'P-13', 'I-3', 'V-3', 40, 'Da'),
	('VC-14', 'P-14', 'I-4', 'V-4', NULL, NULL),
	('VC-15', 'P-15', 'I-5', 'V-5', NULL, NULL),
	('VC-16', 'P-16', 'I-6', 'V-6', 40, 'Da'),
	('VC-17', 'P-17', 'I-7', 'V-7', NULL, NULL),
	('VC-18', 'P-18', 'I-8', 'V-8', 40, 'Da'),
	('VC-19', 'P-19', 'I-9', 'V-9', 20, 'Ne'),
	('VC-2', 'P-2', 'I-2', 'V-2', NULL, NULL),
	('VC-20', 'P-20', 'I-1', 'V-1', 36, 'Ne'),
	('VC-21', 'P-21', 'I-1', 'V-1', NULL, NULL),
	('VC-22', 'P-22', 'I-2', 'V-2', 40, 'Da'),
	('VC-23', 'P-23', 'I-3', 'V-3', NULL, NULL),
	('VC-24', 'P-24', 'I-4', 'V-4', 40, 'Da'),
	('VC-25', 'P-25', 'I-5', 'V-5', NULL, NULL),
	('VC-26', 'P-26', 'I-6', 'V-6', 40, 'Da'),
	('VC-27', 'P-27', 'I-7', 'V-7', NULL, NULL),
	('VC-28', 'P-28', 'I-8', 'V-8', NULL, NULL),
	('VC-29', 'P-29', 'I-9', 'V-9', 40, 'Da'),
	('VC-3', 'P-3', 'I-3', 'V-3', NULL, NULL),
	('VC-30', 'P-30', 'I-1', 'V-1', NULL, NULL),
	('VC-4', 'P-4', 'I-4', 'V-4', NULL, NULL),
	('VC-5', 'P-5', 'I-5', 'V-5', NULL, NULL),
	('VC-6', 'P-6', 'I-6', 'V-6', NULL, NULL),
	('VC-7', 'P-7', 'I-7', 'V-7', 40, 'Da'),
	('VC-8', 'P-8', 'I-8', 'V-8', 40, 'Da'),
	('VC-9', 'P-9', 'I-9', 'V-9', NULL, NULL);
/*!40000 ALTER TABLE "voznja_cas" ENABLE KEYS */;

-- Dumping structure for table AutoSkola.voznja_testiranje
CREATE TABLE IF NOT EXISTS "voznja_testiranje" (
	"id_voznja_testiranje" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"id_polaznik" VARCHAR(20) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"termin_polaganja" VARCHAR(30) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"polaziste" VARCHAR(30) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"odrediste" VARCHAR(30) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"polozio" VARCHAR(10) NULL DEFAULT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	FOREIGN KEY INDEX "FK__voznja_te__id_po__73BA3083" ("id_polaznik"),
	PRIMARY KEY ("id_voznja_testiranje"),
	CONSTRAINT "FK__voznja_te__id_po__73BA3083" FOREIGN KEY ("id_polaznik") REFERENCES "polaznik" ("id_polaznik") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

-- Dumping data for table AutoSkola.voznja_testiranje: -1 rows
/*!40000 ALTER TABLE "voznja_testiranje" DISABLE KEYS */;
INSERT INTO "voznja_testiranje" ("id_voznja_testiranje", "id_polaznik", "termin_polaganja", "polaziste", "odrediste", "polozio") VALUES
	('VT-1', 'P-1', NULL, NULL, NULL, NULL),
	('VT-10', 'P-10', NULL, NULL, NULL, NULL),
	('VT-11', 'P-11', '29.4.2021', 'AutoSkola', 'Irac', NULL),
	('VT-12', 'P-12', NULL, NULL, NULL, NULL),
	('VT-13', 'P-13', '30.4.2021', 'AutoSkola', 'BCC', NULL),
	('VT-14', 'P-14', NULL, NULL, NULL, NULL),
	('VT-15', 'P-15', NULL, NULL, NULL, NULL),
	('VT-16', 'P-16', '3.5.2021', 'AutoSkola', 'Bulevar', NULL),
	('VT-17', 'P-17', NULL, NULL, NULL, NULL),
	('VT-18', 'P-18', '4.5.2021', 'AutoSkola', 'BKC', NULL),
	('VT-19', 'P-19', NULL, NULL, NULL, NULL),
	('VT-2', 'P-2', NULL, NULL, NULL, NULL),
	('VT-20', 'P-20', NULL, NULL, NULL, NULL),
	('VT-21', 'P-21', NULL, NULL, NULL, NULL),
	('VT-22', 'P-22', '28.4.2021', 'AutoSkola', 'BCC', NULL),
	('VT-23', 'P-23', NULL, NULL, NULL, NULL),
	('VT-24', 'P-24', '3.5.2021', 'AutoSkola', 'Bulevar', NULL),
	('VT-25', 'P-25', NULL, NULL, NULL, NULL),
	('VT-26', 'P-26', '2.5.2021', 'AutoSkola', 'Sjenjak', NULL),
	('VT-27', 'P-27', NULL, NULL, NULL, NULL),
	('VT-28', 'P-28', NULL, NULL, NULL, NULL),
	('VT-29', 'P-29', '2.3.2021', 'AutoSkola', 'Solana', NULL),
	('VT-3', 'P-3', NULL, NULL, NULL, NULL),
	('VT-30', 'P-30', NULL, NULL, NULL, NULL),
	('VT-4', 'P-4', NULL, NULL, NULL, NULL),
	('VT-5', 'P-5', NULL, NULL, NULL, NULL),
	('VT-6', 'P-6', NULL, NULL, NULL, NULL),
	('VT-7', 'P-7', '30.5.2021', 'AutoSkola', 'BCC', NULL),
	('VT-8', 'P-8', '1.6.2021', 'AutoSkola', 'Panonsko jezero', NULL),
	('VT-9', 'P-9', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE "voznja_testiranje" ENABLE KEYS */;

-- Dumping structure for trigger AutoSkola.provjera_br_cas_pp
/* SQL Error (156): Incorrect syntax near the keyword 'FROM'. */-- Dumping structure for trigger AutoSkola.provjera_br_cas_pp_update
/* SQL Error (156): Incorrect syntax near the keyword 'FROM'. */-- Dumping structure for trigger AutoSkola.provjera_br_cas_test
/* SQL Error (156): Incorrect syntax near the keyword 'FROM'. */-- Dumping structure for trigger AutoSkola.provjera_br_cas_test_update
/* SQL Error (156): Incorrect syntax near the keyword 'FROM'. */-- Dumping structure for trigger AutoSkola.provjera_br_cas_voznja
/* SQL Error (156): Incorrect syntax near the keyword 'FROM'. */-- Dumping structure for trigger AutoSkola.provjera_br_cas_voznja_update
/* SQL Error (156): Incorrect syntax near the keyword 'FROM'. *//*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
