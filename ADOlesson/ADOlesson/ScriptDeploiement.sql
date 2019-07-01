SET IDENTITY_INSERT EMPLOYEE ON;

INSERT INTO [Employee] (LAstName, FirstName, Email, Birthdate, ResponsableID)
	 VALUES 
	 ('Sanchez', 'Ken','', @Birthdate, @ResponsableID)
	 ('', '','', @Birthdate, @ResponsableID)
	 ('', '','', @Birthdate, @ResponsableID)
	 ('', '','', @Birthdate, @ResponsableID)


SET IDENTITY_INSERT Employee OFF