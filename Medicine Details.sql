create Database Medicine;
use Medicine;

CREATE TABLE MRegister(UserId int identity(1,1) Primary key, Username varchar(255) not null,Email varchar(255) not null,Password varchar(255) not null)
select * from  MRegister;

CREATE PROCEDURE Proc_reg
    @Username VARCHAR(255),
    @Email VARCHAR(255),
    @Password VARCHAR(255)
AS
BEGIN
    INSERT INTO MRegister (Username, Email, Password)
    VALUES (@Username, @Email, @Password);
END;
CREATE PROCEDURE Proc_login
  @Username VARCHAR(255),
  @Password VARCHAR(255)
AS
BEGIN
 SELECT COUNT(*) FROM MRegister WHERE Username=@Username and Password=@Password;
End;
CREATE PROCEDURE Proc_logins
  @Username VARCHAR(255),
  @Password VARCHAR(255)
AS
BEGIN
 SELECT UserId FROM MRegister WHERE Username = @Username AND Password = @Password;
End;

CREATE TABLE MedicineStock (MId int Identity (100,1) Primary key,MedicineName varchar(255) Not Null,Quantity int not null,Cost int not null ,UId int foreign key(UId) References MRegister(UserId)
CREATE PROCEDURE Proc_AddStocks
@MedicineName varchar(255),
@Quantity int,
@Cost int,
@UId int
AS 
BEGIN
Insert into MedicineStock (MedicineName,Quantity,Cost,UId) values(@MedicineName,@Quantity,@Cost,@UId)
End;
select * from MedicineStock;

CREATE PROCEDURE Proc_GetData
    @UId INT
AS
BEGIN
    SELECT * 
    FROM MedicineStock 
    WHERE UId = @UId
    ORDER BY MId DESC; 
END;

Delete from MedicineStock where UId=1;

CREATE PROCEDURE Proc_Get
AS
BEGIN
 SELECT * FROM MedicineStock ORDER BY MId DESC;
 END;

 Delete from MedicineStock where Uid=1;

 CREATE PROCEDURE Proc_Search
 @MedicineName varchar(255)
 AS 
 BEGIN
 SELECT Cost,Quantity from MedicineStock where MedicineName=@MedicineName;
 End;

 CREATE PROCEDURE Proc_Del
 @MId int
 AS
 BEGIN
 DELETE FROM MedicineStock WHERE MId=@MId;
 END;

 CREATE PROCEDURE Proc_update
 @MId int,
 @MedicineName varchar(255),
 @Quantity int,
 @Cost int
 AS
 BEGIN
 UPDATE  MedicineStock SET MedicineName=@MedicineName,Quantity=@Quantity,Cost=@Cost WHERE MId=@MId;
 END;