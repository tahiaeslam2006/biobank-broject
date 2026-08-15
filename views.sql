CREATE VIEW View_SampleDetails AS
SELECT 
    s.SampleID, 
    d.FullName AS DonorName, 
    st.TypeName AS SampleType, 
    s.CollectionDate, 
    s.VolumeML
FROM Samples s
JOIN Donors d ON s.DonorID = d.DonorID
JOIN SampleTypes st ON s.TypeID = st.TypeID;

CREATE VIEW View_ActiveTestRequests AS
SELECT 
    tr.RequestID, 
    r.ResearcherName, 
    tr.TestName, 
    tr.Status, 
    tr.RequestDate
FROM TestRequests tr
JOIN Researchers r ON tr.ResearcherID = r.ResearcherID;