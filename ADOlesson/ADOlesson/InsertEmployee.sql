CREATE PROCEDURE [dbo].[InsertEmployee]
	@LastName VARCHAR(50),
	@FirstName VARCHAR(50),
	@Email VARCHAR(100),
	@BirthDate DateTIME2,
	ResponsableID
AS
	BEGIN
	 INSERT INTO [Employee] (LAstName, FirstName, Email, Birthdate, ResponsableID)
	 VALUES (@LAstName, @FirstName, @Email, @Birthdate, @ResponsableID)
	END
