
create database `matharihms`;
  use `matharihms`;
CREATE TABLE `admin` (
  `admin_id` varchar(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `idno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `firstname`, `middlename`, `lastname`, `phone`, `idno`) VALUES
('AD0001', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Super', 'a', 'Administrator', '0705767676', ''),
('AD02', 'tracy@fgmail.com', 'admin', ' Tracy', 'mbithe', 'Mbithe', '0788554466', '54879865'),
('AD03', 'ergt@sdfs.sdf', '21232f297a57a5a743894a0e4a801fc3', 'g', 'rgt', 'rgtr', '0754210312', '32547887');

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `b_id` varchar(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `word` varchar(20) NOT NULL,
  `occupied` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`b_id`, `name`, `description`, `word`, `occupied`) VALUES
('BD0001', 'BA', 'test', 'WR0001', '0'),
('BD0002', 'bed 2', 'wefr', 'WR0001', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bed_trans`
--

CREATE TABLE `bed_trans` (
  `id` int(11) NOT NULL,
  `p_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  `v_id` varchar(20) NOT NULL,
  `ward` varchar(10) DEFAULT NULL,
  `bed` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed_trans`
--

INSERT INTO `bed_trans` (`id`, `p_id`, `name`, `date`, `v_id`, `ward`, `bed`) VALUES
(7, 'P000002', 'Jabe  Mwaura', '2020-11-03', 'V000003', 'WR0001', 'BD0002');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `d_id` varchar(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `idno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`d_id`, `username`, `password`, `firstname`, `middlename`, `lastname`, `phone`, `idno`) VALUES
('001', 'doctor@ehrms.org', '21232f297a57a5a743894a0e4a801fc3', ' michael', 'doctor', 'musya', '0712457888', '23125487'),
('1', 'doctor@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'douglas', '', 'mathew', '0711554488', '21548799');

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

CREATE TABLE `nurses` (
  `n_id` varchar(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `idno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurses`
--

INSERT INTO `nurses` (`n_id`, `username`, `password`, `firstname`, `middlename`, `lastname`, `phone`, `idno`) VALUES
('NU001', 'nurse@gmail.com', '21232f297a57a5a743894a0e4a801fc3', ' NUrse', 'j', 'Jane', '0745879865', '21548798');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `p_id` varchar(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `physical_location` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `occupation` varchar(20) DEFAULT NULL,
  `idno` varchar(30) NOT NULL,
  `marital_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`p_id`, `firstname`, `middlename`, `lastname`, `phone_no`, `physical_location`, `dob`, `gender`, `occupation`, `idno`, `marital_status`) VALUES
('P000001', ' jane', 'k', 'kamanthe', '0745659887', 'kitui', '2020-09-29', 'Female', 'farmer', '32547887', 'Single'),
('P000002', ' Jabe', 'kmj', 'Mwaura', '0754986533', 'Nakuru', '1994-12-11', 'Female', 'Farmer', '32658734', 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `p_appointments`
--

CREATE TABLE `p_appointments` (
  `id` int(11) NOT NULL,
  `p_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  `temp` int(11) DEFAULT NULL,
  `bp` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `attended` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_appointments`
--

INSERT INTO `p_appointments` (`id`, `p_id`, `name`, `date`, `temp`, `bp`, `weight`, `attended`) VALUES
(1, 'P000001', ' jane k kamanthe', '2020-10-28', 37, 195, 45, 0),
(2, 'P000002', 'Jabe  Mwaura', '2020-10-29', 34, 185, 65, 1),
(3, 'P000002', 'Jabe  Mwaura', '2020-10-30', NULL, NULL, NULL, 0),
(4, 'P000001', ' jane k kamanthe', '2020-11-04', 38, 189, 59, 0);

-- --------------------------------------------------------

--
-- Table structure for table `p_medication`
--

CREATE TABLE `p_medication` (
  `id` int(11) NOT NULL,
  `p_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  `d_id` varchar(20) NOT NULL,
  `notes` varchar(200) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `admitted` tinyint(1) DEFAULT NULL,
  `ward` varchar(10) DEFAULT NULL,
  `bed` varchar(10) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `discharged` tinyint(1) DEFAULT NULL,
  `discharge_date` date DEFAULT NULL,
  `cleared_by` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_medication`
--

INSERT INTO `p_medication` (`id`, `p_id`, `name`, `date`, `d_id`, `notes`, `remarks`, `admitted`, `ward`, `bed`, `admission_date`, `discharged`, `discharge_date`, `cleared_by`) VALUES
(1, 'P000001', ' jane k kamanthe', '2020-10-28', '1', 'dfgvdfghfghdf', 'hfdbfhftrhtr', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'P000001', ' jane k kamanthe', '2020-10-28', '1', 'comment test 2', 'checjked out well', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'P000001', ' jane k kamanthe', '2020-10-28', '1', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'P000002', 'Jabe  Mwaura', '2020-10-29', '1', 'Test medication for iuh id', 'iuasdf khbgisd hbids hbgisd ', 1, 'WR0001', 'BD0002', '2020-10-29', 0, NULL, NULL),
(5, 'P000002', 'Jabe  Mwaura', '2020-10-29', '1', 'Test medication for iuh id', 'iuasdf khbgisd hbids hbgisd ', 1, 'WR0001', 'BD0002', '2020-10-29', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_visitor`
--

CREATE TABLE `p_visitor` (
  `v_id` varchar(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `idno` varchar(30) NOT NULL,
  `physical_location` varchar(50) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `patient` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_visitor`
--

INSERT INTO `p_visitor` (`v_id`, `firstname`, `middlename`, `lastname`, `phone_no`, `idno`, `physical_location`, `gender`, `patient`) VALUES
('V000001', ' emmmanuel', 'kyeva', 'Kavevo', '0787652333', '5487986', 'kangundo', 'Male', NULL),
('V000002', 'tracy', 'b', 'murash', '0788551215', '65988754', 'kikish', '', NULL),
('V000003', 'JOHN', 'L', 'MITUA', '0745879865', '54986532', 'JDASSA', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_master`
--

CREATE TABLE `system_master` (
  `id` int(11) NOT NULL,
  `item` varchar(20) NOT NULL,
  `length` int(11) NOT NULL,
  `last_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_master`
--

INSERT INTO `system_master` (`id`, `item`, `length`, `last_no`) VALUES
(1, 'admin', 2, 2),
(2, 'doctor', 3, 1),
(3, 'nurse', 3, 1),
(4, 'words', 4, 1),
(5, 'beds', 4, 1),
(6, 'patient', 6, 2),
(7, 'visitor', 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sys_user`
--

CREATE TABLE `sys_user` (
  `user_id` varchar(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_user`
--

INSERT INTO `sys_user` (`user_id`, `username`, `password`, `level`) VALUES
('001', 'doctor@ehrms.org', '21232f297a57a5a743894a0e4a801fc3', 2),
('1', 'doctor@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 2),
('AD0001', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
('AD02', 'tracy@fgmail.com', '21232f297a57a5a743894a0e4a801fc3', 1),
('AD03', 'ergt@sdfs.sdf', '21232f297a57a5a743894a0e4a801fc3', 1),
('NU001', 'nurse@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `level`) VALUES
(1, 'administrator', 1);

-- --------------------------------------------------------

--
-- Table structure for table `v_appointments`
--

CREATE TABLE `v_appointments` (
  `id` int(11) NOT NULL,
  `v_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `idno` varchar(50) DEFAULT NULL,
  `patient` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `v_appointments`
--

INSERT INTO `v_appointments` (`id`, `v_id`, `name`, `date`, `phone_no`, `idno`, `patient`) VALUES
(2, 'V000003', 'JOHN L MITUA', '2020-10-31', '0745879865', '54986532', 'trascy'),
(3, 'V000003', 'JOHN L MITUA', '2020-11-01', '0745879865', '54986532', 'jabe');

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `w_id` varchar(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`w_id`, `name`, `description`, `capacity`, `available`) VALUES
('WR0001', '  WING A', 'first', 5, 5),
('WR0002', 'word B', 'iw', 12, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `bed_trans`
--
ALTER TABLE `bed_trans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `p_appointments`
--
ALTER TABLE `p_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_medication`
--
ALTER TABLE `p_medication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_visitor`
--
ALTER TABLE `p_visitor`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `system_master`
--
ALTER TABLE `system_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_user`
--
ALTER TABLE `sys_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `v_appointments`
--
ALTER TABLE `v_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bed_trans`
--
ALTER TABLE `bed_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `p_appointments`
--
ALTER TABLE `p_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `p_medication`
--
ALTER TABLE `p_medication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `v_appointments`
--
ALTER TABLE `v_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

