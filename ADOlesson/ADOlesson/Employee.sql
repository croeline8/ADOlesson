CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL  IDENTITY,
	[FirstName] VARCHAR(50) NOT NULL, 
    [LastName] NCHAR(50) NOT NULL, 
    [BirthDate] DATETIME2 NOT NULL, 
    [Email] NCHAR(100) NOT NULL, 
    [ResponsableID] INT NOT NULL, 
    CONSTRAINT [PK_Employee] PRIMARY KEY ([Id]), 
    CONSTRAINT [UK_Employee_Email] UNIQUE ([Email]), 
    CONSTRAINT [CK_Employee_BirthDate] CHECK (YEAR(BirthDate) < 2010), 
    CONSTRAINT [CK_Employee_ResponsableID] CHECK ((ResponsableID != Id)), 
    CONSTRAINT [FK_Employee_Employee] FOREIGN KEY ([ResponsableID]) REFERENCES [Employee]([Id]) 

)

GO

CREATE INDEX [IX_Employee_LastName] ON [dbo].[Employee] ([LastName])

GO

CREATE TRIGGER [dbo].[Trigger_ONInsertUpdateEmployee]
    ON [dbo].[Employee]
    FOR DELETE, INSERT, UPDATE
    AS
    BEGIN
        SET NoCount ON
    END