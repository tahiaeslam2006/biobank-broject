INSERT INTO Donors (FullName, Gender, BirthDate, ConsentGiven) VALUES
('أحمد محمد', 'Male', '1985-05-12', TRUE),
('سارة علي', 'Female', '1990-08-22', TRUE),
('محمود حسن', 'Male', '1978-02-15', TRUE),
('فاطمة الزهراء', 'Female', '1995-11-30', TRUE),
('خالد عبد الله', 'Male', '1988-07-03', TRUE),
('مريم أحمد', 'Female', '1992-12-19', TRUE),
('عمر إبراهيم', 'Male', '1981-04-25', TRUE),
('ليلى سمير', 'Female', '1996-09-05', TRUE),
('يوسف مصطفى', 'Male', '1989-01-14', TRUE),
('نور الهدى', 'Female', '1993-06-20', TRUE);

INSERT INTO SampleTypes (TypeName, Description) VALUES
('Blood', 'Whole blood sample for DNA extraction'),
('Plasma', 'Blood plasma for protein analysis'),
('Serum', 'Blood serum for antibody testing'),
('Saliva', 'Saliva sample for genetic screening'),
('Tissue', 'Biopsy tissue sample');

INSERT INTO StorageLocations (FreezerName, ShelfNumber, BoxNumber) VALUES
('Freezer-A1', 1, 3),
('Freezer-A1', 2, 1),
('Freezer-B2', 3, 4),
('Freezer-B2', 1, 2),
('Freezer-C3', 2, 5);

INSERT INTO Researchers (ResearcherName, Email, Department) VALUES
('د. كريم وجيه', 'karim@biotech.org', 'Genetics'),
('د. هدى شعراوي', 'hoda@biotech.org', 'Immunology'),
('د. طارق العريان', 'tarek@biotech.org', 'Pathology'),
('د. رانيا يوسف', 'rania@biotech.org', 'Biochemistry');

INSERT INTO Samples (DonorID, TypeID, LocationID, CollectionDate, VolumeML) VALUES
(1, 1, 1, '2026-01-10', 10.50),
(2, 2, 2, '2026-01-12', 5.00),
(3, 3, 3, '2026-01-15', 7.25),
(4, 4, 4, '2026-01-18', 2.00),
(5, 5, 5, '2026-01-20', 1.50),
(6, 1, 1, '2026-02-01', 12.00),
(7, 2, 2, '2026-02-03', 6.50),
(8, 3, 3, '2026-02-05', 8.00),
(9, 4, 4, '2026-02-10', 3.00),
(10, 5, 5, '2026-02-15', 2.50);

INSERT INTO TestRequests (SampleID, ResearcherID, TestName, RequestDate, Status) VALUES
(1, 1, 'DNA Sequencing', '2026-01-11', 'Completed'),
(2, 2, 'Protein Assay', '2026-01-13', 'Pending'),
(3, 3, 'Antibody Screening', '2026-01-16', 'Completed'),
(4, 1, 'PCR Test', '2026-01-19', 'Completed'),
(5, 4, 'Histology', '2026-01-21', 'Pending');

INSERT INTO Instruments (InstrumentName, ModelNumber, CalibrationDate) VALUES
('Sequencer Pro', 'SEQ-9000', '2025-11-10'),
('Centrifuge Max', 'CF-500', '2025-12-01'),
('PCR Cycler', 'PCR-X2', '2026-01-05');

INSERT INTO TestResults (RequestID, InstrumentID, ResultData, CompletionDate) VALUES
(1, 1, 'Normal DNA Profile, No mutations detected.', '2026-01-14'),
(3, 2, 'High concentration of target antibodies.', '2026-01-18'),
(4, 3, 'Positive result for marker gene.', '2026-01-22');