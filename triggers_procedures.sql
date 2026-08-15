DELIMITER //

CREATE TRIGGER CheckDonorConsent BEFORE INSERT ON Samples
FOR EACH ROW
BEGIN
    DECLARE consent INT;
    
    SELECT ConsentGiven INTO consent 
    FROM Donors 
    WHERE DonorID = NEW.DonorID;
    
    IF consent = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Cannot add sample because donor did not give consent!';
    END IF;
END//

DELIMITER ;