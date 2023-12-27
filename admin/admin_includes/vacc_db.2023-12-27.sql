

CREATE TABLE `child_info` (
  `child_ID` int(11) NOT NULL AUTO_INCREMENT,
  `child_fname` varchar(50) NOT NULL,
  `child_lname` varchar(50) NOT NULL,
  `child_DOB` date NOT NULL,
  `child_email` varchar(255) NOT NULL,
  `child_CNIC` int(13) NOT NULL,
  `child_marital_status` varchar(50) NOT NULL,
  `child_vaccine_status` varchar(50) NOT NULL,
  `child_pID` int(11) DEFAULT NULL,
  `child_number` int(12) DEFAULT NULL,
  `child_image` varchar(255) DEFAULT NULL,
  `child_datecreated` date NOT NULL,
  PRIMARY KEY (`child_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `cities` (
  `city_ID` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) NOT NULL,
  `city_datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `city_addedby` varchar(100) NOT NULL,
  PRIMARY KEY (`city_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `cities_info` (
  `city_ID` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`city_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `hospital_info` (
  `hosp_ID` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(50) NOT NULL,
  `hospital_address` varchar(255) NOT NULL,
  `hospital_contact` varchar(20) DEFAULT NULL,
  `hospital_username` varchar(100) NOT NULL,
  `hospital_password` varchar(100) NOT NULL,
  `hospital_dateCreated` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`hosp_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;


INSERT INTO hospital_info VALUES
("100","Aga Khan University Hospital - AKUH","test","","test","test","2023-12-26 18:30:26"),
("101","Liaquat National Hospital","National Stadium Road, Bahadurabad, Karachi","","LNH-513","LNH-5137038","2023-12-26 18:57:07"),
("102","Indus Hospital Karachi","Plot C-76 Sector 31/5 Opposite Crossing Darussalam Society Sector 39, Korangi, Karachi","","IH-309","IH-309-8105","2023-12-27 18:20:03"),
("103","Burhani Hospital","Faiz Muhammad Fateh Ali Road, Saddar, Karachi","021 1234567","BH-919","BH-919-4317","2023-12-27 18:25:23");




CREATE TABLE `parent_info` (
  `P_ID` int(11) NOT NULL AUTO_INCREMENT,
  `parent_name` varchar(50) NOT NULL,
  `parent_lname` varchar(50) NOT NULL,
  `parent_number` varchar(11) NOT NULL,
  `parent_email` varchar(50) NOT NULL,
  `parent_CNIC` int(13) NOT NULL,
  `parent_role` int(11) DEFAULT NULL,
  `parent_password` varchar(50) NOT NULL,
  `parent_image` varchar(255) NOT NULL,
  PRIMARY KEY (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `stock_info` (
  `stock_ID` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(11) DEFAULT NULL,
  `vaccine_id` int(11) DEFAULT NULL,
  `avail_status` varchar(50) NOT NULL DEFAULT 'Out Of Stock',
  PRIMARY KEY (`stock_ID`),
  KEY `hospital_id` (`hospital_id`),
  KEY `vaccine_id` (`vaccine_id`),
  CONSTRAINT `stock_info_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_info` (`hosp_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `stock_info_ibfk_2` FOREIGN KEY (`vaccine_id`) REFERENCES `vaccine_info` (`vacc_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


INSERT INTO stock_info VALUES
("1","100","3","Out Of Stock");




CREATE TABLE `vaccine_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_date` date NOT NULL,
  `booking_hospitalID` int(11) DEFAULT NULL,
  `booking_vaccID` int(11) DEFAULT NULL,
  `booking_userID` int(11) DEFAULT NULL,
  `booking_status` int(11) NOT NULL DEFAULT 0,
  `booking_datecreated` date NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `vaccine_info` (
  `vacc_ID` int(11) NOT NULL AUTO_INCREMENT,
  `vaccine_name` varchar(50) NOT NULL,
  `vaccine_info` text NOT NULL,
  `vaccine_image` varchar(255) DEFAULT NULL,
  `vaccine_datecreated` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`vacc_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


INSERT INTO vaccine_info VALUES
("3","Sinovac","We are researching about vaccines information, will update it asap.","assets/img/vaccines/techwiz.png","2023-12-23"),
("4","Sinovac","","assets/img/vaccines/techwiz.png","2023-12-23"),
("5","asdasd","","assets/img/vaccines/SDLC.png","2023-12-23");




CREATE TABLE `vaccine_record` (
  `rec_ID` int(11) NOT NULL AUTO_INCREMENT,
  `rec_userID` int(11) DEFAULT NULL,
  `rec_vaccID` int(11) DEFAULT NULL,
  `date_of_1_dose` date NOT NULL,
  `date_of_2_dose` date NOT NULL,
  `rec_parentID` int(11) NOT NULL,
  PRIMARY KEY (`rec_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




<br />
<b>Warning</b>:  Cannot modify header information - headers already sent by (output started at C:\xampp\htdocs\VaccinationSystem\admin\admin_includes\exportdb.php:70) in <b>C:\xampp\htdocs\VaccinationSystem\admin\admin_includes\exportdb.php</b> on line <b>71</b><br />
