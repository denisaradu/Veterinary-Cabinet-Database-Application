-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 04:02 PM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u954699920_denisavet`
--

-- --------------------------------------------------------

--
-- Table structure for table `Animal`
--

CREATE TABLE `Animal` (
  `AnimalID` int(255) NOT NULL,
  `ProprietarID` int(255) NOT NULL,
  `DoctorID` int(255) NOT NULL,
  `Nume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Varsta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rasa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Specie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Microcip` tinyint(1) NOT NULL,
  `Sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Culoare` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Animal`
--

INSERT INTO `Animal` (`AnimalID`, `ProprietarID`, `DoctorID`, `Nume`, `Varsta`, `Rasa`, `Specie`, `Microcip`, `Sex`, `Culoare`) VALUES
(25, 3, 34, 'Marco', '9', 'Metis', 'Caine', 0, 'M', 'Maro'),
(27, 2, 35, 'Luna', '2', 'Bengaleza', 'Pisica', 1, 'F', 'Gri'),
(28, 3, 34, 'Kira', '6', 'Mix', 'Caine', 1, 'F', 'Negru'),
(29, 2, 35, 'Cleo', '3', 'Nimfa', 'Papagal', 0, 'F', 'rosu, galben si alb'),
(30, 3, 34, 'Maia', '4', 'Short Hair', 'Pisica', 1, 'F', 'gold'),
(31, 2, 35, 'Tom', '5', 'Short Hair', 'Pisica', 0, 'M', 'Maro cu gri'),
(32, 2, 36, 'Puki', '12', 'Siberian', 'Pisica', 1, 'M', 'gri cu alb');

-- --------------------------------------------------------

--
-- Table structure for table `Asistent`
--

CREATE TABLE `Asistent` (
  `AsistentID` int(255) NOT NULL,
  `DoctorID` int(255) NOT NULL,
  `Nume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prenume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CNP` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NrOre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Asistent`
--

INSERT INTO `Asistent` (`AsistentID`, `DoctorID`, `Nume`, `Prenume`, `CNP`, `NrOre`) VALUES
(1, 34, 'Irak', 'Aldubarairhmuhmadali', '3245687694399', 15),
(2, 35, 'Popescu', 'Elena', '2910715123456', 37),
(3, 34, 'Ion', 'Alexandru', '1911234567890', 20),
(4, 34, 'Andreescu', 'Ioana', '2908199012345', 29),
(5, 34, 'Stefan', 'Radu', '1901234567890', 30),
(6, 36, 'Anghel', 'Cristina', '8723567890124', 12),
(7, 36, 'Ivan', 'Razvan', '6023472930222', 26);

-- --------------------------------------------------------

--
-- Table structure for table `Diagnostic`
--

CREATE TABLE `Diagnostic` (
  `DiagnosticID` int(255) NOT NULL,
  `TratamentID` int(255) NOT NULL,
  `Cauza` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Diagnostic`
--

INSERT INTO `Diagnostic` (`DiagnosticID`, `TratamentID`, `Cauza`) VALUES
(2, 3, 'Pacientul prezinta simptome de mancarime excesiva si iritatie a pielii. Examenul fizic releva piele rosie, inflamata si iritata.'),
(3, 1, 'Pacientul prezinta simptome de varsaturi si diaree. Examenul fizic releva un abdomen distins si deshidratare.'),
(4, 2, 'Pacientul prezinta simptome de tuse si dificultate la respiratie. Examenul fizic releva o tuse persistenta si sunete pulmonare diminuate.'),
(5, 4, 'Pacientul prezinta simptome de claudicatie si refuzul de a suporta greutatea pe un membru. Examenul fizic releva o articulatie umflata si dureroasa.');

-- --------------------------------------------------------

--
-- Table structure for table `Doctor`
--

CREATE TABLE `Doctor` (
  `DoctorID` int(255) NOT NULL,
  `UserID` int(255) NOT NULL,
  `AsistentID` int(255) NOT NULL,
  `Nume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prenume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CNP` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`DoctorID`, `UserID`, `AsistentID`, `Nume`, `Prenume`, `CNP`) VALUES
(34, 20, 2, 'Krai', 'Cristian', '2323232323232'),
(35, 32, 5, 'Nae', 'Ana', '4567890098765'),
(36, 25, 5, 'Ion', 'Lucian', '3682586091265'),
(37, 23, 5, 'Radu', 'Denisa', '2345678987653');

-- --------------------------------------------------------

--
-- Table structure for table `LegaturaConsultatie`
--

CREATE TABLE `LegaturaConsultatie` (
  `AnimalID` int(255) NOT NULL,
  `DiagnosticID` int(255) NOT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `LegaturaConsultatie`
--

INSERT INTO `LegaturaConsultatie` (`AnimalID`, `DiagnosticID`, `Data`) VALUES
(27, 2, '0000-00-00'),
(27, 4, '2023-01-03'),
(25, 2, '2023-01-06'),
(28, 5, '2022-12-22'),
(25, 4, '2023-01-13'),
(28, 5, '2023-01-16'),
(30, 5, '2023-01-05'),
(29, 5, '2022-11-10'),
(31, 4, '2022-12-05'),
(32, 3, '2022-10-08');

-- --------------------------------------------------------

--
-- Table structure for table `LegaturaTM`
--

CREATE TABLE `LegaturaTM` (
  `TratamentID` int(255) NOT NULL,
  `MedicamentID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `LegaturaTM`
--

INSERT INTO `LegaturaTM` (`TratamentID`, `MedicamentID`) VALUES
(1, 1),
(2, 2),
(2, 5),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `Login`
--

CREATE TABLE `Login` (
  `UserID` int(255) NOT NULL,
  `Username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Login`
--

INSERT INTO `Login` (`UserID`, `Username`, `Password`) VALUES
(1, 'Test', '2323'),
(20, 'Krai', '23'),
(23, 'Denisa', 'qwerty'),
(24, 'Amalia', 'pencea'),
(25, 'test1', 'test1'),
(29, 'utest1', 'ptest1'),
(31, 'Elena', '123'),
(32, 'Ana', 'nae');

-- --------------------------------------------------------

--
-- Table structure for table `Medicament`
--

CREATE TABLE `Medicament` (
  `MedicamentID` int(255) NOT NULL,
  `Nume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ModAdministrare` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prospect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DataExpirare` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Medicament`
--

INSERT INTO `Medicament` (`MedicamentID`, `Nume`, `ModAdministrare`, `Prospect`, `DataExpirare`) VALUES
(1, 'Nurofen', 'luati 1-2 comprimate de 4 ori pe zi sau conform recomandarilor medicului dumneavoastra', 'Nurofen este un medicament sigur si eficient pentru a va ajuta sa va eliberati de dureri de cap, dureri musculare, dureri de spate sau orice alte dureri. Acesta este recomandat pentru animale si poate fi luat in combinatie cu alte medicamente.', '2022-11-23'),
(2, 'Gastromed', 'Mod administrare: 2-3 comprimate pe zi, cale orala. Nu depasiti limita recomandata', 'Gastromed este un medicament sigur si eficient pentru tratarea problemelor digestive. Acesta este recomandat pentru animale si poate fi luat in combinatie cu alte medicamente.', '2022-12-13'),
(3, 'Antibiotic', '1 pastila o data la 12 ore timp de maxim 4 zile', 'Antibiotic este utilizat pentru probleme mai grave ale animalului, suferind de boli cronice.', '2027-06-23'),
(4, 'Tusin', 'cale orala, nu mai mult de 8 linguri pe zi', 'Tusin este eficient impotriva tusei si problemelor respiratorii. Se pot lua intre 6-8 linguri pe zi.', '2021-12-12'),
(5, 'Injectie', 'o injectie o data la 4 zile dupa masa', 'Injectie de deparazitare interna, contine alergeni, recomandat catelusilor cu varsta mai mare de 4 luni', '2022-03-11'),
(6, 'Aspacardin', 'o tableta pe zi', 'a se citi prospectul inainte de administrare.Nerecomandat fara cererea doctorului', '2026-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `Proprietar`
--

CREATE TABLE `Proprietar` (
  `ProprietarID` int(255) NOT NULL,
  `Nume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prenume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CNP` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Adresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Proprietar`
--

INSERT INTO `Proprietar` (`ProprietarID`, `Nume`, `Prenume`, `CNP`, `Adresa`) VALUES
(2, 'Infinite', 'Krai', '1234567890123', 'str. Magnoliei, nr. 6'),
(3, 'Radu', 'Denisa', '4567890098765', 'str. 13 Decembrie, bl. 13, sc. F');

-- --------------------------------------------------------

--
-- Table structure for table `Tratament`
--

CREATE TABLE `Tratament` (
  `TratamentID` int(255) NOT NULL,
  `Durata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descriere` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Tratament`
--

INSERT INTO `Tratament` (`TratamentID`, `Durata`, `Descriere`) VALUES
(1, '7', 'Pacientului i se administreaza un bronhodilatator pentru a deschide caile respiratorii si pentru a reduce tusea. Steroizii sunt, de asemenea, administrati pentru a reduce inflamatia plamanilor. Pacientul este, de asemenea, pus pe un tratament cu nebulizat'),
(2, '10', 'Pacientului i se administreaza antihistaminice pentru a reduce mancarimea si inflamatia. Se recomanda utilizarea regulata a unui sampon medicat pentru a ajuta la calmarea pielii si la reducerea inflamatiei. Pacientul poate fi, de asemenea, administrat cu '),
(3, '5', 'Pacientului i se administreaza fluide pentru a-si reface hidratarea si un antiinflamator pentru a reduce inflamarea tractului digestiv. Se recomanda o dieta blanda pentru urmatoarele cateva zile pentru a permite sistemului digestiv sa se odihneasca si sa '),
(4, '14', 'Pacientului i se administreaza medicamente pentru durere pentru a alina durerea si inflamatia. Se aplica terapie cu frig pentru a reduce umflarea. Membrul este imobilizat pentru a preveni o leziune suplimentara. Fizioterapia poate fi, de asemenea, recoman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Animal`
--
ALTER TABLE `Animal`
  ADD PRIMARY KEY (`AnimalID`),
  ADD KEY `PropietarID` (`ProprietarID`),
  ADD KEY `DoctorID` (`DoctorID`);

--
-- Indexes for table `Asistent`
--
ALTER TABLE `Asistent`
  ADD PRIMARY KEY (`AsistentID`),
  ADD KEY `DoctorID` (`DoctorID`);

--
-- Indexes for table `Diagnostic`
--
ALTER TABLE `Diagnostic`
  ADD PRIMARY KEY (`DiagnosticID`),
  ADD KEY `TratamentID` (`TratamentID`);

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`DoctorID`),
  ADD KEY `AsistentID` (`AsistentID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `LegaturaConsultatie`
--
ALTER TABLE `LegaturaConsultatie`
  ADD KEY `AnimalID` (`AnimalID`),
  ADD KEY `DiagnosticID` (`DiagnosticID`);

--
-- Indexes for table `LegaturaTM`
--
ALTER TABLE `LegaturaTM`
  ADD KEY `TratamentID` (`TratamentID`,`MedicamentID`),
  ADD KEY `MedicamentID` (`MedicamentID`);

--
-- Indexes for table `Login`
--
ALTER TABLE `Login`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `Medicament`
--
ALTER TABLE `Medicament`
  ADD PRIMARY KEY (`MedicamentID`);

--
-- Indexes for table `Proprietar`
--
ALTER TABLE `Proprietar`
  ADD PRIMARY KEY (`ProprietarID`);

--
-- Indexes for table `Tratament`
--
ALTER TABLE `Tratament`
  ADD PRIMARY KEY (`TratamentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Animal`
--
ALTER TABLE `Animal`
  MODIFY `AnimalID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `Asistent`
--
ALTER TABLE `Asistent`
  MODIFY `AsistentID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Diagnostic`
--
ALTER TABLE `Diagnostic`
  MODIFY `DiagnosticID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Doctor`
--
ALTER TABLE `Doctor`
  MODIFY `DoctorID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `Login`
--
ALTER TABLE `Login`
  MODIFY `UserID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `Medicament`
--
ALTER TABLE `Medicament`
  MODIFY `MedicamentID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Proprietar`
--
ALTER TABLE `Proprietar`
  MODIFY `ProprietarID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Tratament`
--
ALTER TABLE `Tratament`
  MODIFY `TratamentID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Animal`
--
ALTER TABLE `Animal`
  ADD CONSTRAINT `Animal_ibfk_1` FOREIGN KEY (`DoctorID`) REFERENCES `Doctor` (`DoctorID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Animal_ibfk_2` FOREIGN KEY (`ProprietarID`) REFERENCES `Proprietar` (`ProprietarID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Asistent`
--
ALTER TABLE `Asistent`
  ADD CONSTRAINT `Asistent_ibfk_1` FOREIGN KEY (`DoctorID`) REFERENCES `Doctor` (`DoctorID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Diagnostic`
--
ALTER TABLE `Diagnostic`
  ADD CONSTRAINT `Diagnostic_ibfk_1` FOREIGN KEY (`TratamentID`) REFERENCES `Tratament` (`TratamentID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD CONSTRAINT `Doctor_ibfk_1` FOREIGN KEY (`AsistentID`) REFERENCES `Asistent` (`AsistentID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Doctor_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `Login` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `LegaturaConsultatie`
--
ALTER TABLE `LegaturaConsultatie`
  ADD CONSTRAINT `LegaturaConsultatie_ibfk_1` FOREIGN KEY (`DiagnosticID`) REFERENCES `Diagnostic` (`DiagnosticID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `LegaturaConsultatie_ibfk_2` FOREIGN KEY (`AnimalID`) REFERENCES `Animal` (`AnimalID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `LegaturaTM`
--
ALTER TABLE `LegaturaTM`
  ADD CONSTRAINT `LegaturaTM_ibfk_1` FOREIGN KEY (`MedicamentID`) REFERENCES `Medicament` (`MedicamentID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `LegaturaTM_ibfk_2` FOREIGN KEY (`TratamentID`) REFERENCES `Tratament` (`TratamentID`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
