CREATE VIEW [dbo].[V_Employee]
	AS SELECT EmpTable.* , 
	EmpTable.LastName AS 'EmpTable.ResponsableLastName', EmpTable.FirstName AS 'EmpTable.RespFirstName', EmpTable.Email AS 'EmpTable.RespEmail' 
	FROM [Employee] AS EmpTable 
	JOIN [Employee] ON EmpTable.ResponsableId = Employee.Id
	

