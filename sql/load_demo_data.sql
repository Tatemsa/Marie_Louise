--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO USERS (`US_ID`,`US_NAME`,`US_ROLE`,`US_EMAIL`,`US_CONTACT`, `US_PASSWORD`) VALUES (1,'Doe', 'admin','john.doe@example.com', null, null);
INSERT INTO USERS (`US_ID`,`US_NAME`,`US_ROLE`,`US_EMAIL`,`US_CONTACT`, `US_PASSWORD`) VALUES (2,'Smith', 'employee','jane.smith@example.com', null, null);
INSERT INTO USERS (`US_ID`,`US_NAME`,`US_ROLE`,`US_EMAIL`,`US_CONTACT`, `US_PASSWORD`) VALUES (3,'Brown', 'employee','charlie.brown@example.com', null, null);
INSERT INTO USERS (`US_ID`,`US_NAME`,`US_ROLE`,`US_EMAIL`,`US_CONTACT`, `US_PASSWORD`) VALUES (4,'Taylor', 'client','emily.taylor@example.com', null, null);
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ROOM`
--

LOCK TABLES `ROOM` WRITE;
/*!40000 ALTER TABLE `ROOM` DISABLE KEYS */;
INSERT INTO ROOM (`RM_ID`,`RM_NUMBER`,`RM_TYPE`,`RM_DESC`,`RM_PRICE_PER_NIGHT`,`RM_STATUS`,`RM_CREATED_DATE`,`RM_LAST_MODIFIED_DATE`) VALUES (1, '101', 'Simple', 'Chambre simple avec un lit et salle de bain privée', 50.00, 'Disponible', '2022-11-02 16:47:33', null);
INSERT INTO ROOM (`RM_ID`,`RM_NUMBER`,`RM_TYPE`,`RM_DESC`,`RM_PRICE_PER_NIGHT`,`RM_STATUS`,`RM_CREATED_DATE`,`RM_LAST_MODIFIED_DATE`) VALUES (2, '102', 'Double', 'Chambre double avec vue sur la mer', 80.00, 'Disponible', '2022-11-02 16:47:33',null);
INSERT INTO ROOM (`RM_ID`,`RM_NUMBER`,`RM_TYPE`,`RM_DESC`,`RM_PRICE_PER_NIGHT`,`RM_STATUS`,`RM_CREATED_DATE`,`RM_LAST_MODIFIED_DATE`) VALUES (3, '201', 'Suite', 'Suite avec salon et jacuzzi', 150.00, 'Disponible', '2022-11-02 16:47:33',null);
INSERT INTO ROOM (`RM_ID`,`RM_NUMBER`,`RM_TYPE`,`RM_DESC`,`RM_PRICE_PER_NIGHT`,`RM_STATUS`,`RM_CREATED_DATE`,`RM_LAST_MODIFIED_DATE`) VALUES (4, '301', 'Deluxe', 'Chambre Deluxe avec terrasse privée', 200.00, 'Disponible','2022-11-02 16:47:33', null);
/*!40000 ALTER TABLE `ROOM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `EQUIPMENT`
--

LOCK TABLES `EQUIPMENT` WRITE;
/*!40000 ALTER TABLE `EQUIPMENT` DISABLE KEYS */;
INSERT INTO EQUIPMENT (`EQM_ID`,`EQM_NAME`,`EQM_DESC`) VALUES (1, 'Télévision', 'Télévision HD avec chaînes internationales');
INSERT INTO EQUIPMENT (`EQM_ID`,`EQM_NAME`,`EQM_DESC`) VALUES (2, 'Climatisation', 'Climatisation réglable');
INSERT INTO EQUIPMENT (`EQM_ID`,`EQM_NAME`,`EQM_DESC`) VALUES (3, 'Minibar', 'Minibar avec boissons et snacks');
INSERT INTO EQUIPMENT (`EQM_ID`,`EQM_NAME`,`EQM_DESC`) VALUES (4, 'Wifi', 'Accès internet haut débit');
/*!40000 ALTER TABLE `EQUIPMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `EQUIPMENTROOMS`
--

LOCK TABLES `EQUIPMENTROOM` WRITE;
/*!40000 ALTER TABLE `EQUIPMENTROOM` DISABLE KEYS */;
INSERT INTO EQUIPMENTROOM (`EQMRM_EQM_ID`,`EQMRM_RM_ID`) VALUES (1, 1);
INSERT INTO EQUIPMENTROOM (`EQMRM_EQM_ID`,`EQMRM_RM_ID`) VALUES (1, 4);
INSERT INTO EQUIPMENTROOM (`EQMRM_EQM_ID`,`EQMRM_RM_ID`) VALUES (2, 1);
INSERT INTO EQUIPMENTROOM (`EQMRM_EQM_ID`,`EQMRM_RM_ID`) VALUES (2, 2);
INSERT INTO EQUIPMENTROOM (`EQMRM_EQM_ID`,`EQMRM_RM_ID`) VALUES (3, 1);
INSERT INTO EQUIPMENTROOM (`EQMRM_EQM_ID`,`EQMRM_RM_ID`) VALUES (3, 3);
INSERT INTO EQUIPMENTROOM (`EQMRM_EQM_ID`,`EQMRM_RM_ID`) VALUES (4, 2);
INSERT INTO EQUIPMENTROOM (`EQMRM_EQM_ID`,`EQMRM_RM_ID`) VALUES (4, 4);
/*!40000 ALTER TABLE `EQUIPMENTROOM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SERVICE`
--

LOCK TABLES `SERVICE` WRITE;
/*!40000 ALTER TABLE `SERVICE` DISABLE KEYS */;
INSERT INTO SERVICE (`SERV_ID`,`SERV_NAME`,`SERV_DESC`,`SERV_PRICE`,`SERV_TYPE`,`SERV_CREATED_DATE`) VALUES (1,'Organisation Mariage', 'Organisation complète de mariage à l’hôtel', 1000.00, 'event', null);
INSERT INTO SERVICE (`SERV_ID`,`SERV_NAME`,`SERV_DESC`,`SERV_PRICE`,`SERV_TYPE`,`SERV_CREATED_DATE`) VALUES (2,'Tourisme', 'Excursions et visites guidées', 500.00, 'tourism', null);
INSERT INTO SERVICE (`SERV_ID`,`SERV_NAME`,`SERV_DESC`,`SERV_PRICE`,`SERV_TYPE`,`SERV_CREATED_DATE`) VALUES (3,'Service Restauration', 'Service traiteur pour événements', 300.00, 'event', null);
INSERT INTO SERVICE (`SERV_ID`,`SERV_NAME`,`SERV_DESC`,`SERV_PRICE`,`SERV_TYPE`,`SERV_CREATED_DATE`) VALUES (4,'Photographie', 'Photographe professionnel pour événements', 200.00, 'event', null);
/*!40000 ALTER TABLE `SERVICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `BOOKING`
--

LOCK TABLES `BOOKING` WRITE;
/*!40000 ALTER TABLE `BOOKING DISABLE KEYS */;
INSERT INTO BOOKING (`BK_ID`,`BK_US_ID`,`BK_SERV_ID`,`BK_RM_ID`,`BK_START_DATE`,`BK_END_DATE`,`BK_STATUS`,`BK_CREATED_DATE`,`BK_LAST_MODIFIED_DATE`) VALUES (1, 1, 1, NULL, '2024-12-05', '2024-12-07', 'confirmed', null, null);
INSERT INTO BOOKING (`BK_ID`,`BK_US_ID`,`BK_SERV_ID`,`BK_RM_ID`,`BK_START_DATE`,`BK_END_DATE`,`BK_STATUS`,`BK_CREATED_DATE`,`BK_LAST_MODIFIED_DATE`) VALUES (2, 2, NULL, 2, '2024-12-10', '2024-12-15', 'pending', null, null);
INSERT INTO BOOKING (`BK_ID`,`BK_US_ID`,`BK_SERV_ID`,`BK_RM_ID`,`BK_START_DATE`,`BK_END_DATE`,`BK_STATUS`,`BK_CREATED_DATE`,`BK_LAST_MODIFIED_DATE`) VALUES (3, 3, 3, NULL, '2024-12-08', '2024-12-08', 'confirmed', null, null);
INSERT INTO BOOKING (`BK_ID`,`BK_US_ID`,`BK_SERV_ID`,`BK_RM_ID`,`BK_START_DATE`,`BK_END_DATE`,`BK_STATUS`,`BK_CREATED_DATE`,`BK_LAST_MODIFIED_DATE`) VALUES (4, 4, NULL, 3, '2024-12-12', '2024-12-14', 'cancelled', null, null);
/*!40000 ALTER TABLE `BOOKING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `EVENT`
--

LOCK TABLES `EVENT` WRITE;
/*!40000 ALTER TABLE `EVENT` DISABLE KEYS */;
INSERT INTO EVENT (`EVT_ID`,`EVT_NAME`,`EVT_TYPE`,`EVT_DESC`,`EVT_IMAGE`,`EVT_DATE_START`,`EVT_DATE_END`,`EVT_LOCATION`,`EVT_CREATED_DATE`,`EVT_LAST_MODIFIED_DATE`) VALUES (1,'Mariage de Sophie & Alex', 'wedding', 'Cérémonie et réception dans la salle principale', null, '2024-12-20', '2024-12-20','Salle de réception A', null, null);
INSERT INTO EVENT (`EVT_ID`,`EVT_NAME`,`EVT_TYPE`,`EVT_DESC`,`EVT_IMAGE`,`EVT_DATE_START`,`EVT_DATE_END`,`EVT_LOCATION`,`EVT_CREATED_DATE`,`EVT_LAST_MODIFIED_DATE`) VALUES (2,'Conférence des Startups', 'conference', 'Événement dédié aux entrepreneurs', null, '2024-12-10', '2024-12-10', 'Salle de conférence B', null, null);
INSERT INTO EVENT (`EVT_ID`,`EVT_NAME`,`EVT_TYPE`,`EVT_DESC`,`EVT_IMAGE`,`EVT_DATE_START`,`EVT_DATE_END`,`EVT_LOCATION`,`EVT_CREATED_DATE`,`EVT_LAST_MODIFIED_DATE`) VALUES (3,'Anniversaire de Clara', 'birthday', 'Soirée avec DJ et buffet', null, '2024-12-15', '2024-12-15', 'Jardin de l’hôtel', null, null);
INSERT INTO EVENT (`EVT_ID`,`EVT_NAME`,`EVT_TYPE`,`EVT_DESC`,`EVT_IMAGE`,`EVT_DATE_START`,`EVT_DATE_END`,`EVT_LOCATION`,`EVT_CREATED_DATE`,`EVT_LAST_MODIFIED_DATE`) VALUES (4,'Funérailles de M. Dupont', 'funeral', 'Cérémonie privée avec service traiteur', null, '2024-12-18', '2024-12-18', 'Lieu extérieur à l’hôtel', null, null);
/*!40000 ALTER TABLE `EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `POST`
--

LOCK TABLES `POST` WRITE;
/*!40000 ALTER TABLE `POST` DISABLE KEYS */;
INSERT INTO POST (`PT_ID`,`PT_TITLE`,`PT_CONTENT`,`PT_IMAGE`,`PT_CREATED_DATE`, `PT_US_ID`) VALUES (1, 'Nouveau Service de Tourisme', 'Nous proposons désormais des excursions dans les plus beaux sites de la région.', null,'2024-11-15', 1);
INSERT INTO POST (`PT_ID`,`PT_TITLE`,`PT_CONTENT`,`PT_IMAGE`,`PT_CREATED_DATE`, `PT_US_ID`) VALUES (2, 'Mariage de Sophie & Alex', 'Retour en images sur le mariage de Sophie & Alex organisé chez nous.', null,'2024-12-21', 2);
INSERT INTO POST (`PT_ID`,`PT_TITLE`,`PT_CONTENT`,`PT_IMAGE`,`PT_CREATED_DATE`, `PT_US_ID`) VALUES (3, 'Conférence des Startups', 'Merci à tous les participants de la conférence du 10 décembre.', null, '2024-12-11', 3);
INSERT INTO POST (`PT_ID`,`PT_TITLE`,`PT_CONTENT`,`PT_IMAGE`,`PT_CREATED_DATE`, `PT_US_ID`) VALUES (4, 'Anniversaire de Clara', 'Un anniversaire magique célébré au Jardin de l’hôtel.', null, '2024-12-16', 1);
/*!40000 ALTER TABLE `POST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `NOTICE`
--

LOCK TABLES `NOTICE` WRITE;
/*!40000 ALTER TABLE `NOTICE` DISABLE KEYS */;
INSERT INTO NOTICE (`NT_ID`,`NT_US_ID`,`NT_COMMENT`,`NT_NOTE`,`NT_CREATED_DATE`) VALUES (1, 1, 'Super service, j’ai adoré l’excursion organisée.', 5, '2024-11-16');
INSERT INTO NOTICE (`NT_ID`,`NT_US_ID`,`NT_COMMENT`,`NT_NOTE`,`NT_CREATED_DATE`) VALUES (2, 2, 'L’organisation du mariage était parfaite, bravo !', 5, '2024-12-21');
INSERT INTO NOTICE (`NT_ID`,`NT_US_ID`,`NT_COMMENT`,`NT_NOTE`,`NT_CREATED_DATE`) VALUES (3, 3, 'Très belle conférence, tout était bien préparé.', 4, '2024-12-12');
INSERT INTO NOTICE (`NT_ID`,`NT_US_ID`,`NT_COMMENT`,`NT_NOTE`,`NT_CREATED_DATE`) VALUES (4, 4, 'Le jardin est magnifique, une soirée inoubliable.', 5, '2024-12-17');
/*!40000 ALTER TABLE `NOTICE` ENABLE KEYS */;
UNLOCK TABLES;